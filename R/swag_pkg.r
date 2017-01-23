swag_pkg <- function(g) {

  message("  - generating package R file")

  g$RSWAG$PKGR <- paste(g$RSWAG$pkg_dir, "R", sprintf("%s-package.r", g$RSWAG$pkg_name), sep="/")

  # if this is a single string it may be interpreted as actual
  # documentation by Roxygen
  pkgr <- paste0(c("#' %s",
            "#'",
            "#' %s",
            "#'",
            "#' @name %s",
            "#' @docType package",
            "#' @author Jane Doe",
            "#' @import httr",
            "NULL"), collapse = "\n")

  writeLines(sprintf(pkgr, g$info$title, g$info$description, g$RSWAG$pkg_name),
             g$RSWAG$PKGR)

  invisible(g)

}
