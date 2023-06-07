# Simple script to remove photo error messages even though *reckless mode* is being used.

[Docs To markdown extension](https://workspace.google.com/marketplace/app/docs_to_markdown/700168918607)

## It consists of following parts:

1. Read the contents of the input file.
2. Filter out the lines that match the specified pattern using grep.
3. Save the filtered lines into a temporary file.
4. Overwrite the input file with the contents of the temporary file, effectively removing the lines that matched the pattern.

## Usage

``` ./dtm_eror_remover.sh /relative_path/file.md ```

