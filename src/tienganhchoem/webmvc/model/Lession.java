package tienganhchoem.webmvc.model;

public class Lession {
	private int lessionID;
	private int lessionTypeID;
	private String lessionName;
	private String lessionReview;
	private String lessionTimeAdd;
	private String lessionGrade;
	private String lessionContent;
	private String lessionWhoAdd;
	private String lessionStatus;
	private String lessionTitle;
	private String lessionImages;
	private String lessionDescribe;
 public Lession() {	 
 }


public Lession(int lessionID, int lessionTypeID, String lessionName, String lessionReview, String lessionTimeAdd,
		String lessionGrade, String lessionContent, String lessionWhoAdd, String lessionStatus, String lessionTitle) {
	super();
	this.lessionID = lessionID;
	this.lessionTypeID = lessionTypeID;
	this.lessionName = lessionName;
	this.lessionReview = lessionReview;
	this.lessionTimeAdd = lessionTimeAdd;
	this.lessionGrade = lessionGrade;
	this.lessionContent = lessionContent;
	this.lessionWhoAdd = lessionWhoAdd;
	this.lessionStatus = lessionStatus;
	this.lessionTitle = lessionTitle;
}


public int getLessionID() {
	return lessionID;
}


public void setLessionID(int lessionID) {
	this.lessionID = lessionID;
}


public int getLessionTypeID() {
	return lessionTypeID;
}


public void setLessionTypeID(int lessionTypeID) {
	this.lessionTypeID = lessionTypeID;
}


public String getLessionName() {
	return lessionName;
}


public void setLessionName(String lessionName) {
	this.lessionName = lessionName;
}


public String getLessionReview() {
	return lessionReview;
}


public void setLessionReview(String lessionReview) {
	this.lessionReview = lessionReview;
}


public String getLessionTimeAdd() {
	return lessionTimeAdd;
}


public void setLessionTimeAdd(String lessionTimeAdd) {
	this.lessionTimeAdd = lessionTimeAdd;
}


public String getLessionGrade() {
	return lessionGrade;
}


public void setLessionGrade(String lessionGrade) {
	this.lessionGrade = lessionGrade;
}


public String getLessionContent() {
	return lessionContent;
}


public void setLessionContent(String lessionContent) {
	this.lessionContent = lessionContent;
}


public String getLessionWhoAdd() {
	return lessionWhoAdd;
}


public void setLessionWhoAdd(String lessionWhoAdd) {
	this.lessionWhoAdd = lessionWhoAdd;
}


public String getLessionStatus() {
	return lessionStatus;
}


public void setLessionStatus(String lessionStatus) {
	this.lessionStatus = lessionStatus;
}


public String getLessionTitle() {
	return lessionTitle;
}


public void setLessionTitle(String lessionTitle) {
	this.lessionTitle = lessionTitle;
}


public String getLessionImages() {
	return lessionImages;
}


public void setLessionImages(String lessionImages) {
	this.lessionImages = lessionImages;
}


public String getLessionDescribe() {
	return lessionDescribe;
}


public void setLessionDescribe(String lessionDescribe) {
	this.lessionDescribe = lessionDescribe;
}


@Override
public String toString() {
	return "Lession [lessionID=" + lessionID + ", lessionTypeID=" + lessionTypeID + ", lessionName=" + lessionName
			+ ", lessionReview=" + lessionReview + ", lessionTimeAdd=" + lessionTimeAdd + ", lessionGrade="
			+ lessionGrade + ", lessionContent=" + lessionContent + ", lessionWhoAdd=" + lessionWhoAdd
			+ ", lessionStatus=" + lessionStatus + ", lessionTitle=" + lessionTitle + "]";
}
 
 
}