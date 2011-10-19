public with sharing class AccountTriggerHandler {
private static set<id> remove = new set<id>();
	
	public static final string ACTIVE = 'Active';
	public static final string INACTIVE = 'Inactive';
  
	public static string status;

 	static{
 		status = ACTIVE;
 	}
 
	private boolean m_isExecuting = false;
	private integer BatchSize = 0;
	
	public AccountTriggerHandler(boolean isExecuting, integer size){
		m_isExecuting = isExecuting;
		BatchSize = size;
	}
	
	
	private boolean isActive(){
		return AccountTriggerHandler.status == AccountTriggerHandler.ACTIVE;
	}
	
	
	public void OnBeforeInsert(Account[] newAccounts){
		//if(isActive()){
		//}
	}
	
	
	public void OnAfterInsert(Account[] newAccounts){
		if(isActive()){
		}
	}
	
	
	@future
	public static void OnAfterInsertAsync(set<ID> newAccountIDs){
		//if(isActive()){}
	}
	
	
	public void OnBeforeUpdate(Account[] oldAccounts, Account[] updatedAccounts, Map<ID, Account> AccountMap){
		if(isActive()){}
	}
	
	
	public void OnAfterUpdate(Account[] oldAccounts, Account[] updatedAccounts, Map<ID, Account> AccountMap){
		if(isActive()){}
	}
	
	
	@future
	public static void OnAfterUpdateAsync(Set<ID> updatedAccountIDs){
		//if(isActive()){}
		
	}
	
	
	public void OnBeforeDelete(Account[] AccountsToDelete, Map<ID, Account> AccountMap){
		 //if(isActive()){}
  	}
	
	
	public void OnAfterDelete(Account[] deletedAccounts, Map<ID, Account> AccountMap){
		//if(isActive()){}		
	}
	
	
	@future 
	public static void OnAfterDeleteAsync(Set<ID> deletedAccountsIDs){
		//if(isActive()){}	
	}
	
	
	public void OnUndelete(Account[] restoredAccounts){
		//if(isActive()){}	
	}
	
	
	public boolean IsTriggerContext{
		get{ return m_isExecuting;}
	}
	
	
	public boolean IsVisualforcePageContext{
		get{ return !IsTriggerContext;}
	}
	
	
	public boolean IsWebServiceContext{
		get{ return !IsTriggerContext;}
	}
	
	
	public boolean IsExecuteAnonymousContext{
		get{ return !IsTriggerContext;}
	}
	
	
	   
	
	

}