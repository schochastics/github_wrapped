# source: https://rfortherestofus.com/2022/09/how-to-make-a-donut-chart-in-ggplot
donut_plot <- function(value, max_value, highlight_color, text_color) {
    # Wrangle data to get a data frame in the format we need it in to make our donut chart
    df <- tibble(x = 1, y = value) |>
        mutate(y_negative = max_value - y) |>
        pivot_longer(cols = -x)

    # Create a nicely formatted big number to go in the donut hole
    big_number_text_label <- value

    # Create our plot
    ggplot(
        df,
        aes(
            x = x,
            y = value,
            fill = name
        )
    ) +
        geom_col(show.legend = FALSE) +
        coord_polar(
            theta = "y",
            direction = -1
        ) +
        xlim(c(-2, 2)) +
        scale_fill_manual(values = c(highlight_color, "grey66")) +
        theme_void() +
        annotate("text",
            label = big_number_text_label,
            fontface = "bold",
            color = text_color,
            size = 12,
            x = -2,
            y = 0
        ) +
        theme(plot.title = element_text(color = text_color))
}
