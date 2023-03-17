trigger CheckingStatus on Payment__c (before update) 
{
    for (Payment__c payment : Trigger.new) 
    {
        if (payment.Status__c != 'Done' && Trigger.oldMap.get(payment.Id).Status__c != payment.Status__c ) 
        {
            system.debug('Checking Status before update: Status = Done, can not change !');  	
            payment.Status__c.addError('Not allowed to update Status=Done');
        }
    }
}