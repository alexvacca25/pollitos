void main() {
  informe();
}

Map<String, dynamic> galpones() {
  Map<String, dynamic> galpon = {
    "idgalpon": "G001",
    "numAnimales": 1000,
    "temp": [21, 34, 22, 20, 18],
    "responsable": "Alex Vacca"
  };

  return galpon;
}

void informe() {
  List<Map<String, dynamic>> listadogalpones = [];
  for (int i = 0; i <= 100; i++) {
    listadogalpones.add(galpones());
  }

  print("****************INFORME DE GALPONES**************************");
  for (int j = 0; j < listadogalpones.length; j++) {
    print(
        "${j + 1} -> # Galpon ${listadogalpones[j]["idgalpon"]} -Animales: ${listadogalpones[j]["numAnimales"]} Responsable: ${listadogalpones[j]["responsable"]} ");
    print("*******************TEMPERATURA***************************");

    for (int k = 0; k < listadogalpones[j]["temp"].length; k++) {
      var estado = "NORMAL";
      if (listadogalpones[j]["temp"][k] <= 21) {
        estado = "TEMP BAJA";
      } else if (listadogalpones[j]["temp"][k] > 35) {
        estado = "TEMP ALTA";
      }
      print("${k + 1}>>>(${listadogalpones[j]["temp"][k]} - $estado)");
    }
  }
}
