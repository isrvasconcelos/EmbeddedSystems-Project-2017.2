#include "display_compass.h"

void compass_read(struct i2c_dev compass, 
		  struct i2c_dev acc, 
		  struct mb_display *disp, 
		  uint16_t delay) 
{
	delay=100;

	/* Calibration with accelerometer */
	i2c_util_read_bytes(&acc, ACC_OUT_X_MSB, acc_data, 6);

	/* Device positioning: Valid accelerometer range */
	bool position_y = acc_data[2] > 30 && acc_data[2] < 60;
	bool position_z = acc_data[4] > 180 && acc_data[4] < 210;

	if(position_y && position_z) {
		i2c_util_read_bytes(&compass, COMPASS_OUT_X_MSB, 
				     compass_x_data, sizeof(compass_z_data));

		i2c_util_read_bytes(&compass, COMPASS_OUT_Y_MSB, 
				     compass_y_data, sizeof(compass_z_data));

		i2c_util_read_bytes(&compass, COMPASS_OUT_Z_MSB, 
				     compass_z_data, sizeof(compass_z_data));

		struct mb_image arrow = clear_display;

		/* Thresholds for compass */
		if(compass_z_data[1] < 100) 
			arrow = arrow_left;

		else if(compass_z_data[1] > 200) 
			arrow = arrow_right;

		else if(compass_z_data[1] > 101 && compass_z_data[1] < 199)
			arrow = arrow_north;

		else
			arrow = clear_display;

		/* Display on LED Matrix */
		mb_display_image(disp, MB_DISPLAY_MODE_SINGLE, 
			K_MSEC(delay), &arrow, 1);


	/* Device positioning: Offset for adjust accelerometer range */
	} else if(acc_data[2] < 60 && acc_data[4] > 180) { 

		struct mb_image pixel = {};
		uint8_t x=0;
		uint8_t y=0;

		/* X-Offsets to position the board */
		if(acc_data[0] > 20 && acc_data[0] < 50)
			x = acc_data[0]/10;

		else if(acc_data[0] > 220 && acc_data[0] < 250)
			x = (acc_data[0]-220)/10;

		/* Y-Offsets to position the board */
		y = acc_data[2]/10; 
		if(y > 3 || y == 2)
			y=y-1;

		/* Display on LED Matrix */
		pixel.row[y] = BIT(x);
		mb_display_image(disp, MB_DISPLAY_MODE_SINGLE,
			K_MSEC(delay), &pixel, 1);
	}
}
