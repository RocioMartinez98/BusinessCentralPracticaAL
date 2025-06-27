pageextension 50109 CustomerCardExt extends "Customer Card"
{
    actions
    {
        addlast(Processing) // Podés cambiar el grupo si querés que aparezca en otro lugar
        {
            action(OpenEjercicioCheck)
            {
                Caption = 'Ejercicio Check';
                ApplicationArea = All;

                trigger OnAction()
                var
                    MiPagina: Page "EjercicioCheckPage";
                begin
                    MiPagina.Run();
                end;
            }
        }
    }
}
