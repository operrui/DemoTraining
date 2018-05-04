codeunit 50112 "Notification Company Info"
{
    procedure ShowCompanyWizard(TheNotificacion : Notification)
    begin
        Page.Run(Page::CompanyInfoWizard);
    end;


    [EventSubscriber(ObjectType::Page, 42, 'OnOpenPageEvent','',false,false)]
    local procedure CheckCompanyInfo_OnOpenSalesOrder(var Rec : Record 36);
    var
        CompanyInformation : Record 79;
        TheNotification : Notification;
    begin
        IF CompanyInformation.GET THEN
            IF (CompanyInformation.Name <> '') AND (CompanyInformation."E-Mail" <> '') THEN
                EXIT;
        TheNotification.Id := 'dad7f25b-5612-4edf-85d6-15757c6b2321';
        TheNotification.Scope := NotificationScope::LocalScope;
        TheNotification.Message := 'Company information is missing.';
        TheNotification.AddAction('Open Company Information',50101,'ShowCompanyInfoWizard');
        TheNotification.Send;
    end;

}