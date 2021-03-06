public class FacebookFriendList implements IFacebookQueryResult {
	
	protected Map<String, String> data = new Map<String, String>();
	
	public String flid { get { return data.get('flid'); } set { data.put('flid', value); } }
	public String name { get { return data.get('name'); } set { data.put('name', value); } }
	public String owner { get { return data.get('owner'); } set { data.put('owner', value); } }
		
	public FacebookFriendList() {}
	
	public FacebookFriendList(XMLDom.Element xmlInfo) {
		parseSource(xmlInfo);
	}
	
	public String getResultType() {
		return 'friendlist';
	}

	public void parseSource(XMLDom.Element source) {
		for (XMLDom.Element c: source.childNodes) { 
			data.put(c.nodeName, c.nodeValue);
		}
	}	
		
	static testMethod void testFacebookFriendList() {
		FacebookFriendList ff = new FacebookFriendList();
		ff.name = 'name';
		ff.flid = 'flid';
		ff.owner = 'owner';
		System.assertEquals(ff.getResultType(), 'friendlist');
		System.assertEquals(ff.name, 'name');
		System.assertEquals(ff.flid, 'flid');
		System.assertEquals(ff.owner, 'owner');
	}
}