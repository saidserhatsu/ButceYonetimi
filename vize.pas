unit vize;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Menus,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.Edit, FMX.Layouts,
  FMX.ListBox;

type
  TFormGiris = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    Label4: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGiris: TFormGiris;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.iPhone4in.fmx IOS}
{$R *.iPhone47in.fmx IOS}
{$R *.iPhone55in.fmx IOS}

var
   butce : Real;
   harcanan : Real;
   kalan : Real;
   deger : Real;
   adgelir : Real;
procedure TFormGiris.Button1Click(Sender: TObject);
begin
  ListBox1.Items.Clear;
  butce := StrToFloat(Edit1.Text);
  harcanan := 0;
  adgelir :=0;
  kalan := butce;
  label3.Text := 'Toplam harcanan para: '+ FloatToStr(harcanan) + ' TL';
  label4.Text := 'Kalan para: '+ FloatToStr(kalan)+ ' TL';
  label5.Text := 'Aylýk dýþý gelir: '+ FloatToStr(adgelir)+ ' TL'
end;

procedure TFormGiris.Button2Click(Sender: TObject);
begin
  deger := StrToFloat(Edit2.Text);
  ListBox1.Items.Add(FloatToStr(deger)+' TL Gelir');
  kalan := kalan+StrToFloat(Edit2.Text);
  label4.Text := 'Kalan para: '+ FloatToStr(kalan)+ ' TL';
  adgelir := adgelir+deger;
  label5.Text := 'Aylýk dýþý gelir: '+ FloatToStr(adgelir)+ ' TL';
end;

procedure TFormGiris.Button3Click(Sender: TObject);
begin
   deger := StrToFloat(Edit2.Text);
if kalan >= deger then
 begin
      ListBox1.Items.Add(FloatToStr(deger) + ' TL Harcama - ' + ComboBox1.Items[ComboBox1.ItemIndex]);
      harcanan := harcanan + StrToFloat(Edit2.Text);
      label3.Text := 'Toplam harcanan para: '+ FloatToStr(harcanan) + ' TL';
      kalan := kalan-StrToFloat(Edit2.Text);
      label4.Text := 'Kalan para: '+ FloatToStr(kalan)+ ' TL';
 end
 else
   ShowMessage('Paranýz harcama yapacak kadar yeterli deðil!');
end;

end.
