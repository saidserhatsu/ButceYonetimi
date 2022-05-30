unit anaekran;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.ListBox, FMX.Controls.Presentation;

type
  TFormAnaEkran = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    public
    butce : String;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnaEkran: TFormAnaEkran;

implementation

{$R *.fmx}

uses vize;

procedure TFormAnaEkran.FormCreate(Sender: TObject);
var

begin
  butce:= vize.FormGiris
end;




