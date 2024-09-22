package com.fin.prj.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/upload.action")
@MultipartConfig
public class FileUploadServlet extends HttpServlet
{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		// 응답 인코딩 설정 (한글 깨짐 방지)
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		// 파일 파트 가져오기
		Part filePart = request.getPart("fileImage"); // Retrieves <input type="file" name="fileImage">
		String fileName = filePart.getSubmittedFileName();

		// 저장할 디렉토리 경로 설정
		String uploadDir = "C:\\SpringMVC\\newTest\\WebContent\\images\\"; // Adjust this path as needed

		// 디렉토리 생성 (존재하지 않는 경우)
		File uploadDirectory = new File(uploadDir);
		if (!uploadDirectory.exists())
		{
			uploadDirectory.mkdirs();
		}

		// 파일 저장 경로 설정
		File file = new File(uploadDir + File.separator + fileName);
		String newFileName = fileName;
		int count = 1;

		// 파일권한적용
		file.setWritable(true); // 쓰기가능설정
		file.setReadable(true); // 읽기가능설정
		file.setExecutable(true);
		
		
		// 파일 이름이 중복되는 경우 새로운 이름 생성
		while (file.exists())
		{
			String fileNameWithoutExt = fileName.substring(0, fileName.lastIndexOf('.'));
			String fileExt = fileName.substring(fileName.lastIndexOf('.'));
			newFileName = fileNameWithoutExt + "(" + count + ")" + fileExt;
			file = new File(uploadDir + File.separator + newFileName);
			count++;
		}

		// 파일 저장
		try (InputStream fileContent = filePart.getInputStream(); FileOutputStream outputStream = new FileOutputStream(file))
		{

			byte[] buffer = new byte[1024];
			int bytesRead;
			while ((bytesRead = fileContent.read(buffer)) != -1)
			{
				outputStream.write(buffer, 0, bytesRead);
			}

			// 업로드된 파일의 절대 경로를 반환
			String filePath = file.getAbsolutePath(); // Use filePath.replace("\\", "/") if forward slashes are preferred
			response.getWriter().println(filePath);
		} catch (Exception e)
		{
			response.getWriter().println("파일 업로드 실패: " + e.getMessage());
			e.printStackTrace();
		}
	}
}
