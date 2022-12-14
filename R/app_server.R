#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  
  shinyjs::js$disableTabItem("epimutations")
  shinyjs::js$disableTab("Preprocessing")
  shinyjs::js$disableTab("epi_panel")
  shinyjs::js$disableTab("Visualization")

  # Your application server logic
  mod_data_selection_server("dataSelection_module")
  mod_epimut_server("epimutations_panel_module")
  mod_epimut_viz_server("epi_visualization_module")
  mod_pre_process_server("preprocessing_panel_module")
}
