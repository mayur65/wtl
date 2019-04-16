package kakashi;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringMainApp 
{
	public static void main(String xx[])
	{
		//configure spring container
		ApplicationContext context= new ClassPathXmlApplicationContext("applicationContext.xml");
		//create and use bean
		student student= context.getBean("student",student.class);
		//call bean functions
		System.out.println(student);
		student.showAddress();
		//close application context object
	}
}
