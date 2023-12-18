# 🚀🚀🚀 GITHUB Wrapped 2023 🚀🚀🚀

Create a personal GitHub wrapped using Quarto Dashboards

![](schochastics.png)

## Setup

1. Create a [Github token](https://github.com/settings/tokens) (needs read:user access)
2. add it to `.Renviron` as GITHUB_TOKEN
3. Install a version of Quarto that allows to create dashboards (>1.4.0)
4. In `index.qmd`, change the `userid` parameter to your GitHub username.
5. `quarto render`

If you are missing a logo of a programming language, add a svg version to `img/logos`