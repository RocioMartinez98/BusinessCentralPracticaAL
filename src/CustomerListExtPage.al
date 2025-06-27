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
        }
    }
}
