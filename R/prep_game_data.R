#' prep_game_data.R
#'
#' Construye el objeto de datos para el boletin de un juego especifico.
#' Para este mockup, los datos son HECHOS reales tomados del boletin que
#' el usuario recibio de la oficina de prensa de Toros (extraidos como
#' datos estructurados, no como texto copiado -- el diseno y la redaccion
#' de este documento son originales, no una replica del original).
#'
#' En produccion, esta funcion se reemplaza por llamadas a los ETLs reales
#' (download_statsapi(gamepk), players_hitting_etl(), etc.) -- la firma de
#' game_data() es el contrato que el resto del pipeline (game-notes.qmd)
#' espera, independientemente de si los datos vienen de aqui o de ahi.

game_data <- function() {
  list(
    # --- Metadatos del juego ---------------------------------------------
    gamepk = 867446,
    fecha = "21 de agosto de 2026",
    dia_semana = "Viernes",
    juego_serie = 3,
    ronda = "Semifinal de Zona",
    sede = "Estadio Panamericano",
    ciudad_sede = "Guadalajara, Jalisco",
    hora_inicio = "18:30 hrs",
    tv = "Toros Network / Charros TV",
    radio = "1550 AM",

    # --- Serie ------------------------------------------------------------
    serie_marcador = list(visitante = 1, local = 1),

    # --- Equipos ------------------------------------------------------------
    visitante = list(
      nombre = "Toros de Tijuana", abrev = "TIJ", inicial = "T",
      record_serie = "1-1", record_gira = "0-0",
      record_temporada = "60-31", posicion = "1ro. Zona Norte / 2do. LMB",
      record_playoffs_historico = "85-71 (.544)",
      manager = "Roberto Kelly", manager_record_playoffs = "82-57 (.589)",
      temas = c(
        "El cuerpo de relevo lidera la liga en esta postemporada con 2.91 de efectividad en 65 entradas de labor y 7.20 ponches por cada nueve entradas.",
        "Brett de Geus registra 1.29 de efectividad en 7 entradas de playoffs, con 8 ponches propinados.",
        "Roel Ram\u00edrez no ha permitido carrera en 6 entradas de playoffs; lider\u00f3 la LMB Zona Norte en holds durante la temporada regular con 19.",
        "El campocorto Jonathan Guzm\u00e1n impuls\u00f3 2 carreras y resolvi\u00f3 el juego 1 con una jugada defensiva de l\u00ednea.",
        "El inicialista Wilmer Flores bate\u00f3 .400 en los primeros dos juegos de la serie, con 3 boletos recibidos."
      )
    ),
    local = list(
      nombre = "Charros de Jalisco", abrev = "JAL", inicial = "C",
      record_serie = "1-1", record_casa = "0-0",
      temas = c(
        "Los primeros dos juegos de la serie se disputaron en Tijuana; Charros regresa a casa con la serie empatada.",
        "Luis Iv\u00e1n Rodr\u00edguez abre el juego 3 con marca de 1-0 en esta postemporada.",
        "En temporada regular, Charros cerr\u00f3 el a\u00f1o con marca de 4-9 en juegos decididos por una carrera ante Toros.",
        "La serie de zona semifinal se define a ganar 4 de 7 juegos; Charros necesita ganar en casa para tomar ventaja."
      )
    ),

    # --- Resultados de la serie previa (juegos 1-2, en Tijuana) -----------
    resultados_serie_previa = list(
      list(fecha = "Mi\u00e9. 19 de agosto", resultado = "TIJ 4, JAL 2", sede = "Mobil Park"),
      list(fecha = "Jue. 20 de agosto", resultado = "JAL 5, TIJ 3", sede = "Mobil Park")
    ),

    # --- Abridores probables -------------------------------------------
    abridor_visitante = list(
      nombre = "Noah Skirrow", pais = "Canad\u00e1",
      record_temporada = "\u2014", era_temporada = 3.54,
      k9_temporada = 11.55, k_temporada = 98, aperturas_temporada = 17,
      record_playoffs = "0-1", era_playoffs = 7.71,
      ultima_salida = "4.2 IP, 7H, 4C, 4CL, 2BB, 3K (9/ago vs LAG)"
    ),
    abridor_local = list(
      nombre = "Luis Iv\u00e1n Rodr\u00edguez", pais = "M\u00e9xico",
      record_playoffs = "1-0", era_playoffs = 3.60,
      ultima_salida_temporada = "2.2 IP, 12H, 8C, 8CL, 1BB, 0K (5/ago vs CHI)"
    ),

    # --- Historial entre los dos equipos ---------------------------------
    historial = list(
      list(etiqueta = "Serie de temporada regular 2026", valor = "5-4 favor Toros"),
      list(etiqueta = "Hist\u00f3rico en temporada regular", valor = "17-10 favor Toros"),
      list(etiqueta = "Hist\u00f3rico incluyendo era Mariachis", valor = "28-20 favor Toros"),
      list(etiqueta = "\u00danico antecedente en postemporada", valor = "2021: Toros elimin\u00f3 a Mariachis en 6 juegos (Serie de Zona Norte) camino al t\u00edtulo de LMB")
    ),

    # --- Cifra destacada -----------------------------------------------
    cifra_destacada = list(
      valor = "2.91",
      etiqueta = "ERA del bulpen de Toros en esta postemporada \u2014 el mejor de la liga"
    ),

    # --- Reporte del manager ------------------------------------------
    reporte_manager = paste(
      "Roberto Kelly asegur\u00f3 que todo el roster est\u00e1 listo para entrar",
      "al terreno en cualquier momento, subrayando el compromiso colectivo",
      "del equipo para llevarse la serie."
    ),

    # --- Transmisiones ----------------------------------------------------
    transmisiones = list(
      list(medio = "TV (TIJ)", detalle = "Toros Network"),
      list(medio = "TV (JAL)", detalle = "Charros TV"),
      list(medio = "Radio", detalle = "1550 AM")
    )
  )
}
