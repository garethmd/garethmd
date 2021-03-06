public class FacebookFriend implements IFacebookQueryResult {
	
	protected Map<String, String> data = new Map<String, String>();
	
	public String uid1 { get { return data.get('uid1'); } set { data.put('uid1', value); } }
	public String uid2 { get { return data.get('uid2'); } set { data.put('uid2', value); } }
		
	public FacebookFriend() {
		
	}
	public FacebookFriend(XMLDom.Element xmlInfo) {
		parseSource(xmlInfo);
	}
	
	public String getResultType() {
		return 'friend_info';
	}

	public void parseSource(XMLDom.Element source) {
		for (XMLDom.Element c: source.childNodes) { 
			System.debug(LoggingLevel.INFO, '\nSetting ' + c.nodeName + ' to ' + c.nodeValue);
			data.put(c.nodeName, c.nodeValue);
		}
	}		
	
	static testMethod void testFacebookFriend() {
		FacebookFriend ff = new FacebookFriend();
		ff.uid1 = 'uid1';
		ff.uid2 = 'uid2';
		System.assertEquals(ff.getResultType(), 'friend_info');
		System.assertEquals(ff.uid1, 'uid1');
		System.assertEquals(ff.uid2, 'uid2');
	}
}