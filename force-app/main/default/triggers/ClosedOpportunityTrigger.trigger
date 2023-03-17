trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) 
{
    List<Task> TaskList= new List<Task>();
	for (Opportunity ClosedOpportunity:Trigger.New)
    {
        if (ClosedOpportunity.StageName=='Closed Won')
        {
            TaskList.add(new Task(Subject='Follow Up Test Task',WhatId=ClosedOpportunity.Id));
        }
    }
    if (TaskList.size()>0)
    {
        insert TaskList;
    }
}