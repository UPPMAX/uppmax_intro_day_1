#!/bin/env Rscript

t <- readr::read_csv("counts.csv")
t$total <- t$n_cam_on + t$n_cam_off

ggplot2::ggplot(t, ggplot2::aes(x = time, y = total)) + 
  ggplot2::geom_area(fill = "grey") + 
  ggplot2::geom_line(ggplot2::aes(x = time, y = n_cam_on), color = "green") +
  ggplot2::geom_point(ggplot2::aes(x = time, y = n_cam_on), color = "green") +
  ggplot2::geom_line(ggplot2::aes(x = time, y = n_cam_off), color = "red") +
  ggplot2::geom_point(ggplot2::aes(x = time, y = n_cam_off), color = "red") +
  ggplot2::scale_x_time() +
  ggplot2::labs(
    caption = paste0(
      "Green: camera on. Red: camera off. Shade: total.\n"
    )
  ) +
  ggplot2::theme(
    axis.text.x = ggplot2::element_text(
      angle = 90,
      vjust = 0.5,
      hjust = 1
    )
  )

# ggplot2::scale_x_time(labels = "%H:%M") +
  