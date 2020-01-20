package stepDefination;

import cucumber.api.PendingException;
import cucumber.api.java.After;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.concurrent.TimeUnit;

public class ExpediaStepDef {

    WebDriver webDriver;

    @Given("^user is in login page$")
    public void user_is_in_login_page() {
        System.setProperty("webdriver.chrome.driver", "/Users/rajkumarshah/Documents/Selenium/chromedriver");
        webDriver = new ChromeDriver();
        webDriver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
        webDriver.get("https://www.expedia.com/");
    }

    @When("^title of the page is expedia$")
    public void title_of_the_page_is_expedia() {
        String title = webDriver.getTitle();
        Assert.assertEquals("Expedia Travel: Search Hotels, Cheap Flights, Car Rentals & Vacations", title);

    }
    @Then("^user search for login$")
    public void user_search_for_login(){
        webDriver.findElement(By.xpath("//button[@id='header-account-menu']")).click();
        webDriver.findElement(By.xpath("//li//a[@id='account-signin']")).click();

    }

    @Then("^user enter login details$")
    public void user_enter_login_details() {
        webDriver.findElement(By.xpath("//input[@id='gss-signin-email']")).sendKeys("abc");
        webDriver.findElement(By.xpath("//input[@id='gss-signin-password']")).sendKeys("***");

    }

    @Then("^user click login button$")
    public void user_click_login_button() {
        webDriver.findElement(By.xpath("//button[@id='gss-signin-submit']")).click();

    }
    @Then("^check login error$")
    public void check_login_error(){
        String username_error_msg = webDriver.findElement(By.xpath("//p[@id='signInEmailErrorMessage']")).getText();
        Assert.assertEquals("Please enter a valid email address", username_error_msg);
        String password_error_msg = webDriver.findElement(By.xpath("//p[@id='signInPasswordErrorMessage']")).getText();
        Assert.assertEquals("Password must be at least 6 characters", password_error_msg);
    }

    @Then("^user enter to home page$")
    public void user_enter_to_home_page() {

    }
    @After()
    public void closeBrowser(){
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        webDriver.quit();
    }
}
