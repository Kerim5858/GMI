package gmibank.pages;import gmibank.utilities.Driver;import org.openqa.selenium.WebElement;import org.openqa.selenium.support.FindBy;import org.openqa.selenium.support.PageFactory;public class US_11_Page {    public US_11_Page() {        PageFactory.initElements(Driver.getDriver(),this);    }    @FindBy(id = "tp-customer-createDate")    public WebElement createDateBox ;    @FindBy (id = "tp-customer-user")    public WebElement userDropdownBox;    @FindBy (id = "tp-customer-account")    public WebElement accountDropdownBox;    @FindBy (id = "tp-customer-zelleEnrolled")    public WebElement zelleEnrolledCheckBox;    @FindBy(id="save-entity")    public WebElement saveButton;}