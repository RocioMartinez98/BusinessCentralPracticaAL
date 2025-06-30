page 50105 EjercicioCheckPage
{
    Caption = 'Página para probar AL';
    PageType = Card;
    ApplicationArea = All;
    //UsageCategory = Administration; // la pagina se puede buscar por la lupita
    UsageCategory = None; //la apagina no se puede buscar por la lupita



    layout
    {
        area(content)
        {
            group(PruebaCheck)
            {
                Caption = 'Prueba Check y texto';

                field(MyChecked; MyChecked)
                {
                    ApplicationArea = All;
                    Caption = 'Bloquear y desbloquear texto';

                    trigger OnValidate()
                    begin
                        CurrPage.ParteCondicional.PAGE.SetEditableState(MyChecked);
                        CurrPage.ParteCondicional.PAGE.Update(false); // refrescar part
                    end;
                }
                field(MyText; MyText)
                {
                    ApplicationArea = All;
                    Caption = 'Escribir texto';
                    Editable = MyChecked;
                }
            }

            part(ParteCondicional; ParteCondicional)
            {
                ApplicationArea = All;
                SubPageLink = "Number" = const(1); // requerido al usar Integer
                Caption = 'SubMenú extra';
            }
        }
    }

    var
        MyChecked: Boolean;
        MyText: Text[100];

    trigger OnOpenPage()
    begin
        Message('Bienvenidos a mi primer proyecto BC');
    end;
}
