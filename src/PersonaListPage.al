page 50111 PersonaListPage
{
    PageType = List;
    SourceTable = PersonaTable;
    ApplicationArea = All;
    Caption = 'Lista de Personas';
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Nombre; Rec.Nombre) { }
                field(Apellido; Rec.Apellido) { }
                field(FechaNacimiento; Rec.FechaNacimiento) { }
            }
        }
    }

}
