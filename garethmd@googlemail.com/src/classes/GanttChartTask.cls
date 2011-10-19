public  class GanttChartTask {
	public boolean signed{get;set;}
	public string orderStage{get;set;}
	public string top{get;set;}
	public string width{get;set;}
	public string height{get;set;}
	public string left{get;set;}
	public integer plannedDays{get;set;}
	public date startDate{get;set;}
	public date endDate{get;set;}
	public string projectName{get;set;}
	public string client{get;set;}
	public string name{get;set;}
	public string id{get;set;}
	public integer manDays{get;set;}
	public string color{get;set;}
	public string toolTip{get;set;}
	
	public GanttChartTask(ID pid, string Title, date Target_Start, date Target_End, string LeadPersonName, string LeadPersonColor, string OrderStageName, string ProjectName2, string ProjectAccountName, double PlannedHours){
		signed = true;	
		orderStage = OrderStageName;
		double dplannedDays = plannedHours/8;
		plannedDays = dplannedDays.intValue();
		startDate = Target_Start;
		endDate = Target_End;
		projectName = ProjectName2;
		client = ProjectAccountName;
		name = Title;
		id = pid;
		manDays = plannedDays;
		color = LeadPersonColor;
	}
}