public with sharing class My_Controller extends AbsSocialController {

    public FBCAuthenticator myauth;
    
    public String facebookUserId { get; set; }
    public String facebookAPIKey { get; set; }

    public override void setAuthenticator(AbsAuthenticator auth) {    
        //monDebug += '> setAuthenticator APPELé';
        super.setAuthenticator(auth);
        myauth = (FBCAuthenticator)auth;
        
        if (myauth != null) {
            facebookUserId = myauth.uid;
            facebookAPIKey = myauth.APIKey;
        }

        return;
    }
    
    // get my Facebook friends
    public FacebookUserInfo[] getMyFriends() {
        FacebookSession sess = new FacebookSession(myauth);
        
        List<String> params = new List<String>();
        params.add('about_me');
        params.add('pic');
        params.add('activities');
        params.add('first_name');
        params.add('last_name');
        params.add('name');
        params.add('is_app_user');
        params.add('locale');
        params.add('hometown_location');
        params.add('status');
        
        return sess.getUserInfo(sess.getFriends(), params);
     }
}