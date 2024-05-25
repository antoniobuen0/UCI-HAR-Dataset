# Cargar las bibliotecas necesarias
library(dplyr)
library(rstudioapi)

# Obtener la ruta del script actual y establecer el directorio de trabajo
script_path <- dirname(rstudioapi::getSourceEditorContext()$path)
setwd(script_path)

# Cargar las etiquetas de actividad y características
activity_labels <- read.table("activity_labels.txt", col.names = c("activityId", "activityType"))
features <- read.table("features.txt", col.names = c("featureId", "featureName"))

# Extraer solo las mediciones de la media y desviación estándar para cada medición
features_mean_std <- grep("mean\\(\\)|std\\(\\)", features$featureName)
selected_features <- features[features_mean_std, ]

# Cargar los datos de entrenamiento
subject_train <- read.table("train/subject_train.txt", col.names = "subjectId")
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt", col.names = "activityId")

# Cargar los datos de prueba
subject_test <- read.table("test/subject_test.txt", col.names = "subjectId")
x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt", col.names = "activityId")

# Subconjunto de los datos por características seleccionadas
x_train <- x_train[, features_mean_std]
x_test <- x_test[, features_mean_std]

# Nombrar las columnas
colnames(x_train) <- selected_features$featureName
colnames(x_test) <- selected_features$featureName

# Combinar los conjuntos de entrenamiento y prueba para crear un único conjunto de datos
train_data <- cbind(subject_train, y_train, x_train)
test_data <- cbind(subject_test, y_test, x_test)
all_data <- rbind(train_data, test_data)

# Usar nombres descriptivos de actividades para nombrar las actividades en el conjunto de datos
all_data <- merge(all_data, activity_labels, by = "activityId")

# Etiquetar adecuadamente el conjunto de datos con nombres descriptivos de las variables
colnames(all_data) <- gsub("^t", "time", colnames(all_data))
colnames(all_data) <- gsub("^f", "frequency", colnames(all_data))
colnames(all_data) <- gsub("Acc", "Accelerometer", colnames(all_data))
colnames(all_data) <- gsub("Gyro", "Gyroscope", colnames(all_data))
colnames(all_data) <- gsub("Mag", "Magnitude", colnames(all_data))
colnames(all_data) <- gsub("BodyBody", "Body", colnames(all_data))

# Crear un segundo conjunto de datos independiente y ordenado con la media de cada variable para cada actividad y cada sujeto
tidy_data <- all_data %>%
  select(subjectId, activityId, activityType, everything()) %>%
  group_by(subjectId, activityId, activityType) %>%
  summarise_all(list(mean = mean))

# Escribir el conjunto de datos ordenado en un archivo de texto
write.table(tidy_data, "tidy_data.txt", row.names = FALSE)

