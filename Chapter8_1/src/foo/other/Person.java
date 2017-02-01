package foo.other;

public class Person {
	// FIELDS:
	private String name;

	// CONSTRUCTORS:
	public Person(String string) {
		this.name = string;
	}

	public Person() {
		this.setName("No Name!!");
	}
	// this class is non-enterprise JAVA_BEAN, because of get set, and property name
	// GETTERS:
	public String getName() {
		return this.name;
	}

	// SETTERS:
	public void setName(String string) {
		this.name = string;
	}
}
