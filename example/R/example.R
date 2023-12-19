# @title: Test Script for OpenCPU API
# @author: Andreas Struffert-Froböse, Dominik Zubel, Jonas Starke, Kieran Galbraith, Lena Lac-Nhien Long, Philip Dyckhof # nolint
# @date: 2023-11-22
# @version: 1.0
# @description: This script is part of the project "Terra Classifier" of the course "Geosoftware 2" at the University of Münster. # nolint
# @encoding: UTF-8
# @language: en
# Path: example.R

# example.R

# Installieren und Laden der benötigten Bibliotheken
library(jsonlite)
library(opencpu)

# Definieren der Funktion, die die empfangenen Daten verarbeitet
#' Title my_function
#'
#' @param input a list
#'
#' @return mean
#' @export
#'
#' @examples my_function(input)
my_function <- function(input) {
  # Extrahieren der Daten aus dem JSON-Objekt
  x <- input$x

  # Berechnen des Durchschnitts
  mean_x <- mean(x)

  # Rückgabe des Ergebnisses als JSON-Objekt
  return(list(mean = mean_x))
}
