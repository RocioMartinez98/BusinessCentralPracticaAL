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
                    ApplicationArea = All;
                }
            }
        }
    }

    /*procedure SetRecord(var persona: Record PersonaTable);
    begin
        Rec := persona;
    end;*/
}
