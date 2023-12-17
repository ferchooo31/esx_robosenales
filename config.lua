Config = {}

Config.Minijuego = {
    dificultad = 0.98, -- Indica la probabilidad de que la barra cambie de dirección. Cuanto más cerca esté de 0, más frecuente será el cambio de dirección.
    velocidadLinea = 1, -- Establece qué tan rápido se mueve la barra que estás siguiendo cuando presionas y sueltas la tecla 'E'.
    tiempo = 15, -- Indica la cantidad máxima de tiempo en segundos en el que necesitas alcanzar el 100%.
    halfSuccessMin = 80, -- Especifica el porcentaje mínimo completado cuando se agota el tiempo para que la tarea se considere parcialmente completada.
    valueUpSpeed = 0.5, -- Indica el porcentaje de aumento por segundo mientras se encuentra dentro del área de la barra.
    valueDownSpeed = 0.3, -- Especifica el porcentaje de disminución por segundo cuando se encuentra fuera del área de la barra.
    areaMoveSpeed = 0.5, -- Determina qué tan rápido se mueve el área que necesitamos seguir.

    -- Las imágenes del minijuego se pueden especificar como una URL o una ruta de archivo.
    -- si utiliza una ruta de archivo, debe hacer referencia a la carpeta 'img' dentro del script.
    -- asegurate de que las imágenes que utilice tengan un máximo de 250 px y estén en formato webp.
    logo = "img/fire.webp"
}

Config.BarraProgreso = {
    puedeCancelar = true, -- Puede cancelar el robo?
    puedoMoverme = false, -- Me puedo mover mientras robo una señal?
    combate = false, -- Habilitar el combate?
    mouse = false, -- Habilitar el mouse?
    posicion = 'bottom' -- posición de la barra de progreso. 'bottom' o 'middle'
}

Config.Inventario = {
    ox_inventory = true,
    qs_inventory = false,
    Default = false -- inventario default de esx
}