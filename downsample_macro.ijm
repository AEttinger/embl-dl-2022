images_dir="/home/fdea4e6dbe9e6dfe/dl-course-2022/07_esc_3d_colonies/images";
masks_dir = "/home/fdea4e6dbe9e6dfe/dl-course-2022/07_esc_3d_colonies/masks";

image_files = getFileList(images_dir);
masks_files = getFileList(masks_dir);

for(i=0; i<image_files.length; i++){
	open(images_dir+File.separator+image_files[i]);
	run("Size...", "width=512 height=512 depth=21 constrain average interpolation=Bilinear");
	save("/home/fdea4e6dbe9e6dfe/dl-course-2022/07_esc_3d_colonies/images_downsampled/"+image_files[i]);
	close();
	}

for(i=0; i<masks_files.length; i++){	
	open(masks_dir+File.separator+masks_files[i]);
	run("Size...", "width=512 height=512 depth=21 interpolation=None");
	save("/home/fdea4e6dbe9e6dfe/dl-course-2022/07_esc_3d_colonies/masks_downsampled/"+masks_files[i]);
	close();
	}
