pageextension 50108 CustomerListExt extends "Customer List"
{
    actions
    {
        addlast(Processing)
        {
            action(OpenEjercicioCheck)
            {
                Caption = 'Abrir Ejercicio Check';
                ApplicationArea = All;


                trigger OnAction()
                begin
                    Page.Run(Page::"EjercicioCheckPage");
                end;
            }
            action(OpenPersonaFormulario)
            {
                Caption = 'Agregar nueva persona';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Page.Run(Page::"PersonaFormulario");
                end;
            }
            action(OpenPersonaListPage)
            {
                Caption = 'Ver lista de personas';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Page.Run(Page::PersonaListPage);
                end;
            }
            action(OpenRegistroFacturaPage)
            {
                Caption = 'Ver facturas registradas';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Page.Run(Page::RegistroFacturaPage);
                end;
            }
        }
    }
}
