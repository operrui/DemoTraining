table 50110 NewBook
{
    LookupPageId  = NewBookList;    
    fields
    {
        field(1;"No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2;"Title"; Code[50])
        {
            Caption = 'Title';
        }
        field(3;"Author"; Code[50])
        {
            Caption = 'Author';
        }
        field(4;"Hardcover"; Boolean)
        {
            Caption = 'Hardcover';
        }
        field(5;"Page Count"; Integer)
        {
            Caption = 'Page Count';
        }
    }
    
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
       
}