object Fproinfmig: TFproinfmig
  Left = 2
  Top = 145
  BorderStyle = bsDialog
  Caption = 'Procesar informaci'#243'n migrada'
  ClientHeight = 530
  ClientWidth = 789
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 7
    Top = 327
    Width = 777
    Height = 167
    Caption = 'Informaci'#243'n a actualizar'
    TabOrder = 4
    object wwDBGrid1: TwwDBGrid
      Left = 6
      Top = 17
      Width = 763
      Height = 144
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsQry20
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
  end
  object Panel1: TPanel
    Left = 7
    Top = 169
    Width = 780
    Height = 159
    Caption = 'Panel1'
    Color = 10207162
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 4
      Top = 18
      Width = 273
      Height = 134
      Caption = 'Plantilla'
      TabOrder = 0
      object dbgcabecera: TwwDBGrid
        Left = 6
        Top = 16
        Width = 260
        Height = 111
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        OnCellChanged = dbgcabeceraCellChanged
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsQry5
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        OnDblClick = dbgcabeceraDblClick
        object dbgcabeceraIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          AllowAllUp = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = dbgcabeceraIButtonClick
        end
      end
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 778
      Height = 17
      Align = alTop
      Alignment = taCenter
      Caption = 'SELECCIONE PLANTILLA A USAR'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 281
      Top = 18
      Width = 409
      Height = 134
      Caption = 'Detalle'
      TabOrder = 2
      object dbgdetalle: TwwDBGrid
        Left = 6
        Top = 16
        Width = 396
        Height = 111
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsQry6
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        OnDblClick = dbgdetalleDblClick
        object dbgdetalleIButton: TwwIButton
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          AllowAllUp = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = dbgdetalleIButtonClick
        end
      end
    end
    object btntransferir: TBitBtn
      Left = 695
      Top = 26
      Width = 78
      Height = 28
      Caption = 'Transferir'
      TabOrder = 3
      OnClick = btntransferirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
  end
  object sbBase: TScrollBox
    Left = 7
    Top = 4
    Width = 781
    Height = 162
    TabOrder = 1
    object dbgPlantilla: TwwDBGrid
      Left = 4
      Top = 3
      Width = 2500
      Height = 133
      DisableThemesInTitle = False
      MemoAttributes = [mSizeable, mWordWrap, mGridShow]
      IniAttributes.Delimiter = ';;'
      TitleColor = 10207162
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = 15792632
      DataSource = DM1.dsQry4
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      KeyOptions = [dgAllowDelete]
      Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgNoLimitColSize]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Courier New'
      TitleFont.Style = []
      TitleLines = 3
      TitleButtons = False
    end
  end
  object pnlCab: TPanel
    Left = 52
    Top = 209
    Width = 187
    Height = 127
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    Color = 10207162
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 9
      Top = 39
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 66
      Width = 37
      Height = 13
      Caption = 'Nombre'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 49
      Top = 39
      Width = 3
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 49
      Top = 66
      Width = 3
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bbtnOkC: TBitBtn
      Left = 108
      Top = 88
      Width = 32
      Height = 28
      TabOrder = 0
      OnClick = bbtnOkCClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object bbtnCancC: TBitBtn
      Left = 144
      Top = 88
      Width = 32
      Height = 28
      Cancel = True
      TabOrder = 1
      OnClick = bbtnCancCClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object menombre: TMaskEdit
      Left = 56
      Top = 62
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 30
      TabOrder = 2
    end
    object pnlcodigo: TPanel
      Left = 56
      Top = 35
      Width = 54
      Height = 23
      Enabled = False
      TabOrder = 3
      object mecodigo: TMaskEdit
        Left = 1
        Top = 1
        Width = 51
        Height = 21
        TabOrder = 0
      end
    end
    object StaticText2: TStaticText
      Left = 6
      Top = 6
      Width = 175
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'Plantilla'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlDet: TPanel
    Left = 330
    Top = 208
    Width = 212
    Height = 170
    Alignment = taRightJustify
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    Color = 10207162
    TabOrder = 3
    Visible = False
    object Label9: TLabel
      Left = 9
      Top = 38
      Width = 33
      Height = 13
      Caption = 'Campo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 52
      Top = 38
      Width = 3
      Height = 13
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bbtnOkD: TBitBtn
      Left = 97
      Top = 133
      Width = 32
      Height = 25
      TabOrder = 2
      OnClick = bbtnOkDClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object bbtnCancD: TBitBtn
      Left = 170
      Top = 133
      Width = 32
      Height = 25
      Cancel = True
      TabOrder = 3
      OnClick = bbtnCancDClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object gbposicion: TGroupBox
      Left = 9
      Top = 84
      Width = 192
      Height = 44
      Caption = 'Posiciones'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label10: TLabel
        Left = 9
        Top = 23
        Width = 31
        Height = 13
        Caption = 'Desde'
      end
      object Label11: TLabel
        Left = 98
        Top = 23
        Width = 28
        Height = 13
        Caption = 'Hasta'
      end
      object spDesde: TwwDBSpinEdit
        Left = 44
        Top = 17
        Width = 45
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 350.000000000000000000
        DataField = 'DESDE'
        MaxLength = 3
        TabOrder = 0
        UnboundDataType = wwDefault
      end
      object spHasta: TwwDBSpinEdit
        Left = 130
        Top = 16
        Width = 45
        Height = 21
        Increment = 1.000000000000000000
        MaxValue = 350.000000000000000000
        DataField = 'HASTA'
        MaxLength = 3
        TabOrder = 1
        UnboundDataType = wwDefault
      end
    end
    object dblcdnomcam: TwwDBLookupComboDlg
      Left = 60
      Top = 32
      Width = 102
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsQry7
      LookupField = 'NOMCAM'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdnomcamExit
    end
    object pnl: TPanel
      Left = 9
      Top = 59
      Width = 193
      Height = 23
      Enabled = False
      TabOrder = 5
      object medescam: TMaskEdit
        Left = 1
        Top = 1
        Width = 191
        Height = 21
        TabOrder = 0
      end
    end
    object StaticText3: TStaticText
      Left = 6
      Top = 6
      Width = 200
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'Detalle de la plantilla'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object btnelireg: TBitBtn
      Left = 134
      Top = 133
      Width = 32
      Height = 25
      TabOrder = 6
      OnClick = btneliregClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object BitBtn3: TBitBtn
    Left = 706
    Top = 499
    Width = 78
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 5
    OnClick = BitBtn3Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object btnactugel: TBitBtn
    Left = 9
    Top = 499
    Width = 114
    Height = 28
    Caption = 'Actualizar Ugel'
    TabOrder = 6
    Visible = False
    OnClick = btnactugelClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
      000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
      99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
      0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
      FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
      0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
      000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
      00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
      00FF33337FFF7FF77733333300000000033F3333777777777333}
    NumGlyphs = 2
  end
end