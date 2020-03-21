package bean;


public class UserBean {
static private String FirstName;
static private String LastName;
static private String BloodGroup;
static private int Age;
static private String Address;
static private int Phone;
static public  String getFirstName() {
	return FirstName;
}
static public void setFirstName( String name) {
	FirstName=name;
}
static public  String getLastName() {
	return LastName;
}
static public void getLastName( String name) {
	LastName=name;
}
static public  String getBloodGroup() {
	return BloodGroup;
}
static public void setBloodGroup( String name) {
	BloodGroup=name;
}
static public  int getAge() {
	return Age;
}
static public void setAge( int age) {
	Age=age;
}
static public  String getAddress() {
	return Address;
}
static public void setAddress( String name) {
	Address=name;
}
static public  int getPhone() {
	return Phone;
}
static public void setPhone( int phone) {
	Phone=phone;
}

}
