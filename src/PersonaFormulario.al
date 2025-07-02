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
            group(RedesSociales)
            {
                Caption = 'Redes Sociales';
                field(Linkedin; Rec.Linkedin) { }
                field(Facebook; Rec.Facebook) { }
                field(Instagram; Rec.Instagram) { }
            }
            group(EstadoCivilGroup)
            {
                Caption = 'Estado Civil';
                field(EstadoCivil; Rec.EstadoCivil) { }
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
            action(OpenRedesSocialesCard)
            {
                Caption = 'Agregar info de redes sociales';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::PersonaFormulario, Rec);
                end;
            }
        }
    }




}
