// HPC_201707_ASO : Se retiran unidades de impresi�n de cuenta individual
//                  y se a�aden los que existen en Previsi�n social
program ASO000;
uses
  Forms,
  Windows,
  Msgdlgs,
  ASODM in 'ASODM.pas' {DM1: TDataModule},
  ASO901 in 'ASO901.pas' {fSeleccion},
  ASO908 in 'ASO908.pas' {fMatAso_old},
  ASO936 in 'ASO936.pas' {fNueAsociado},
  ASO937 in 'ASO937.pas' {fResNomb},
  ASO938 in 'ASO938.pas' {fCtasAhorro},
  ASO939 in 'ASO939.pas' {fCtrAcceso},
  ASO940 in 'ASO940.pas' {fPerfUsuario},
  ASO941 in 'ASO941.pas' {fNuePerfil},
  ASO942 in 'ASO942.pas' {fAuditoria},
  ASO943 in 'ASO943.pas' {fDatosSocEco},
  ASO944 in 'ASO944.pas' {fRegApor},
  ASO001 in 'ASO001.pas' {FPrincipal},
  ASO900 in 'ASO900.pas' {FOtorPre},
  ASO945 in 'ASO945.pas' {fContRegistro},
  ASO946 in 'ASO946.pas' {fCtasPers},
  ASO947 in 'ASO947.pas' {fAutCtas},
  ASO902 in 'ASO902.pas' {FSeleccionBen},
  ASO801 in 'ASO801.pas' {FMigraAso},
  ASO948 in 'ASO948.pas' {fIdentAso},
  APOD09 in 'APOD09.pas' {FUnificacion},
  ASO949 in 'ASO949.pas' {fRepDet},
  ASO950 in 'ASO950.pas' {fRepRes},
  ASO951 in 'ASO951.pas' {fValRegNue},
  ASO952 in 'ASO952.pas' {fMenObs},
  ASO953 in 'ASO953.pas' {fTipAso},
  ASO954 in 'ASO954.pas' {fCtrlReg},
  ASO955 in 'ASO955.pas' {fCtrOfdes},
  ASO957 in 'ASO957.pas' {fMstPrest},
  COB903 in 'COB903.pas' {fCronoPag},
  CRE907 in 'CRE907.pas' {fConsCre},
  ASO959 in 'ASO959.pas' {fResNomb2},
  ASO960 in 'ASO960.pas' {fDesacValid},
  ASO961 in 'ASO961.pas' {fRepAutDescuento},
  ASO963 in 'ASO963.pas' {Fpenaut},
  ASO964 in 'ASO964.pas' {Fautdes},
  ASO903 in 'ASO903.pas' {fmandom},
  ASO958A in 'ASO958A.pas' {FautorizaDescuento},
  ASO976 in 'ASO976.pas' {Fproinfmig},
  ASO161 in 'ASO161.pas' {fimptexto},
  ASO162 in 'ASO162.pas' {FDetMig},
  ASO163 in 'ASO163.pas' {Festadisticas},
  ASO164 in 'ASO164.pas' {fdeparcmig},
  ASO160 in 'ASO160.pas' {Factbloaso},
  ASO904 in 'ASO904.pas' {Frepautdesuniges},
  ASO165 in 'ASO165.pas' {Festpadr},
  ASO901B in 'ASO901B.pas' {fSeleccionAut},
  ASO958D in 'ASO958D.pas' {FRechazar},
  ASO958C in 'ASO958C.pas' {FConfirma},
  ASO958B in 'ASO958B.pas' {FAutoriza},
  ASO166 in 'ASO166.pas' {FRepNueAso},
  ASO167 in 'ASO167.pas' {FRptCartaDesignatario},
  ASO168 in 'ASO168.pas' {fAutDesApo},
  ASO169 in 'ASO169.pas' {fDetAutDes},
  ASO170 in 'ASO170.pas' {fEstDepSex},
  ASO907 in 'ASO907.pas' {FFiltrarColegios},
  ASO180 in 'ASO180.pas' {Fcamtipaso},
  ASO905 in 'ASO905.pas' {FManCol},
  ASO906 in 'ASO906.pas' {fManColAgr},
  ASO260 in 'ASO260.pas' {FMantAsociado},
  ASO260A in 'ASO260A.pas' {FMantAsociadoObservacion},
  ASO260B in 'ASO260B.pas' {FMantAsociadoListaReniec},
  ASO260C in 'ASO260C.pas' {FMantAsociadoObsSinRes},
  ASO260D in 'ASO260D.pas' {FMantAsociadoZoom},
  ASO260E in 'ASO260E.pas' {FMantAsociadoDatosReniec},
  ASO260F in 'ASO260F.pas' {FMantAsociadoCompara},
  ASO260G in 'ASO260G.pas' {FMantAsociadoConfirmaReniec},
  ASO260H in 'ASO260H.pas' {FMantAsociadoCompletar},
  ASO260I in 'ASO260I.pas' {FMantAsociadoIguApeLiqAnt},
  ASO260J in 'ASO260J.pas' {FMantAsociadoDatosValidar},
  ASO260K in 'ASO260K.pas' {FMantAsociadoAutDes},
  ASO260L in 'ASO260L.pas' {FNuevoAsociadoBuscar},
  ASO260M in 'ASO260M.pas' {FMantAsociadoBuscar},
  ASO965 in 'ASO965.pas' {FActNuevo},
  ASO966 in 'ASO966.pas' {FrmAutxCenEdu},
  ASO967 in 'ASO967.pas' {FDocCon},
  ASO317A1 in 'ASO317A1.pas' {FRptEstTomaFotosDpto},
  ASO317A2 in 'ASO317A2.pas' {FRptEstTomaFotosUPro},
  ASO317A3 in 'ASO317A3.pas' {FRptEstTomaFotosUgel},
  ASO317B in 'ASO317B.pas' {FRptEstTomaFotosOfides},
  ASO318 in 'ASO318.pas' {FRepFallecidos},
  ASO968 in 'ASO968.pas' {FAsiCueAhoInt},
  ASO962 in 'ASO962.pas' {FGenCheGerBen},
  PRE237 in 'PRE237.pas' {fmstapo},
  PRE272 in 'PRE272.pas' {Fprocueind},
  PRE273 in 'PRE273.pas' {fmstcueind},
  ASO943b in 'ASO943b.pas' {FDatosSocEcoxReg},
  ASO510 in 'ASO510.pas' {FRepControlCadap},
  ASO515 in 'ASO515.pas' {FRepSegundaVez},
  ASO520 in 'ASO520.pas' {FRepAsoConCredVig},
  ASO200 in 'ASO200.pas' {FSeleccionaAso},
  ASO212 in 'ASO212.pas' {FResNomParaReliq},
  PRE290 in 'PRE290.pas' {FRptPagBenXTipo},
  ASO211 in 'ASO211.pas' {FReingresoCesantes},
  ASO213 in 'ASO213.pas' {FGenSobres},
  ASO214 in 'ASO214.pas' {FDatDoc},
  ASO270 in 'ASO270.pas' {FConfirmarEstadoFallecido},
  ASO271 in 'ASO271.pas' {FConfirmarEstadoFallecidoDetalle},
  ASO231 in 'ASO231.pas' {FPadronErrores},
  ASO216 in 'ASO216.pas' {FPadrones},
  ASO217 in 'ASO217.pas' {FPadronDuplicados},
  ASO218 in 'ASO218.pas' {FPadronMultiplicados},
  ASO219 in 'ASO219.pas' {FPadronRegistro},
  ASO220 in 'ASO220.pas' {FPadronResumen},
  ASO221 in 'ASO221.pas' {FPadronRequisitos},
  ASO222 in 'ASO222.pas' {FPadronNoDuplicados},
  ASO223 in 'ASO223.pas' {FPadronRegsPorDNI},
  ASO224 in 'ASO224.pas' {FPadronConteo},
  ASO225 in 'ASO225.pas' {FUgelRegionPlanilla},
  ASO227 in 'ASO227.pas' {FUgelesRegionesPlanillas},
  ASO228 in 'ASO228.pas' {FPadronHistorialDNI},
  ASO229 in 'ASO229.pas' {FPadronReempTexto},
  ASO230 in 'ASO230.pas' {FPadronEstadisticas},
  ASO226 in 'ASO226.pas' {FTiposDescuento},
  ASO232 in 'ASO232.pas' {FPadronDescuentos},
  ASO233 in 'ASO233.pas' {FTipoDescuento},
  ASO234 in 'ASO234.pas' {FTipoDctoConver},
  ASO903A in 'ASO903A.pas' {FManTel},
  ASO909 in 'ASO909.pas' {FCenEduCodPago},
  ASO943c in 'ASO943c.pas' {FDatosSocEcoDctos},
  WSUbicabilidad in 'WSUbicabilidad.pas',
  ASO215 in 'ASO215.pas' {FCambDatosNombExped},
  ASO969 in 'ASO969.pas' {FConfirmaDesautDcto},
  ASO235 in 'ASO235.pas' {FPadronReempNombres},
  ASO236 in 'ASO236.pas' {FPadronReempNombre},
  ASO901C in 'ASO901C.pas' {FSeleccionDesaut},
  ASO261 in 'ASO261.pas' {fMstFonSol},
  ASO150 in 'ASO150.pas' {Factblqonp},
  ASO151 in 'ASO151.pas' {Fgenenvioonp},
  ASO154 in 'ASO154.pas' {FDetMigONP},
  ASO155 in 'ASO155.pas' {FestONP},
  ASO980 in 'ASO980.pas' {FrptNueAso},
  ASO237 in 'ASO237.pas' {fAutDesONP},
  ASO301 in 'ASO301.pas' {fAsoEdadSexo},
  ASO020 in 'ASO020.pas' {FCtrlAcceso},
  ASO022 in 'ASO022.pas' {FCPassw},
  ASO916 in 'ASO916.pas' {FNueManDom},
  ASO101 in 'ASO101.pas' {fReferencias},
  ASO101A in 'ASO101A.pas' {fGrabaDetalle},
  ASO201 in 'ASO201.pas' {fAsignaCartera},
  ASO201A in 'ASO201A.pas' {fAsignacionResponsable},
  ASO202 in 'ASO202.pas' {fGestionCartera},
  ASO203 in 'ASO203.pas' {fActualizarResultado},
  ASO203A in 'ASO203A.pas' {fModificarResultado},
  ASO302 in 'ASO302.pas' {fReporteCartera},
  ASO939A in 'ASO939A.pas' {fNivUsu},
  ASO204 in 'ASO204.pas' {fGeneraLote},
  ASO204A in 'ASO204A.pas' {fConsultaLotes},
  ASO204B in 'ASO204B.pas' {fConsultaProcesaLoteReniec},
  // Inicio: HPC_201707_ASO
  // ASO303 in 'ASO303.pas' {FrmListaCtaIndBloque},
  // ASO304 in 'ASO304.pas' {FrmGeneraCtaIndividualPDF},
  // Fin: HPC_201707_ASO
  ASO272 in 'ASO272.pas' {fMasDatos},
  ASO273 in 'ASO273.pas' {fInfmImp},
  ASO274 in 'ASO274.pas' {fInfDirecc},
  ASO275 in 'ASO275.pas' {fInfCorreo},
  ASO202B in 'ASO202B.pas' {fRepAvances},
  ASO216A in 'ASO216A.pas' {fProgAct},
  ASO216B in 'ASO216B.pas' {fProgPadron},
  ASO181 in 'ASO181.pas' {FCambioTipoAsociado},
  ASO182 in 'ASO182.pas' {FImportarExcel},
  ASO903B in 'ASO903B.pas' {FNueManTel},
  ASO262 in 'ASO262.pas' {FbusasorecCADAPS},
  ASO263 in 'ASO263.pas' {FRepControl},
  ASO264 in 'ASO264.pas' {FvalregCADAPS},
  ASO265 in 'ASO265.pas' {fenvarchico},
  ASO266 in 'ASO266.pas' {Fverificaasociado},
  ASO267 in 'ASO267.pas' {Flotesenviados},
  ASO959a in 'ASO959a.pas' {fResNombHist},
  // Inicio: HPC_201707_ASO 
  // ASO952a in 'ASO952a.pas' {fMensaje};
  // Se a�aden formas del modulo de previsi�n social
  ASO952a in 'ASO952a.pas' {fMensaje},
  PRE295 in 'PRE295.pas' {Fnuerepcueind},
  PRE934 in 'PRE934.pas' {FrmListaCtaIndBloque},
  PRE935 in 'PRE935.pas' {FrmGeneraCtaIndividualPDF};
  // Fin: HPC_201707_ASO 

{$R *.RES}

var
  HMutex: THandle;
begin
  HMutex := CreateMutex (nil, False, 'OneCopyMutexASO');
  if WaitForSingleObject (HMutex, 0) <> wait_TimeOut then
   begin
    Application.Initialize;
    Application.Title := 'Mantenimiento De Asociados';
    Application.CreateForm(TDM1, DM1);
  Application.Run;
   end
 else
  ErrorMsg('Modulo de Asociados', 'Ya se Encuentra en ejecuci�n el Modulo');
end.
