#!/bin/env Rscript

t <- readr::read_csv("learning_outcomes.csv", show_col_types = FALSE)

# Remove timestamp (first column) and other feedback (last column)
t <- t[ , c(-1, -ncol(t))]

questions <- stringr::str_remove(
  stringr::str_remove(
    names(t), 
    "Give you confidence levels of the following statements below: \\["),
  "\\]"
)

names(t) <- questions

t$i <- seq(1, nrow(t))

names(t)
t_tidy <- tidyr::pivot_longer(t, cols = starts_with("I", ignore.case = FALSE))
names(t_tidy)
names(t_tidy) <- c("i", "question", "answer")
t_tidy

n_individuals <- length(unique(t_tidy$i))
n_ratings <- length(t_tidy$answer[!is.na(t_tidy$answer)])

mean_confidence <- mean(t_tidy$answer[!is.na(t_tidy$answer)])

ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
  ggplot2::geom_histogram() + 
  ggplot2::labs(
    title = "All confidences",
    caption = paste0(
      "#individuals: ", n_individuals, ". ",
      "#ratings: ", n_ratings, ". ",
      "Mean confidence: ", round(mean_confidence, digits = 2)
    )
  )

ggplot2::ggsave(filename = "all_confidences.png", width = 4, height = 2)

ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
  ggplot2::geom_histogram() + 
  ggplot2::facet_grid(rows = "question", scales = "free_y") +
  ggplot2::theme(
    strip.text.y = ggplot2::element_text(angle = 0),
    legend.position = "none"
  ) +
  ggplot2::labs(
    title = "Confidences per question"
  )

ggplot2::ggsave(filename = "confidences_per_question_histogram.png", width = 6, height = 7)

ggplot2::ggplot(t_tidy, ggplot2::aes(x = answer)) +
  ggplot2::geom_density() + 
  ggplot2::facet_grid(rows = "question", scales = "free_y") +
  ggplot2::theme(
    strip.text.y = ggplot2::element_text(angle = 0),
    legend.position = "none"
  ) +
  ggplot2::labs(
    title = "Confidences per question"
  )

ggplot2::ggsave(filename = "confidences_per_question_density.png", width = 6, height = 7)

readr::write_csv(
  x = dplyr::tally(dplyr::group_by(t_tidy, question, answer)), 
  file = "tally.csv"
)

mean_confidence_per_question <- t_tidy |> dplyr::select_all() |>
  dplyr::group_by(question) |> dplyr::summarise(mean_confidence = mean(answer))


readr::write_csv(
  x = mean_confidence_per_question, 
  file = "mean_confidence_per_question.csv"
)
