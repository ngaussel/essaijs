#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
monthpicker <- function(message, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    message = message
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'monthpicker',
    x,
    width = width,
    height = height,
    package = 'essaisigma',
    elementId = elementId
  )
}

#' Shiny bindings for monthpicker
#'
#' Output and render functions for using monthpicker within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a monthpicker
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#' @importFrom htmlwidgets shinyWidgetOutput shinyRenderWidget
#' @name monthpicker-shiny
#'
#' @export
monthpickerOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'monthpicker', width, height, package = 'essaisigma')
}

#' @rdname monthpicker-shiny
#' @export
rendermonthpicker <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, monthpickerOutput, env, quoted = TRUE)
}
