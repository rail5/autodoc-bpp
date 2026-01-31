# autodoc-bpp

Automatic documentation generator for Bash++

## Overview

Autodoc is made to work a bit like Doxygen for Bash++ code. Although it's not nearly as sophisticated as anything like Doxygen.

At the very least, it will output Markdown or XML documentation after collecting all of your:

 - Classes
 - Data Members
 - Methods
 - Method Parameters

And your "Autodoc Comments" that you put in your Bash++ source code.

## Usage

```bash
autodoc-bpp -d <source_directory> -o <output_directory> [-m md|xml]
```

 - `-d <source_directory>`: The directory containing your Bash++ source code files
 - `-o <output_directory>`: The directory where the generated documentation files will be saved
 - `-m md|xml`: (Optional) The output format for the documentation. Can be either `md` for Markdown or `xml` for XML.

## Autodoc Comments

An Autodoc comment is:

 - A line that contains **only** a comment (i.e., the comment is not trailing code)
 - And whose comment begins with `##` (two hash symbols)

Or a contiguous (uninterrupted) block of such lines.

### Example

```bash
## A sample class for the purposes of illustration
@class MyClass {
	## A private data member, uninitialized by default
	@private dataMember

	## A public method that does something
	## @param arg1 The first argument
	## @param arg2 The second argument
	## @returns 0 if successful, non-zero otherwise
	## @outputs Some output to stdout
	@public @method doSomething arg1 arg2 {
	}
}
```

### Supported Commands Inside Autodoc Comments

 - `@param <name> <description>`: Documents a method parameter
 - `@returns <description>`: Documents the exit status codes a method may return
 - `@outputs <description>`: Documents what the method outputs to stdout

`@returns` and `@outputs` may also be written as `@return` and `@output`, respectively.

&nbsp;

Absolutely no autodoc comments are required. If you don't put any, autodoc will still generate documentation for your classes, methods, and data members, just without any descriptions.
