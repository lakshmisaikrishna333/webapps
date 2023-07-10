import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;

public class Orange  {

	public static void main(String[] args) {
		WebDriver manikanta = new ChromeDriver();
		manikanta.manage().deleteAllCookies();
		manikanta.manage().window().maximize();
		manikanta.get("http://orangehrm.qedgetech.com/");
		manikanta.findElement(By.name("txtUsername")).sendKeys("Admin");
		manikanta.findElement(By.id("txtPassword")).sendKeys("Qedge123!@#");
		manikanta.findElement(By.xpath("//*[@type='submit']")).click();
		manikanta.findElement(By.xpath("//*[@id=\"menu_admin_viewAdminModule\"]/b")).click();
		manikanta.findElement(By.xpath("/html/body")).click();
		manikanta.findElement(By.id("btnAdd")).click();
		Select sai = new Select (manikanta.findElement(By.xpath("//select[@id='systemUser_userType']")));
		sai.selectByVisibleText("Admin");
		manikanta.findElement(By.id("systemUser_employeeName_empName")).sendKeys("Aditya Reddy P");
		manikanta.findElement(By.name("systemUser[userName]")).sendKeys("VEERU");
		Select krishna = new Select (manikanta.findElement(By.id("systemUser_status")));
		krishna.deselectByVisibleText("Enabled");
		
		
		
	}

}
