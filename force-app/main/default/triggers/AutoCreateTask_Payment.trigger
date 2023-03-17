trigger AutoCreateTask_Payment on Payment__c (after insert) 
{
    List<Task> CreateTaskList = new List<Task>();
    for(Payment__c payment: Trigger.new)
    {
        if (payment.Payment_Method__c == 'Tranfer') 
        {
            Task newTask = new Task();
            newTask.Subject = 'Verify payment ' + payment.Name;
            newTask.Priority = 'High';
            newTask.OwnerId = payment.OwnerId;
            newTask.ActivityDate = payment.Payment_Date__c.addDays(1);
            newTask.Status = 'Not Started';
            newTask.WhatId = payment.Id;
            taskList.add(newTask);
        }
    }
    system.debug('Auto create Task on Payment__C Object after insert.');
    insert CreateTaskList;
}