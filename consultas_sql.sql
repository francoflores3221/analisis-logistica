-- FASE 1: Exploración (Baselines)
-- Objetivo: Conocer el volumen total, tiempo promedio y edad promedio de los conductores.
SELECT 
    COUNT(ID) AS Total_Pedidos, 
    ROUND(AVG("Time_taken(min)"), 2) AS Tiempo_Promedio_Min, 
    ROUND(AVG(Delivery_person_Age), 0) AS Edad_Promedio_Conductores,
    ROUND(AVG(Delivery_person_Ratings), 1) AS Rating_Promedio
FROM delivery_limpio;

-- FASE 2: Segmentación y Hallazgos

-- 1. Impacto del Tráfico
SELECT 
    Road_traffic_density, 
    COUNT(ID) AS Total_Pedidos,
    ROUND(AVG("Time_taken(min)"), 2) AS Tiempo_Promedio
FROM delivery_limpio
GROUP BY Road_traffic_density
ORDER BY Tiempo_Promedio DESC;

-- 2. Impacto del Clima
SELECT 
    Weatherconditions,
    COUNT(ID) AS Total_Pedidos,
    ROUND(AVG("Time_taken(min)"), 2) AS Tiempo_Promedio
FROM delivery_limpio
GROUP BY Weatherconditions
ORDER BY Tiempo_Promedio DESC;

-- 3. Eficiencia por Zona (Ciudad)
SELECT 
    City, 
    COUNT(ID) AS Total_Pedidos, 
    ROUND(AVG("Time_taken(min)"), 2) AS Tiempo_Promedio
FROM delivery_limpio
GROUP BY City
ORDER BY Tiempo_Promedio DESC;

-- 4. Condición del Vehículo
SELECT 
    Vehicle_condition,
    COUNT(ID) AS Total_Pedidos,
    ROUND(AVG("Time_taken(min)"), 2) AS Tiempo_Promedio
FROM delivery_limpio
GROUP BY Vehicle_condition
ORDER BY Tiempo_Promedio DESC;

-- 5. Tipos de Pedido (Demanda)
SELECT 
    Type_of_order,
    COUNT(ID) AS Total_Pedidos,
    ROUND(AVG("Time_taken(min)"), 2) AS Tiempo_Promedio
FROM delivery_limpio
GROUP BY Type_of_order
ORDER BY Tiempo_Promedio DESC;