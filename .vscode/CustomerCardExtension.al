pageextension 50110 CustomerPageExtension extends "Customer Card"
{
    layout{
        addlast(General){
            field("Favorite Book No.";"Favorite Book No.")
            {
                ApplicationArea = All;
            }
        }
    }
}