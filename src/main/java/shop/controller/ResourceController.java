package shop.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import shop.utils.FileUtils;

@RestController
@RequestMapping("resources")
public class ResourceController {
	@SuppressWarnings("resource")
	@RequestMapping(value = "images", method = RequestMethod.GET)
	public void responseData(@RequestParam("url") String path, HttpServletResponse response) {
		try {
			File file = new File(path);
			
			byte[] rs = new byte[(int)file.length()];
			new FileInputStream(file).read(rs);
			response.setContentType("image/" + FileUtils.getExtensions(path));
			response.setHeader("Content-Disposition", "attachment; filename=\"" + file.getName() + "\"");
			response.getOutputStream().write(rs);
			response.getOutputStream().close();
		} catch (IOException e) {
			
		}
	}
}