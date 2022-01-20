images_dir="/home/fdea4e6dbe9e6dfe/dl-course-2022/07_esc_3d_colonies/test_validation_leo";

image_files = getFileList(images_dir);


for(i=0; i<image_files.length; i++){
	open(images_dir+File.separator+image_files[i]);
	run("Size...", "width=512 height=512 depth=21 constrain average interpolation=Bilinear");
	save("/home/fdea4e6dbe9e6dfe/dl-course-2022/07_esc_3d_colonies/test_validation_leo_downsampled/"+image_files[i]);
	close();
	}