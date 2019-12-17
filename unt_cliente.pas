unit unt_cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unt_cad_abstrato, ADODB, DB, ExtCtrls, ComCtrls, ToolWin;

type
  Tfrm_cliente = class(Tfrm_cad_abstrato)
    ADODataSet1: TADODataSet;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;

implementation

{$R *.dfm}

end.
