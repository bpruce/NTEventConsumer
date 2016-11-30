$ConsumerTemplate = @(
	'==New WMI Event Detected==',
	'Consumer Name: %TargetInstance.Name%'
	'Command Executed: %TargetInstance.ExecutablePath%'
)


$props = @{
    Name = 'NtEventLogEventConsumer';
    SourceName = 'IDS';
    Category = [UInt16] 0;
    EventType = [UInt32] 2; # Warning
    EventID = [UInt32] 8;
    NameOfUserSidProperty = 'S-1-5-21';
    NameOfRawDataProperty = 'Test';
    #NumberOfInsertionStrings = [UInt32] $ConsumerTemplate.Length;
	#InsertionStringTemplates = $ConsumerTemplate

}
