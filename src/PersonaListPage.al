page 50111 PersonaListPage
{
    PageType = List;
    SourceTable = PersonaTable;
    ApplicationArea = All;
    Caption = 'Lista de Personas';
    InsertAllowed = false;   // bloquea "Nuevo"
    ModifyAllowed = false;   // opcional: bloquea edición en línea


    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Nombre; Rec.Nombre) { }
                field(Apellido; Rec.Apellido) { }
                field(FechaNacimiento; Rec.FechaNacimiento) { }
                field(Id; Rec.Id) { }
            }
        }
    }

}
