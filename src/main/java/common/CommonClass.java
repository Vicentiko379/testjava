package common;

public class CommonClass {

	public String getCurrent() {
		return "Common";
	}

	public void generateContent(String defaultContent) {
		defaultContent += " is done!";
		System.out.println("asdasdasdasd");
	}

	public int getLenght() {
		int value = 15;
		System.out.println("integer value");
		System.out.println("integer value2");
		return value;
	}

	public void read () {
		System.out.println("read object time");
	}
}
