public class Message {
	private String ID;
	private String name;
	private String password;
	private String message;
	
	public String getID(){
		return ID;
	}
	public void setID(String ID) {
		this.ID=ID;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name= name;
	}
	public String password() {
		return password;
	}
	public void setpassword() {
		this.password=password;
	}
	public String getmessage() {
		return message;
	}
	public boolean hasPassword() {
		return password !=null && !password.isEmpty();
	}
	public boolean matchPassword(String pwd) {
		return password!=null && password.equals(pwd);
	}
}
