# <a name="base85" id="base85">base85</a>

base85 - ASCII85 encode/decode data and print to standard output

<!-- grip --export README.md --title="base85 README" README.html -->
Copyright (C) 2017 Timothe Litt

## <a name="TableOfContents" id="TableOfContents">Table of Contents</a>
- <a href="#TableOfContents">Table of Contents</a>
- <a href="#Dependencies">Dependencies</a>
- <a href="#License">License</a>
- <a href="#Installation">Installation</a>
- <a href="#Usage">Usage</a>
- <a href="#BugReportsAndSuggestions">Bug reports and suggestions</a>

base85 is a command line utility that encodes and decodes ASCII85 (base85) data.

It is a Perl script.

## <a name="Dependencies" id="Dependencies">Dependencies</a>
The script uses the Perl library module `Convert::Ascii85`, available from CPAN.

## <a name="License" id="License">License</a>

Copyright (c) 2017 Timothe Litt

This is free software; the author disclaims all responsibility for its use, reliability and consequences.  The name of the author may not be used to endorse any product, but must be retained in the documentation and code.  Any modifications must be clearly documented and attributed, and are the responsibility of their author.

This notice and the copyright statements must be retained in all copies (complete or partial) of this software and documentation.  See LICENSE for details.

## <a name="Installation" id="Installation">Installation</a>
Download the latest `Vn.m-Release` tarball using the `tar.gz` link at [GitHub](https://github.com/tlhackque/base85/releases).

- Do **not** select the `.zip` file, as it does not preserve file permissions.
- Do **not** select any other tag format that may exists (e.g. `Xm.n` or `-Trial`, as these are unstable.
- Do **NOT** use the **Clone or download** link on the main `base85` page, as it provides a `.zip` file.

Unpack the `tar.gz`:  
    `tar -xzf base85V<n>.<m>-Release.tar.gz`

This will create a subdirectory named base85-&lt;version&gt;.

`cd` to that directory.
````
perl Makefile.PL
make
make install
````

## <a name="BugReportsAndSuggestions" id="BugReportsAndSuggestions" id="BugReportsAndSuggestions">Bug reports and suggestions</a>
Please raise bug reports or suggestions [on the issues tracker](http://github.com/tlhackque/base85/issues).

Always include `base85 version`, and `perl --version`.  
If there is any error or warning message, include the full terminal session.

Suggestions and/or praise are also welcome.
