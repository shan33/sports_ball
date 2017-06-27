package util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class SavePic {
	 public static void SaveFileFromInputStream(InputStream stream,String path) throws IOException
	    {
	        FileOutputStream fs=new FileOutputStream( path );
	        byte[] buffer =new byte[1024*1024];
	        int bytesum = 0;
	        int byteread = 0;
	        while ((byteread=stream.read(buffer))!=-1)
	        {
	            bytesum+=byteread;
	            fs.write(buffer,0,byteread);
	            fs.flush();
	        }
	        fs.close();
	        stream.close();

	    }

}
