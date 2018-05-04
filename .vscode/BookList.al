page 50111 NewBookList
{
    PageType = List;
    SourceTable = NewBook;
    CardPageId = NewBookCard;
    
    layout
    {
        area(content)
        {
            repeater(books)
            {
                 field("No.";"No.")
                {
                    ApplicationArea = All;
                }

                field(Title;Title)
                {
                    ApplicationArea = All;
                }
                 field(Author;Author)
                {
                    ApplicationArea = All;
                }

                field(Hardcover;Hardcover)
                {
                    ApplicationArea = All;
                }
                field("Page Count";"Page Count")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}