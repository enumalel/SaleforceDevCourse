trigger AutoUpdateFinalAmount on Payment__c (before insert, before update, after update, after insert) 
{
    for(Payment__c payment :Trigger.new)
    {
        if(payment.Status__c == 'Done' && payment.Final_Amount__c == null)
        {
            payment.Final_Amount__c = payment.Amount__c;
            system.debug('Auto Update Final Amount=Amount cause Final Amount was not filled and Status=Done');
            system.debug('Amount:'+ payment.Amount__c);
            system.debug('Final Amount:'+ payment.Final_Amount__c);
        }
    }
}