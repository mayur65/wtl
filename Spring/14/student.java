package kakashi;

public class student {
	
	private int rollno;
	private String name;
	private Address address;	
	
	
	public student(int rollno, String name, Address address) {
		super();
		this.rollno = rollno;
		this.name = name;
		this.address=address;
	}

	public int getRollno() {
		return rollno;
	}

	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void showAddress()
	{
		System.out.println(address.city+"  "+address.state);
	}

	@Override
	public String toString() {
		return "student [rollno=" + rollno + ", name=" + name + "]";
	}
}
