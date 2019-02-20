package board;

public class Board {
	private int BoardNumber;
	private String AcademicNumber;
	private String ID;
	private String Title;
	private String Contents;
	private int Date;
	private int Code;
	private int views;
	
	public int getBoardNumber() {
		return BoardNumber;
	}
	public void setBoardNumber(int boardNumber) {
		BoardNumber = boardNumber;
	}
	public String getAcademicNumber() {
		return AcademicNumber;
	}
	public void setAcademicNumber(String academicNumber) {
		AcademicNumber = academicNumber;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContents() {
		return Contents;
	}
	public void setContents(String contents) {
		Contents = contents;
	}
	public int getDate() {
		return Date;
	}
	public void setDate(int date) {
		Date = date;
	}
	public int getCode() {
		return Code;
	}
	public void setCode(int code) {
		Code = code;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
}
