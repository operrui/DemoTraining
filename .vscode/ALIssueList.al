page 50113 ALIssueList
{

    PageType = List;
    SourceTable = ALIssue;
    CaptionML=ENU='AL Issues';
    Editable = false;
    SourceTableView=order(descending);

    layout
    {
        area(content)
        {
            repeater(General)
            { 
                field(Number;number)
                {
                    ApplicationArea = All;
                }
                field(Title;title)
                {
                    ApplicationArea = All;
                }
                    
                field(CreatedAt;created_at)
                {
                    ApplicationArea = All;
                }
                field(User;user)
                {
                    ApplicationArea = All;
                }
                field(State;state)
                {
                    ApplicationArea = All;
                }
                field(URL;html_url)
                {  
                    ApplicationArea = All;
                    ExtendedDatatype=URL;
                }
            }
        }
    }
    actions
    {
        area(processing)
        {
            action(RefreshALIssueList)
            {
                CaptionML=ENU='Refresh Issues';
                Promoted=true; PromotedCategory=Process;
                Image=RefreshLines;
                ApplicationArea = All;
                
                trigger OnAction();
                begin RefreshIssues();
                    CurrPage.Update;
                    if FindFirst then;
                end;
            }
        }
    }

}