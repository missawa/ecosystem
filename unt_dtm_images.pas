unit unt_dtm_images;

interface

uses
  SysUtils, Classes, ImgList, Controls;

type
  Tdtm_images = class(TDataModule)
    img_48: TImageList;
    img_32: TImageList;
    img_40: TImageList;
    img_40_des: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtm_images: Tdtm_images;

implementation

{$R *.dfm}

end.
