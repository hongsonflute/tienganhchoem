package tienganhchoem.webmvc.model;

public class LessionType {
	
	private int LessionTypeId;
	private String LessionTypeName;
	
	public LessionType()
	{
		
	}

	public LessionType(int lessionTypeId, String lessionTypeName) {
		super();
		LessionTypeId = lessionTypeId;
		LessionTypeName = lessionTypeName;
	}

	public int getLessionTypeId() {
		return LessionTypeId;
	}

	public void setLessionTypeId(int lessionTypeId) {
		LessionTypeId = lessionTypeId;
	}

	public String getLessionTypeName() {
		return LessionTypeName;
	}

	public void setLessionTypeName(String lessionTypeName) {
		LessionTypeName = lessionTypeName;
	}
	
}
