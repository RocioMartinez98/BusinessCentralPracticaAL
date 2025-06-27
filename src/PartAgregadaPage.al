page 50106 ParteCondicional
{
    PageType = CardPart;
    SourceTable = Integer;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(Group1)
            {
                Caption = 'Grupo de texto';
                field(CondicionalTexto; CondicionalTexto)
                {
                    ApplicationArea = All;
                    Caption = 'Texto extra';
                    Editable = IsEditable; // se controla desde la página principal
                }
            }
        }
    }

    var
        CondicionalTexto: Text[100];
        IsEditable: Boolean;

    procedure SetEditableState(NewState: Boolean)
    begin
        IsEditable := NewState;
    end;
}