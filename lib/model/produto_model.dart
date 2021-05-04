class ProdutoProm {
  int id;
  String xdataType;
  int iDCODIGO;
  String nREF;
  String cODIGOGTIN;
  String nOMPRO;
  double vALOR;
  double vALORREF;
  String fOTOURL;
  String fOTO64;
  String fOTO1XdataProxy;
  String uND;
  int cODMARCA;
  int cODGRU;
  int cODSUBGRU;

  ProdutoProm(
      {this.id,
      this.xdataType,
      this.iDCODIGO,
      this.nREF,
      this.cODIGOGTIN,
      this.nOMPRO,
      this.vALOR,
      this.vALORREF,
      this.fOTOURL,
      this.fOTO64,
      this.fOTO1XdataProxy,
      this.uND,
      this.cODMARCA,
      this.cODGRU,
      this.cODSUBGRU});

  ProdutoProm.fromJson(Map<String, dynamic> json) {
    id = json['$id'];
    xdataType = json['@xdata.type'];
    iDCODIGO = json['ID_CODIGO'];
    nREF = json['N_REF_'];
    cODIGOGTIN = json['CODIGOGTIN_'];
    nOMPRO = json['NOMPRO_'];
    vALOR = json['VALOR_'];
    if (vALOR.isNaN) {
      vALOR = 0;
    }
    vALORREF = json['VALOR_REF_'];
    fOTOURL = json['FOTO_URL'];
    fOTO64 = json['FOTO64'];
    fOTO1XdataProxy = json['FOTO1@xdata.proxy'];
    uND = json['UND_'];
    cODMARCA = json['CODMARCA_'];
    cODGRU = json['CODGRU_'];
    cODSUBGRU = json['CODSUBGRU_'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$id'] = this.id;
    data['@xdata.type'] = this.xdataType;
    data['ID_CODIGO'] = this.iDCODIGO;
    data['N_REF_'] = this.nREF;
    data['CODIGOGTIN_'] = this.cODIGOGTIN;
    data['NOMPRO_'] = this.nOMPRO;
    data['VALOR_'] = this.vALOR;
    data['VALOR_REF_'] = this.vALORREF;
    data['FOTO_URL'] = this.fOTOURL;
    data['FOTO64'] = this.fOTO64;
    data['FOTO1@xdata.proxy'] = this.fOTO1XdataProxy;
    data['UND_'] = this.uND;
    data['CODMARCA_'] = this.cODMARCA;
    data['CODGRU_'] = this.cODGRU;
    data['CODSUBGRU_'] = this.cODSUBGRU;
    return data;
  }
}
