pageextension 50111 ItemCardExt extends "Item Card"
{
    
    actions
    {
        addfirst(Item)
        {
            action(DownloadPicture)
            {
                CaptionML = ENU='Download Picture';
                Image = Picture;
                ApplicationArea = All;

                trigger OnAction()
                var
                    DownloadMgt: Codeunit HttpDownloadMgt;
                    TempBlob: Record TempBlob temporary;
                    InStr: InStream;
                begin
                    DownloadMgt.DownloadPicture('http://vjeko.com/demo/bicycle.jpg',TempBlob);
                    TempBlob.Blob.CreateInStream(InStr);
                    clear(Rec.Picture);
                    rec.Picture.ImportStream(InStr,'Default image');
                    CurrPage.Update(true);
                end;
            }
        }
    }
}