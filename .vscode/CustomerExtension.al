tableextension 50110 CustomerExtension extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50110; "Favorite Book No."; Code[20])
        {
           Caption = 'Favorite Book No.';
           TableRelation = NewBook;
        }
    }
    
    var
        myInt: Integer;
}