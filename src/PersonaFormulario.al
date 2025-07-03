page 50110 PersonaFormulario
{
    PageType = Card;
    SourceTable = PersonaTable;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Agregar nueva persona';

    layout
    {

        area(content)
        {

            group(General)
            {
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
                field(Apellido; Rec.Apellido)
                {
                    ApplicationArea = All;
                }
                field(FechaNacimiento; Rec.FechaNacimiento)
                {
                    Caption = 'Fecha de Nacimiento';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(GoToListaPersonas)
            {
                Caption = 'Ir a Lista de Personas';
                Image = List;

                trigger OnAction()
                begin
                    CurrPage.Close();
                    PAGE.RUN(PAGE::"PersonaListPage");
                end;
            }
            action(AgregarDatosExtra)
            {
                Caption = 'Agregar datos extra';
                Image = ChangeDates;
                ApplicationArea = All;
                trigger OnAction()
                begin
                    if (Rec.Nombre = '') or (Rec.Apellido = '') then
                        Error('Debe completar Nombre y Apellido antes de agregar datos extra.');
                    PAGE.Run(PAGE::PersonaExtraDatosCard, Rec);
                end;
            }
        }
    }




}
