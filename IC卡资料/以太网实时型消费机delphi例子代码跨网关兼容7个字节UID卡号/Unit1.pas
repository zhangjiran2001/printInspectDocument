unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdUDPBase, IdUDPServer,
  IdSocketHandle,ComCtrls,StrUtils, ExtCtrls, IdIPWatch, Buttons,LGetAdapterInfo; //���������IdSocketHandle��StrUtils

type
  TForm1 = class(TForm)
    IdUDPServer1: TIdUDPServer;
    Label5: TLabel;
    Label8: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    CheckBox1: TCheckBox;
    Label9: TLabel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Edit8: TEdit;
    ComboBox2: TComboBox;
    Button4: TButton;
    CheckBox2: TCheckBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ListView1: TListView;
    Button7: TButton;
    Button5: TButton;
    Button9: TButton;
    Button6: TButton;
    Button10: TButton;
    IdIPWatch1: TIdIPWatch;
    GroupBox2: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Label13: TLabel;
    Memo1: TMemo;
    Button3: TButton;
    CheckBox3: TCheckBox;
    GroupBox3: TGroupBox;
    StaticText1: TStaticText;
    ListView2: TListView;
    Label2: TLabel;
    Edit1: TEdit;
    GroupBox4: TGroupBox;
    Button1: TButton;
    Edit2: TEdit;
    Label3: TLabel;
    Button2: TButton;
    ComboBox1: TComboBox;
    Label4: TLabel;
    GroupBox5: TGroupBox;
    Edit7: TEdit;
    Label14: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit9: TEdit;
    GroupBox6: TGroupBox;
    Button8: TButton;
    Button11: TButton;
    ListView3: TListView;
    Label15: TLabel;
    Edit10: TEdit;
    Button15: TButton;
    Label16: TLabel;
    Button17: TButton;
    Button18: TButton;
    Button16: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    GroupBox7: TGroupBox;
    Button22: TButton;
    CheckBox4: TCheckBox;
    Edit11: TEdit;
    Label17: TLabel;
    Edit12: TEdit;
    Button23: TButton;
    Button24: TButton;
    ComboBox3: TComboBox;
    Timer1: TTimer;
    GroupBox8: TGroupBox;
    Label18: TLabel;
    Edit13: TEdit;
    Button25: TButton;
    Label6: TLabel;
    Button26: TButton;
    ComboBox4: TComboBox;
    procedure IdUDPServer1UDPRead(Sender: TObject; AData: TStream;
      ABinding: TIdSocketHandle);
    procedure FormShow(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7Exit(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    expensestr:string;

  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit2;

{$R *.dfm}

function isrightint(textls:string):boolean;stdcall;
begin
  try
    if(strtoint(textls) =0) then
    begin
    end;
    result := True;

  except
    result := False;
    exit;
  end;
end;

procedure TForm1.Button9Click(Sender: TObject);
var

  strls1:string;
  i:Integer;

begin
  Form3:=TForm3.Create(nil);
  Form3.ShowModal;
  if(Form3.ModalResult=mrOk) then
  begin
    //�´�
    //��ʼ����2�ֽڣ���������2�ֽڣ�Ŀ�����IP��ַ,
    strls1 := '005,'; //��ʾ�޸Ķ���������

    //��������
    strls1 := strls1 + Form3.strsubnetmask1 + '.' + Form3.strsubnetmask2 + '.' + Form3.strsubnetmask3 + '.' + Form3.strsubnetmask4 + ',';

    //���ص�ַ
    strls1 := strls1 + Form3.strgateip1 + '.' + Form3.strgateip2 + '.' + Form3.strgateip3 + '.' + Form3.strgateip4 + ',';

    //����MAC
    strls1 := strls1 + Form3.strgatemac1 + '-' + Form3.strgatemac2 + '-' + Form3.strgatemac3 + '-' + Form3.strgatemac4 + '-' + Form3.strgatemac5 + '-' + Form3.strgatemac6+ ',';

    //�Է���ַ
    strls1 := strls1 + Form3.strremoteip1 + '.' + Form3.strremoteip2 + '.' + Form3.strremoteip3 + '.' + Form3.strremoteip4 + ',';

    //Զ�̵���MAC
    strls1 := strls1 + Form3.strremotemac1 + '-' + Form3.strremotemac2 + '-' + Form3.strremotemac3 + '-' + Form3.strremotemac4 + '-' + Form3.strremotemac5 + '-' + Form3.strremotemac6+ ',';
    //MAC�Զ��ѱ�־
    i := 0;
    if(Form3.isautogetremotemac1) then
    begin
      i := i + 1;
    end;

    if(Form3.isautogetgatemac1) then
    begin
      i := i + 2;
    end;
    strls1 := strls1 + IntToStr(i) + ',';

    //�˿ں�
    strls1 := strls1 + Form3.strmyport + ',';

    //�������к�
    strls1 := strls1 + '005-005::005-005';

    IdUDPServer1.Binding.SendTo('255.255.255.255',39192,strls1[1],Length(strls1)); //�㲥ʽ����

    ShowMessage('��ʾ���ѷ��͸���Ŀ�����IP��ַ��Ϣ�������������Ժ���Ѱ���ж�������ˢ�����²�����');
  end;

  Form3.Free;
end;


procedure TForm1.IdUDPServer1UDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);
var
  i:Integer;
  len:Integer;
  strls:string;
  strls1:string;
  serid:Cardinal;
  divmac:string;
  infstr:string;

  AStrings: TStringList;

  listls:TListItem;
  mytime:TDateTime;
  ismytimeok:Boolean;

  LongDateFormatbak:string;
  LongTimeFormatbak:string;
  DateSeparatorbak:Char;
  TimeSeparatorbak:Char;

  myipandportbuf:array[1..6] of Byte;

begin



  AData.Position:= 0;
  len:=AData.Size;
  if(len>269) then
  begin
    len := 269;
  end;


  if(len>0) then
  begin
    SetLength(strls,len);
    AData.Read(strls[1],len);


    //�������ַ���
    AStrings := TStringList.Create;
    ExtractStrings([','],[],Pchar(strls),AStrings);

    if AStrings.Count > 0 then
    begin
      if(AStrings.Strings[0] = '100') then
      begin//��Ѱ�豸ʱ��Ӧ
        if AStrings.Count >= 10  then
        begin
          //100,00009,192.168.1.218,255.255.255.0,192.168.1.1,192.168.1.3,39169��1234567890
          if(ListView1.Items.Count > 0) then
          begin
            for i := 0 to ListView1.Items.Count - 1 do
            begin
              strls := ListView1.Items[i].SubItems.Strings[7];
              if AStrings.Strings[9] = strls then
              begin //�������к���Ψһ�ģ�����Ѿ������Ȳ��
                ListView1.Items.Delete(i);
                Break;

              end;
            end;
          end;

          listls:=ListView1.Items.Add;


           //����IP��ַ
          listls.Caption:=AStrings.Strings[1];

          //��������
          listls.SubItems.Add(AStrings.Strings[2]);

          //����
          listls.SubItems.Add(AStrings.Strings[3]);

          //����MAC��ַ
          listls.SubItems.Add(AStrings.Strings[4]);

          //Զ�̵���IP��ַ
          listls.SubItems.Add(AStrings.Strings[5]);

         //Զ�̵���MAC��ַ
          listls.SubItems.Add(AStrings.Strings[6]);

          //MAC�Զ��ѱ�־
          listls.SubItems.Add(AStrings.Strings[7]);

          //�˿ں�
          listls.SubItems.Add(AStrings.Strings[8]);

          //�������к�
          listls.SubItems.Add(AStrings.Strings[9]);
          divmac:='16-88-' ;
          infstr:=AStrings.Strings[9];
          serid:=StrToInt64(infstr);
          infstr:= IntToHex(serid,8);
          for i:=1 to 4 do
          begin
              divmac:=divmac+copy(infstr,(8-i*2+1),2);
              if i<>4 then
              begin
                  divmac:=divmac+'-';
              end;
          end;


          //����ʱ��
          listls.SubItems.Add('��Ѱ��Ӧʱ��' + FormatDateTime('hh:nn:ss',Now));

          listls.SubItems.Add(divmac);

          if AStrings.Count > 10 then listls.SubItems.Add(AStrings.Strings[10]);

        end
        else
        begin
          //100,00009,192.168.1.218,255.255.255.0,192.168.1.1,192.168.1.3,39169��1234567890
          if(ListView1.Items.Count > 0) then
          begin
            for i := 0 to ListView1.Items.Count - 1 do
            begin
              strls := ListView1.Items[i].SubItems.Strings[7];
              if AStrings.Strings[9] = strls then
              begin //�������к���Ψһ�ģ�����Ѿ������Ȳ��
                ListView1.Items.Delete(i);
                Break;

              end;
            end;
          end;

          listls:=ListView1.Items.Add;


           //����IP��ַ
          listls.Caption:=AStrings.Strings[1];

          //��������
          listls.SubItems.Add(AStrings.Strings[2]);

          //����
          listls.SubItems.Add(AStrings.Strings[3]);

          //����MAC��ַ
          listls.SubItems.Add('');

          //Զ�̵���IP��ַ
          listls.SubItems.Add(AStrings.Strings[4]);

         //Զ�̵���MAC��ַ
          listls.SubItems.Add('');

          //MAC�Զ��ѱ�־
          listls.SubItems.Add('');

          //�˿ں�
          listls.SubItems.Add(AStrings.Strings[5]);

          //�������к�
          listls.SubItems.Add(AStrings.Strings[6]);

          //����ʱ��
          listls.SubItems.Add('��Ѱ��Ӧʱ��' + FormatDateTime('hh:nn:ss',Now));

        end;
      end  
      else if(AStrings.Strings[0] = '101') then
      begin//������������Ϣ
        //101��00009,192.168.1.1��192.168.1.3��00002��2012-04-20 11:12:13
        if AStrings.Count >= 5  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�

          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,����ʱ��):'+ strls;



        end;

      end
      else if(AStrings.Strings[0] = '102') then
      begin//ˢ����Ϣ
        //102,00003,192.168.1.228,255.255.255.255,00000,3373293092
        Label6.Caption := IntToStr(StrToInt64(Label6.Caption) + 1);
        if AStrings.Count >= 6  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�

          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,����):'+ strls;

          

          //������ʾ"�˿���δ����"
          strls1 :='006,'+ AStrings.Strings[4] +',' + AStrings.Strings[5]+',{������}\n���1159�˿���δ����\,�����Ϣ������,10,4,3'; //4Ϊ����һ��

          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

          ShowMessage(strls1);



        end;

      end
      else if(AStrings.Strings[0] = '103') then
      begin//�������Ѷ���ˢ��
        //103��00009,192.168.1.1��192.168.1.3��00002��8888888888��5.50, 2012-04-20 11:12:13
        if AStrings.Count >= 8  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,����,���Ѷ�,ʱ��):'+ strls;


          //strls1 :='006,' + AStrings.Strings[4] +',' + AStrings.Strings[5]+ ',�˿���δ����\,�����Ϣ{��}����\n\n,10,1,15'; //4Ϊ����һ��


          strls1 :='008,' + AStrings.Strings[4] +',' + AStrings.Strings[5]+','+AStrings.Strings[6]+','+'��С�� {��}1{2}.56Ԫ'+',10,2,1';//0x38
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

        end;
      end
      else if(AStrings.Strings[0] = '104') then
      begin//�ƴ�����
        //103��00009,192.168.1.1��192.168.1.3��00002��8888888888��2012-04-20 11:12:13
        if AStrings.Count >= 7  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,����,���Ѷ�,ʱ��):'+ strls;

          //strls1 :='006,' + AStrings.Strings[5]+',�˿���δ����\,�����Ϣ������,10,4,1'; //4Ϊ����һ��

          strls1 :='008,' + AStrings.Strings[4] +',' + AStrings.Strings[5]+','+'1,��С�� {��һ��}\n\n\n\n\n'+',10,2,1';//0x38
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

        end;
      end
      else if(AStrings.Strings[0] = '105') then
      begin//���ʼ�¼
        //105��00009,192.168.1.1��192.168.1.3��00002��8888888888��5.50,2012-04-20 11:12:13,1,12345678,18
        if AStrings.Count >= 11  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

          Memo1.Text := strls;

          listls:=ListView2.Items.Add;

          //������IP��ַ
          listls.Caption:=AStrings.Strings[2];

          //����
          listls.SubItems.Add(AStrings.Strings[4]);

          //����
          listls.SubItems.Add(AStrings.Strings[5]);

          //���Ѷ�
          listls.SubItems.Add(AStrings.Strings[6]);

          //����ʱ��
          listls.SubItems.Add(AStrings.Strings[7]);

          //״̬
          listls.SubItems.Add(AStrings.Strings[8]);

          //�ܼ�¼��
          listls.SubItems.Add(AStrings.Strings[10]);

          LongDateFormatbak := LongDateFormat;
          LongTimeFormatbak := LongTimeFormat;
          DateSeparatorbak := DateSeparator;
          TimeSeparatorbak := TimeSeparator;

          ismytimeok := True;
          try
            LongDateFormat := 'yyyy-MM-dd';
            LongTimeFormat := 'hh:mm:ss';
            DateSeparator := '-';
            TimeSeparator := ':';
            mytime:= StrToDateTime(AStrings.Strings[7]);
          except
            ismytimeok := False;
          end;

          LongDateFormat := LongDateFormatbak;
          LongTimeFormat := LongTimeFormatbak;
          DateSeparator := DateSeparatorbak;
          TimeSeparator := TimeSeparatorbak;

          if ismytimeok then
          begin
            //������Ϣ�ѳɹ��յ��������������ָ�����豸�ϵ�������¼���������������һ�μ��ʼ�¼                                     //��ַ
            strls1 :='011,' + AStrings.Strings[4] +','  + AStrings.Strings[5]+','+AStrings.Strings[6]+','+AStrings.Strings[7]+','+AStrings.Strings[9];
            IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));
          end
          else
          begin//��¼ʱ�����룬���Է������ȥ���
                                              //��ַ
            strls1 :='011,' + AStrings.Strings[4] +','  + AStrings.Strings[5]+','+AStrings.Strings[6]+',9999-99-99 99:99:99,'+AStrings.Strings[9];
            IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

          end;


        end;
      end
      else if(AStrings.Strings[0] = '106') then
      begin//��������
        if AStrings.Count >= 6  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,����������Ϣ):'+ strls;


          strls1 :='009,' + Edit1.Text + ',' ;//1,20,0,1';  //0x2b
          strls1 := strls1 + Edit8.Text;
          strls1 := strls1 + ',20,';


          if(CheckBox2.Checked) then
          begin//����ͬʱ��������
            strls1 := strls1 +IntToStr(ComboBox2.ItemIndex + 1) + ',' + IntToStr(ComboBox1.ItemIndex);//IntToStr(ComboBox1.ItemIndex);

          end
          else
          begin
            strls1 := strls1 + '0,0';
          end;

          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));



        end;
      end
      else if(AStrings.Strings[0] = '108') then
      begin//ȡ����Ϣ
        if AStrings.Count >= 7  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));



          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,����,ʱ��):'+ strls;

          //strls1 :='006,' + AStrings.Strings[4] +',' + AStrings.Strings[5]+ ',�˿���δ����\,�����Ϣ������,10,1,15'; //4Ϊ����һ��



          strls1 :='013,' + Edit1.Text + ',' ;//013��ʾȡ���ͳɹ�
          strls1 := strls1 + '��������С��\n���ţ�1234567890\n{��}�������м���\n��8.00 1��\n';
          strls1 := strls1 + ',20,';


          if(CheckBox2.Checked) then
          begin//����ͬʱ��������
            strls1 := strls1 + '1,16';
          end
          else
          begin
            strls1 := strls1 + '0,0';
          end;


          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

        end;
      end
      else if(AStrings.Strings[0] = '109') then
      begin//��Ӧ���Է��͵���ʾ��Ϣ
        if AStrings.Count >= 6  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));



          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,����ָ��):'+ strls;


          {
          strls1 :='013,' + Edit1.Text + ',' ;//013��ʾȡ���ͳɹ�
          strls1 := strls1 + '��������С��\n���ţ�1234567890\n���������м���\n��8.00 1��';
          strls1 := strls1 + ',20,';


          if(CheckBox2.Checked) then
          begin//����ͬʱ��������
            strls1 := strls1 + '1,16';
          end
          else
          begin
            strls1 := strls1 + '0,0';
          end;
          }


        end;
      end
      else if(AStrings.Strings[0] = '114') then
      begin//Զ��Ѱ��
        if AStrings.Count >= 9  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));
          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,�����к�,�Զ��忨�ţ��������,ʱ��):'+ strls;

          if RadioButton1.Checked then
          begin
            strls1 :='014,'+AStrings.Strings[4]+','+expensestr;

          end
          else
          begin
            strls1 :='006,' + AStrings.Strings[4] +',' + AStrings.Strings[5]+ ','+Edit9.Text+',10,1,15'; //4Ϊ����һ��

          end;

          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

        end;
      end

      else  if((AStrings.Strings[0] = '115') or (AStrings.Strings[0] = '116') or (AStrings.Strings[0] = '117') or (AStrings.Strings[0] = '118') or (AStrings.Strings[0] = '119') or (AStrings.Strings[0] = '120') or (AStrings.Strings[0] = '121')or (AStrings.Strings[0] = '130')) then
      begin
        if AStrings.Count >= 6  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));
          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,):'+ strls;
        end;
      end
      else if(AStrings.Strings[0] = '124') then
      begin//�������Ѷ���ˢ��
        //103��00009,192.168.1.1��192.168.1.3��00002��8888888888��5.50, 2012-04-20 11:12:13
        if AStrings.Count >= 15  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));
          //                                                                                   6      7     8       9         10        11     12     13      14
          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,��¼��ʽ��ʶ,����,��ˮ��,���׶�,���׺����,����ʱ��,����ģʽ,�ʹ�,�Ƿ����,δ�ϴ���¼����):'+ strls;

          listls:=ListView2.Items.Add;

          //������IP��ַ
          listls.Caption:=AStrings.Strings[2];

          //����
          listls.SubItems.Add(AStrings.Strings[4]);

          //����
          listls.SubItems.Add(AStrings.Strings[6]);

          //���Ѷ�
          listls.SubItems.Add(AStrings.Strings[8]);

          //����ʱ��
          listls.SubItems.Add(AStrings.Strings[10]);

          //״̬
          listls.SubItems.Add(AStrings.Strings[11]);

          //�ܼ�¼��
          listls.SubItems.Add(AStrings.Strings[14]);


          //����ֵ��ˮ��
          listls.SubItems.Add(AStrings.Strings[7]);

          //�����׺����
          listls.SubItems.Add(AStrings.Strings[9]);

          //�ʹ�
          listls.SubItems.Add(AStrings.Strings[12]);

          //�Ƿ����
          listls.SubItems.Add(AStrings.Strings[13]);


          //���豸�������ճɹ���Ϣ���豸�յ��󽫻�����ü�¼������ȷ���ڱ����¼�ɹ�����ܷ���ָ��
          //024,            65535,                                           003,                      983039,                     65535,                       167772.15,                   167772.15,           2017-04-20 01:52:32,            003,                         003,                         003
          strls1 :='024,' + AStrings.Strings[4] + ',' + AStrings.Strings[5] + ',' + AStrings.Strings[6] + ',' + AStrings.Strings[7] + ',' + AStrings.Strings[8] + ',' + AStrings.Strings[9] + ',' + AStrings.Strings[10] + ',' + AStrings.Strings[11] + ',' + AStrings.Strings[12] + ',' + AStrings.Strings[13] + ',024-024::024-024'; //4Ϊ����һ��
          //strls1 := '024,65535,024-024::024-024,3,983039,00000,0.09,4.39,2017-11-22 00:49:02,0,3,1';

          //
          IdUDPServer1.Binding.SendTo(abinding.PeerIP,abinding.PeerPort,strls1[1],Length(strls1));

        end;
      end
      else if(AStrings.Strings[0] = '125') then
      begin//����ɨ��ǹɨ����Ϣ��ֱ���ѵ�ʲô��ʲô
        //102,00003,192.168.1.228,255.255.255.255,00000,3373293092
        if AStrings.Count >= 7  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�

          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));

          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,����������,����ɨ��ǹ��ʽ��ʶ,����ɨ��ǹ��Ϣ):'+ strls;


        end;

      end
      else if(AStrings.Strings[0] = '140') then
      begin//Զ��Ѱ��
        if AStrings.Count >= 5  then
        begin
          //�Ȼ�Ӧ������������ط�3��
          strls1 :='001,' + AStrings.Strings[1];//AStrings.Strings[1]Ϊ������UDP�����к�
          IdUDPServer1.Binding.SendTo(AStrings.Strings[2],39192,strls1[1],Length(strls1));
          Memo1.Text := '(����,���ݰ�����,������IP,�������ݵĵ��Ե�IP,״̬,):'+ strls;

        end;
      end

    end;
    AStrings.Free;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin

  Label10.Caption := IdIPWatch1.LocalIP;
  ListView1.Items.Clear;

  IdUDPServer1.DefaultPort:=39192;
  IdUDPServer1.BroadcastEnabled:=True;



  try
    IdUDPServer1.Active := True;
  except
    on EIdCouldNotBindSocket do
    begin

      showmessage('������ר��UDPЭ��˿�[39192]�ѱ���������ռ�ã��޷��򿪣����������˳�����������´������');
      Close();

    end;


  end;

  expensestr := Edit7.Text;

  ComboBox3.ItemIndex := 1;





end;

procedure TForm1.Button7Click(Sender: TObject);
var
  str:string;

begin
    str :='000';


    IdUDPServer1.Binding.SendTo('255.255.255.255',39192,str[1],3); //�㲥ʽ����
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  listls:TListItem;
  strls:string;
  strls1:string;
  AStrings: TStringList;
  i:Integer;

begin
  if ListView1.SelCount>0 then
  begin
    Form2:=TForm2.Create(nil);

    listls:=ListView1.Selected;

    AStrings := TStringList.Create;
    //���ѻ�IP��ַ
    strls:=listls.Caption;
    ExtractStrings(['.'],[],Pchar(strls),AStrings);

    if AStrings.Count >= 4 then
    begin
      Form2.strmyip1:=AStrings.Strings[0];
      Form2.strmyip2:=AStrings.Strings[1];
      Form2.strmyip3:=AStrings.Strings[2];
      Form2.strmyip4:=AStrings.Strings[3];
    end;

    //��������
    strls:=listls.SubItems.Strings[0];
    AStrings.Clear;
    ExtractStrings(['.'],[],Pchar(strls),AStrings);

    if AStrings.Count >= 4 then
    begin
      Form2.strsubnetmask1:=AStrings.Strings[0];
      Form2.strsubnetmask2:=AStrings.Strings[1];
      Form2.strsubnetmask3:=AStrings.Strings[2];
      Form2.strsubnetmask4:=AStrings.Strings[3];
    end;

    //����
    strls:=listls.SubItems.Strings[1];
    AStrings.Clear;
    ExtractStrings(['.'],[],Pchar(strls),AStrings);

    if AStrings.Count >= 4 then
    begin
      Form2.strgateip1:=AStrings.Strings[0];
      Form2.strgateip2:=AStrings.Strings[1];
      Form2.strgateip3:=AStrings.Strings[2];
      Form2.strgateip4:=AStrings.Strings[3];
    end;

    //����MAC
    strls:=listls.SubItems.Strings[2];
    AStrings.Clear;
    ExtractStrings(['-'],[],Pchar(strls),AStrings);

    if AStrings.Count >= 6 then
    begin
      Form2.strgatemac1:=AStrings.Strings[0];
      Form2.strgatemac2:=AStrings.Strings[1];
      Form2.strgatemac3:=AStrings.Strings[2];
      Form2.strgatemac4:=AStrings.Strings[3];
      Form2.strgatemac5:=AStrings.Strings[4];
      Form2.strgatemac6:=AStrings.Strings[5];

    end;

    //Զ�̵���
    strls:=listls.SubItems.Strings[3];
    AStrings.Clear;
    ExtractStrings(['.'],[],Pchar(strls),AStrings);

    if AStrings.Count >= 4 then
    begin
      Form2.strremoteip1:=AStrings.Strings[0];
      Form2.strremoteip2:=AStrings.Strings[1];
      Form2.strremoteip3:=AStrings.Strings[2];
      Form2.strremoteip4:=AStrings.Strings[3];
    end;

    //Զ�̵���MAC
    strls:=listls.SubItems.Strings[4];
    AStrings.Clear;
    ExtractStrings(['-'],[],Pchar(strls),AStrings);

    if AStrings.Count >= 6 then
    begin
      Form2.strremotemac1:=AStrings.Strings[0];
      Form2.strremotemac2:=AStrings.Strings[1];
      Form2.strremotemac3:=AStrings.Strings[2];
      Form2.strremotemac4:=AStrings.Strings[3];
      Form2.strremotemac5:=AStrings.Strings[4];
      Form2.strremotemac6:=AStrings.Strings[5];
    end;

    AStrings.Free;

    //MAC�Զ���Ѱ
    i := StrToInt(listls.SubItems.Strings[5]);
    Form2.isautogetgatemac1 := False;
    Form2.isautogetremotemac1 := False;
    if(i = 1) then
    begin
      Form2.isautogetremotemac1 := True;
      
    end
    else if(i = 2) then
    begin
      Form2.isautogetgatemac1 := True;
    end
    else if(i = 3) then
    begin
      Form2.isautogetgatemac1 := True;
      Form2.isautogetremotemac1 := True;
    end;


    //�˿ں�
    Form2.strmyport:=listls.SubItems.Strings[6];

    //�豸Ӳ����
    Form2.strmydevno:=listls.SubItems.Strings[7];

    Form2.ShowModal;
    if(Form2.ModalResult=mrOk) then
    begin

      strls1 := '004,'; //��ʾ�޸Ķ���������

      //IP��ַ
      strls1 := strls1 + Form2.strmyip1 + '.' + Form2.strmyip2 + '.' + Form2.strmyip3 + '.' + Form2.strmyip4 + ',';

      //��������
      strls1 := strls1 + Form2.strsubnetmask1 + '.' + Form2.strsubnetmask2 + '.' + Form2.strsubnetmask3 + '.' + Form2.strsubnetmask4 + ',';

      //���ص�ַ
      strls1 := strls1 + Form2.strgateip1 + '.' + Form2.strgateip2 + '.' + Form2.strgateip3 + '.' + Form2.strgateip4 + ',';

      //����MAC
      strls1 := strls1 + Form2.strgatemac1 + '-' + Form2.strgatemac2 + '-' + Form2.strgatemac3 + '-' + Form2.strgatemac4 + '-' + Form2.strgatemac5 + '-' + Form2.strgatemac6+ ',';

      //Զ�̵���IP��ַ
      strls1 := strls1 + Form2.strremoteip1 + '.' + Form2.strremoteip2 + '.' + Form2.strremoteip3 + '.' + Form2.strremoteip4 + ',';

      //Զ�̵���MAC
      strls1 := strls1 + Form2.strremotemac1 + '-' + Form2.strremotemac2 + '-' + Form2.strremotemac3 + '-' + Form2.strremotemac4 + '-' + Form2.strremotemac5 + '-' + Form2.strremotemac6+ ',';
      //MAC�Զ��ѱ�־
      i := 0;
      if(Form2.isautogetremotemac1) then
      begin
        i := i + 1;
      end;

      if(Form2.isautogetgatemac1) then
      begin
        i := i + 2;
      end;
      strls1 := strls1 + IntToStr(i) + ',';

      //�˿ں�
      strls1 := strls1 + Form2.strmyport + ',';

      //�������к�
      strls1 := strls1 + Form2.strmydevno;

      IdUDPServer1.Binding.SendTo('255.255.255.255',39192,strls1[1],Length(strls1)); //�㲥ʽ����

    end;

    Form2.Free;


  end
  else
  begin
    ShowMessage('����ѡ����Ҫ���ĵ���');
  end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  if ListView1.SelCount>0 then
  begin
    if(Application.MessageBox('�Ƿ�ɾ���м�¼?', '����', MB_YESNO +MB_ICONINFORMATION) = IDYES) then
    begin
      ListView1.DeleteSelected;

    end;

  end
  else
  begin
    ShowMessage('����ѡ����Ҫɾ������');
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  ListView1.Items.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  strls:string;
  strls1:string;
  i:Integer;
  pedit:TEdit;

begin

   for i := 3 to 6 do
   begin
      pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
      strls := pedit.Text;
      if Trim(strls) = '' then
      begin
       ShowMessage('���벻��Ϊ��');
       pedit.Text:='';
       pedit.SetFocus;
       Exit;
      end;

      if not isrightint(strls) then
      begin
       ShowMessage('�������Ϊ����');
       pedit.SelectAll;
       pedit.SetFocus;
       Exit;

      end;

      if StrToInt(strls)>255 then
      begin
       ShowMessage('���벻�ܴ���255');
       pedit.SelectAll;
       pedit.SetFocus;
       Exit;

      end;

   end;

    if not CheckBox1.Checked then
      begin
        strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
      end
    else
    begin
      strls := '255.255.255.255';
    end;

    if CheckBox3.Checked then
    begin //��������Ҫ��ʾ

      strls1 :='009,' + Edit1.Text + ',' ;//1,20,0,1';  //0x2b
      strls1 := strls1 + Edit8.Text;
      strls1 := strls1 + ',20,';


      if(CheckBox2.Checked) then
      begin//����ͬʱ��������
        strls1 := strls1 +IntToStr(ComboBox2.ItemIndex + 1) + ',' + IntToStr(ComboBox1.ItemIndex);//IntToStr(ComboBox1.ItemIndex);

      end
      else
      begin
        strls1 := strls1 + '0,0';
      end;

      IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));
    end
    else
    begin
      strls1 :='010,'  + Edit1.Text + ',';//1,20,0,1';  //0x2b

      if(CheckBox2.Checked) then
      begin//����ͬʱ��������
        strls1 := strls1 +IntToStr(ComboBox2.ItemIndex + 1) + ',' + IntToStr(ComboBox1.ItemIndex + 2);
        IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));
      end;
    end;

end;

procedure TForm1.Button12Click(Sender: TObject);
var
    mydatetime:TDateTime;
begin
    mydatetime := Now;

    Edit19.Text := FormatDateTime('YY',mydatetime);
    Edit20.Text := FormatDateTime('MM',mydatetime);
    Edit21.Text := FormatDateTime('DD',mydatetime);
    Edit23.Text := FormatDateTime('hh',mydatetime);
    Edit24.Text := FormatDateTime('nn',mydatetime);
    Edit25.Text := FormatDateTime('ss',mydatetime);

end;

procedure TForm1.Button13Click(Sender: TObject);
var
  strls:string;
  i:Integer;
  pedit:TEdit;
  strls1:string;

begin
  for i := 3 to 6 do
  begin
    pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
    strls := pedit.Text;
    if Trim(strls) = '' then
    begin
     ShowMessage('���벻��Ϊ��');
     pedit.Text:='';
     pedit.SetFocus;
     Exit;
    end;

     if not isrightint(strls) then
     begin
       ShowMessage('�������Ϊ����');
       pedit.SelectAll;
       pedit.SetFocus;
       Exit;

     end;

     if StrToInt(strls)>255 then
     begin
       ShowMessage('���벻�ܴ���255');
       pedit.SelectAll;
       pedit.SetFocus;
       Exit;

     end;

  end;

  if not CheckBox1.Checked then
  begin
    strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
  end
  else
  begin
    strls := '255.255.255.255';
  end;

  strls1 :='002,' + Edit1.Text ;


  IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));


end;

procedure TForm1.Button14Click(Sender: TObject);
var
  strls:string;
  strls1:string;

  i:Integer;
  pedit:TEdit;

begin
   for i := 3 to 6 do
   begin
      pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
      strls := pedit.Text;
      if Trim(strls) = '' then
      begin
       ShowMessage('���벻��Ϊ��');
       pedit.Text:='';
       pedit.SetFocus;
       Exit;
      end;

       if not isrightint(strls) then
       begin
         ShowMessage('�������Ϊ����');
         pedit.SelectAll;
         pedit.SetFocus;
         Exit;

       end;

       if StrToInt(strls)>255 then
       begin
         ShowMessage('���벻�ܴ���255');
         pedit.SelectAll;
         pedit.SetFocus;
         Exit;

       end;

   end;

    strls1 :='003,' + Edit1.Text + ',20' +  Edit19.Text + '-' + Edit20.Text + '-' + Edit21.Text + ' ' + Edit23.Text + ':' + Edit24.Text + ':' + Edit25.Text;

    if not CheckBox1.Checked then
    begin
      strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
    end
    else
    begin
      strls := '255.255.255.255';
    end;

    IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.Text := '';  
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  strls:string;
  strls1:string;

begin

     if not CheckBox1.Checked then
      begin
        strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
      end
    else
    begin
      strls := '255.255.255.255';
    end;


    strls1 :='012,'  + Edit1.Text + ',' + Edit2.Text ;//1,20,0,1';  //0x2b

    IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  str:string;

begin

  //str := '006,00000,3213582007,{������\n��}��1159�˿���δ����\,{�����}Ϣ������,10,4,3';
  str := '024,65535,024-024::024-024,3,983039,00000,0.02,2.80,2017-11-24 22:13:20,0,3,0';
  IdUDPServer1.Binding.SendTo('192.168.1.228',39192,str[1],Length(str));
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9','.',#8] then
  begin


  end
  else
  begin
    Key := #0;
  end;

end;

procedure TForm1.Edit7Exit(Sender: TObject);

begin
  if Trim(Edit7.Text) = '' then
  begin
    ShowMessage('������벻��Ϊ�գ�');
    Edit7.SetFocus;
    Exit;

  end;
  try

    expensestr := Formatfloat('0.00',StrToFloat(Trim(Edit7.Text)));

    Edit7.Text := expensestr;

  except

  end;




end;

procedure TForm1.Button11Click(Sender: TObject);
var
  cardhao:Int64;
  cardhaols:Int64;

begin

  cardhao := StrToInt64(Edit10.Text);
  if ListView3.items.Count > 0 then
  begin
    cardhaols := StrToInt64(ListView3.items[ListView3.items.Count-1].Caption);

    if(cardhao > cardhaols) then
    begin


    end
    else
    begin
       ShowMessage('���뿨�ű������ǰ��Ŀ���!');
       Edit10.SelectAll;
       Edit10.SetFocus;
       Exit;

    end;

  end;

  if cardhao = 0 then
  begin
    ShowMessage('���������0�Ŀ���!');
    Exit;
  end
  else if(cardhao > 4294967295) then
  begin
    ShowMessage('������С�ڵ���4294967295�Ŀ���!');
    Exit;

  end;

  (ListView3.items.Add).Caption := Edit10.Text;

end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  ListView3.Items.Clear;
end;

procedure TForm1.Button15Click(Sender: TObject);
var
  i:Integer;
  j:Integer;
  mycount:Integer;
  strls:string;
  strls1:string;
  pedit:TEdit;

begin

  for i := 3 to 6 do
  begin
    pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
    strls := pedit.Text;
    if Trim(strls) = '' then
    begin
     ShowMessage('���벻��Ϊ��');
     pedit.Text:='';
     pedit.SetFocus;
     Exit;
    end;

    if not isrightint(strls) then
    begin
     ShowMessage('�������Ϊ����');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

    if StrToInt(strls)>255 then
    begin
     ShowMessage('���벻�ܴ���255');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

  end;

  if not CheckBox1.Checked then
    begin
      strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
    end
  else
  begin
    strls := '255.255.255.255';
  end;

  mycount := ListView3.items.Count;
  i := 0;

  strls1 := '015,' + Edit1.Text;

  while i< mycount do
  begin
    if (mycount - i) >= 8 then//һ�����ֻ�ܴ�8������
    begin
      strls1 := strls1 + ',' + ListView3.items[i].Caption + ',' + ListView3.items[i+1].Caption + ',' + ListView3.items[i+2].Caption + ',' + ListView3.items[i+3].Caption + ',' + ListView3.items[i+4].Caption + ',' + ListView3.items[i+5].Caption + ',' + ListView3.items[i+6].Caption + ',' + ListView3.items[i+7].Caption;

    end
    else
    begin
      for j := i to (mycount - 1) do
      begin
        strls1 := strls1 + ',' + ListView3.items[j].Caption;



      end;



    end;

    i := i + 8;

    IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));

  end;

end;

procedure TForm1.Button17Click(Sender: TObject);
var
  i:Integer;
  j:Integer;
  mycount:Integer;
  strls:string;
  strls1:string;
  pedit:TEdit;

begin

  for i := 3 to 6 do
  begin
    pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
    strls := pedit.Text;
    if Trim(strls) = '' then
    begin
     ShowMessage('���벻��Ϊ��');
     pedit.Text:='';
     pedit.SetFocus;
     Exit;
    end;

    if not isrightint(strls) then
    begin
     ShowMessage('�������Ϊ����');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

    if StrToInt(strls)>255 then
    begin
     ShowMessage('���벻�ܴ���255');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

  end;

  if not CheckBox1.Checked then
    begin
      strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
    end
  else
  begin
    strls := '255.255.255.255';
  end;

  mycount := ListView3.items.Count;
  i := 0;

  strls1 := '016,' + Edit1.Text;

  while i< mycount do
  begin
    if (mycount - i) >= 8 then//һ�����ֻ�ܴ�8������
    begin
      strls1 := strls1 + ',' + ListView3.items[i].Caption + ',' + ListView3.items[i+1].Caption + ',' + ListView3.items[i+2].Caption + ',' + ListView3.items[i+3].Caption + ',' + ListView3.items[i+4].Caption + ',' + ListView3.items[i+5].Caption + ',' + ListView3.items[i+6].Caption + ',' + ListView3.items[i+7].Caption;

    end
    else
    begin
      for j := i to (mycount - 1) do
      begin
        strls1 := strls1 + ',' + ListView3.items[j].Caption;



      end;



    end;

    i := i + 8;

    IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));

  end;

end;

procedure TForm1.Button18Click(Sender: TObject);
var
  i:Integer;
  j:Integer;
  mycount:Integer;
  strls:string;
  strls1:string;
  pedit:TEdit;

begin
  for i := 3 to 6 do
  begin
    pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
    strls := pedit.Text;
    if Trim(strls) = '' then
    begin
     ShowMessage('���벻��Ϊ��');
     pedit.Text:='';
     pedit.SetFocus;
     Exit;
    end;

    if not isrightint(strls) then
    begin
     ShowMessage('�������Ϊ����');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

    if StrToInt(strls)>255 then
    begin
     ShowMessage('���벻�ܴ���255');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

  end;

  if not CheckBox1.Checked then
    begin
      strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
    end
  else
  begin
    strls := '255.255.255.255';
  end;

  mycount := ListView3.items.Count;
  i := 0;

  strls1 := '017,' + Edit1.Text;

  while i< mycount do
  begin
    if (mycount - i) >= 8 then//һ�����ֻ�ܴ�8������
    begin
      strls1 := strls1 + ',' + ListView3.items[i].Caption + ',' + ListView3.items[i+1].Caption + ',' + ListView3.items[i+2].Caption + ',' + ListView3.items[i+3].Caption + ',' + ListView3.items[i+4].Caption + ',' + ListView3.items[i+5].Caption + ',' + ListView3.items[i+6].Caption + ',' + ListView3.items[i+7].Caption;

    end
    else
    begin
      for j := i to (mycount - 1) do
      begin
        strls1 := strls1 + ',' + ListView3.items[j].Caption;



      end;



    end;

    i := i + 8;

    IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));

  end;

end;

procedure TForm1.Button16Click(Sender: TObject);
var
  i:Integer;
  strls:string;
  strls1:string;
  pedit:TEdit;

begin

  for i := 3 to 6 do
  begin
    pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
    strls := pedit.Text;
    if Trim(strls) = '' then
    begin
     ShowMessage('���벻��Ϊ��');
     pedit.Text:='';
     pedit.SetFocus;
     Exit;
    end;

    if not isrightint(strls) then
    begin
     ShowMessage('�������Ϊ����');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

    if StrToInt(strls)>255 then
    begin
     ShowMessage('���벻�ܴ���255');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

  end;

  if not CheckBox1.Checked then
    begin
      strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
    end
  else
  begin
    strls := '255.255.255.255';
  end;


  strls1 := '018,' + Edit1.Text + ',018-018::018-018';   //018,00000,

  IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));

end;

procedure TForm1.Button19Click(Sender: TObject);
var
  i:Integer;
  strls:string;
  strls1:string;
  pedit:TEdit;

begin

  for i := 3 to 6 do
  begin
    pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
    strls := pedit.Text;
    if Trim(strls) = '' then
    begin
     ShowMessage('���벻��Ϊ��');
     pedit.Text:='';
     pedit.SetFocus;
     Exit;
    end;

    if not isrightint(strls) then
    begin
     ShowMessage('�������Ϊ����');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

    if StrToInt(strls)>255 then
    begin
     ShowMessage('���벻�ܴ���255');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

  end;

  if not CheckBox1.Checked then
    begin
      strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
    end
  else
  begin
    strls := '255.255.255.255';
  end;


  strls1 := '019,' + Edit1.Text + ',019-019::019-019';   //018,00000,

  IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));

end;

procedure TForm1.Button21Click(Sender: TObject);
var
  i:Integer;
  strls:string;
  strls1:string;
  pedit:TEdit;

begin

  for i := 3 to 6 do
  begin
    pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
    strls := pedit.Text;
    if Trim(strls) = '' then
    begin
     ShowMessage('���벻��Ϊ��');
     pedit.Text:='';
     pedit.SetFocus;
     Exit;
    end;

    if not isrightint(strls) then
    begin
     ShowMessage('�������Ϊ����');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

    if StrToInt(strls)>255 then
    begin
     ShowMessage('���벻�ܴ���255');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

  end;

  if not CheckBox1.Checked then
    begin
      strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
    end
  else
  begin
    strls := '255.255.255.255';
  end;


  strls1 := '020,' + Edit1.Text + ',' + Edit10.Text;   //018,00000,

  IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));

end;

procedure TForm1.Button20Click(Sender: TObject);
var
  i:Integer;
  strls:string;
  strls1:string;
  pedit:TEdit;

begin

  for i := 3 to 6 do
  begin
    pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
    strls := pedit.Text;
    if Trim(strls) = '' then
    begin
     ShowMessage('���벻��Ϊ��');
     pedit.Text:='';
     pedit.SetFocus;
     Exit;
    end;

    if not isrightint(strls) then
    begin
     ShowMessage('�������Ϊ����');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

    if StrToInt(strls)>255 then
    begin
     ShowMessage('���벻�ܴ���255');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

  end;

  if not CheckBox1.Checked then
    begin
      strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
    end
  else
  begin
    strls := '255.255.255.255';
  end;


  strls1 := '021,' + Edit1.Text;   //018,00000,

  IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));

end;

procedure TForm1.Button22Click(Sender: TObject);
var
  i:Integer;
  strls:string;
  strls1:string;
  pedit:TEdit;

begin

  for i := 3 to 6 do
  begin
    pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
    strls := pedit.Text;
    if Trim(strls) = '' then
    begin
     ShowMessage('���벻��Ϊ��');
     pedit.Text:='';
     pedit.SetFocus;
     Exit;
    end;

    if not isrightint(strls) then
    begin
     ShowMessage('�������Ϊ����');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

    if StrToInt(strls)>255 then
    begin
     ShowMessage('���벻�ܴ���255');
     pedit.SelectAll;
     pedit.SetFocus;
     Exit;

    end;

  end;

  if not CheckBox1.Checked then
    begin
      strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
    end
  else
  begin
    strls := '255.255.255.255';
  end;

  strls1 := '022,' + Edit1.Text +',';

  if (CheckBox4.Checked) then
  begin//������������
    strls1 := strls1 + '1,' + Edit11.Text + ',10,2,0' ;
  end
  else
  begin
    strls1 := strls1 + '0,' + Edit11.Text + ',10,2,0' ;

  end;

  IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));
end;

procedure TForm1.Button23Click(Sender: TObject);
var
  strls:string;
  strls1:string;
  i:Integer;
  pedit:TEdit;
begin
   for i := 3 to 6 do
   begin
      pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
      strls := pedit.Text;
      if Trim(strls) = '' then
      begin
       ShowMessage('���벻��Ϊ��');
       pedit.Text:='';
       pedit.SetFocus;
       Exit;
      end;

      if not isrightint(strls) then
      begin
       ShowMessage('�������Ϊ����');
       pedit.SelectAll;
       pedit.SetFocus;
       Exit;

      end;

      if StrToInt(strls)>255 then
      begin
       ShowMessage('���벻�ܴ���255');
       pedit.SelectAll;
       pedit.SetFocus;
       Exit;

      end;

   end;

    if not CheckBox1.Checked then
      begin
        strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
      end
    else
    begin
      strls := '255.255.255.255';
    end;

    strls1 :='030,' + Edit1.Text + ',030-030::030-030,' ;//030,����, 030-030::030-030,

    strls1 := strls1 + IntToStr(ComboBox3.ItemIndex)+ ',1,' + Edit12.Text; //�̵������,����ʱ��

    IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));





end;

procedure TForm1.Button24Click(Sender: TObject);
var
  strls:string;
  strls1:string;
  i:Integer;
  pedit:TEdit;
begin
   for i := 3 to 6 do
   begin
      pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
      strls := pedit.Text;
      if Trim(strls) = '' then
      begin
       ShowMessage('���벻��Ϊ��');
       pedit.Text:='';
       pedit.SetFocus;
       Exit;
      end;

      if not isrightint(strls) then
      begin
       ShowMessage('�������Ϊ����');
       pedit.SelectAll;
       pedit.SetFocus;
       Exit;

      end;

      if StrToInt(strls)>255 then
      begin
       ShowMessage('���벻�ܴ���255');
       pedit.SelectAll;
       pedit.SetFocus;
       Exit;

      end;

   end;

    if not CheckBox1.Checked then
      begin
        strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
      end
    else
    begin
      strls := '255.255.255.255';
    end;

    strls1 :='030,' + Edit1.Text + ',030-030::030-030,' ;//030,����, 030-030::030-030,

    strls1 := strls1 + IntToStr(ComboBox3.ItemIndex)+ ',0,' + Edit12.Text; //�̵������,����ʱ��

    IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  str:string;
  sendbuf:array[0..60000] of Byte;
  i:Integer;



begin
    str :='000';
    for i := 0 to 60000  do
    begin
         sendbuf[i] := Random(255);

    end;

    IdUDPServer1.Binding.SendTo('255.255.255.255',39192,sendbuf,30000); //�㲥ʽ����
end;




procedure TForm1.Button25Click(Sender: TObject);
  var
  strls:string;
  strls1:string;
  i:Integer;
  pedit:TEdit;

begin

   for i := 3 to 6 do
   begin
      pedit := TEdit(FindComponent('Edit' + IntToStr(i)));
      strls := pedit.Text;
      if Trim(strls) = '' then
      begin
       ShowMessage('���벻��Ϊ��');
       pedit.Text:='';
       pedit.SetFocus;
       Exit;
      end;

      if not isrightint(strls) then
      begin
       ShowMessage('�������Ϊ����');
       pedit.SelectAll;
       pedit.SetFocus;
       Exit;

      end;

      if StrToInt(strls)>255 then
      begin
       ShowMessage('���벻�ܴ���255');
       pedit.SelectAll;
       pedit.SetFocus;
       Exit;

      end;

   end;

    if not CheckBox1.Checked then
      begin
        strls := Edit3.Text + '.' + Edit4.Text + '.' + Edit5.Text + '.' + Edit6.Text;
      end
    else
    begin
      strls := '255.255.255.255';
    end;


    strls1 :='040,' + Edit1.Text + ',' ;
    strls1 := strls1 + Edit13.Text;
    IdUDPServer1.Binding.SendTo(strls,39192,strls1[1],Length(strls1));



end;


procedure TForm1.Button26Click(Sender: TObject);
begin
  ListView2.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  aa:TList;
  i :Integer;

begin
  try
    begin
      aa :=GetAdapterInfo;
      for i := 0 to aa.Count - 1 do
      begin
               ComboBox4.Items.Add(TAdapterInfo(aa.Items[i]).IPAddress);
      end;
      ComboBox4.ItemIndex:= aa.Count - 1;
    end;
    except
     begin
        showmessage('������������쳣�����ѻ�ר��UDPЭ��˿�[39192]�ѱ���������ռ�ã��޷����豸�������ӣ���������������');
        Close ;
     end;
    end;

end;

procedure TForm1.ComboBox4Change(Sender: TObject);
begin
  try
    begin
      IdUDPServer1.Active :=False ;
      IdUDPServer1.BroadcastEnabled:=False;
      IdUDPServer1.Bindings.Clear;
      IdUDPServer1.Bindings.Add;
      IdUDPServer1.Bindings[0].IP := ComboBox4.Text ; //����IP
      IdUDPServer1.Bindings[0].Port := 39192; //����IP
      IdUDPServer1.BroadcastEnabled:=true;
      IdUDPServer1.Active := true; //����IdUDPServer �ؼ�
     end;
   except

  end;
end;

end.


