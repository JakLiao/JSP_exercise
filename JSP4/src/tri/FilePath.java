package tri;

import java.io.File;

public class FilePath {		   
	private File[] list;
    private int len;
    
	public String getFileMessage(String path)
	{
		File directory = new File(path); 
		try{ 
			  this.list = directory.listFiles();
			  this.len = getList().length;
		}catch(Exception e){} 
		return "";
	}
	
    public int getLen() {
        return len;
    }
    
    public File[] getList() {
        return list;
    }
}
