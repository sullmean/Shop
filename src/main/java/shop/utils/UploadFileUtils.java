package shop.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

public class UploadFileUtils {
	public static List<String> uploadFile(List<MultipartFile> multipartFiles) throws IOException {
		List<String> paths = new ArrayList<>();
		for(MultipartFile multipartFile: multipartFiles) {
			File file = new File("D:" + File.pathSeparator +"uploads" + File.pathSeparator + multipartFile.getOriginalFilename());
			FileOutputStream fileOutputStream = new FileOutputStream(file);
			FileCopyUtils.copy(multipartFile.getBytes(), fileOutputStream);
			
			paths.add(file.getPath());
		}
		
		return paths;
	}
}
