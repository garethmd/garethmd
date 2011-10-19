public class LoginController {
    public String username {get; set;}
    public String password {get; set;}

    public PageReference login() {
        String startUrl = System.currentPageReference().getParameters().get('startURL');
        PageReference pageRef = new PageReference('https://login.salesforce.com?un=' + username + '&pw=' + password);
        return pageRef;
    }
    
   	public LoginController () {}
    
    public static testMethod void testSiteLoginController () {
        // Instantiate a new controller with all parameters in the page
        LoginController controller = new LoginController ();
        controller.username = 'test@salesforce.com';
        controller.password = '123456'; 
                
        System.assertEquals(controller.login(),null);                           
    }    
}