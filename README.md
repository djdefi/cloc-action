# cloc-action
GitHub Action to Count Lines of Code with https://github.com/AlDanial/cloc

## Example workflow:

```yml
name: Count Lines of Code

# Controls when the action will run. Triggers the workflow on push or pull request 
# events but only for the main branch
on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  cloc:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
    # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
    - uses: actions/checkout@v3

    # Runs djdefi/cloc-action
    - name: Count Lines of Code (cloc)
      uses: djdefi/cloc-action@6
```

## Additional Options

The `cloc-action` allows you to provide additional options to customize your usage. These can be passed during the step execution in your workflow file. The options are passed to the underlying `cloc` tool.

Here is an example of how to provide additional options:

```yaml
- name: Count Lines of Code with additional options
  uses: djdefi/cloc-action@main
  with:
    options: --exclude-lang=YAML --md --report-file=cloc.md
```

In the example above:

`--exclude-lang=YAML` is used to exclude YAML files from the count.
`--md` is used to generate the output in markdown format.
`--report-file=cloc.md` is used to write the output to the `cloc.md` file.

These are just a few examples, other options are available based on your needs, some of which you can find in the [`cloc` documentation](https://github.com/AlDanial/cloc).

Note: Please provide the options without any quotes. Any options requiring quotes should be escaped inside a string. For example, `options: "--exclude-dir=path\ to\ folder"`

This level of customization lets you control how `cloc` works based on the specific needs of your project.
