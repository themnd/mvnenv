# Manage multiple maven version

It will allow to switch easily between multiple maven versions.

Tested on Mac OS X (10.9.2)

## Installation

1. Check out mvnenv into `~/.mvnenv`.

    ~~~ sh
        $ git clone https://github.com/themnd/mvnenv.git ~/.mvnenv
    ~~~

2. Add `~/.mvnenv/bin` to your `$PATH`.

    ~~~ sh
        $ echo 'export PATH="~/.mvnenv/bin:$PATH"' >> ~/.bash_profile
    ~~~
    
    **JENV note**
    
    _if you use jenv (http://www.jenv.be) make sure the "export PATH" command in point 2 is placed *before* eval "$(jenv init -)"_

3. Add `mvnenv init` to your shell.

    ~~~ sh
        $ echo 'eval "$(mvnenv init)"' >> ~/.bash_profile
    ~~~
    
4. Start a new shell.

    ~~~ sh
        $ source ~/.bash_profile
    ~~~

5. Verify that mvnenv works.
 
    ~~~ sh
        $ mvnenv --version
    ~~~

6. Add the needed maven versions.

    ~~~ sh
        $ mvnenv add /path/to/maven2
        $ mvnenv add /path/to/maven3
    ~~~
    
    _for example mvnenv add /opt/local/share/java/maven2_

7. Configure which maven version to use.

  *Globally*
  
    ~~~ sh
        $ mvnenv global maven2
    ~~~
    
    *In this directory*
    
    ~~~ sh
        $ mvnenv local maven2
    ~~~
    
    *In the current shell*
    
    ~~~ sh
        $ mvnenv shell maven2
    ~~~

8. Verify that works.

    ~~~ sh
        $ mvn -version
    ~~~

## Commands Available

This is the list of available commands.
Normally when a command raise an error it will also set the exit code to 1.

### mvnenv --version

Display the current mvnenv version.

### mvnenv add

Add a maven installation to the list of available versions.

        $ mvnenv add /opt/local/share/java/maven3
        install /opt/local/share/java/maven3 as maven3
        do install 

in case that version was already added:


        $ mvnenv add /opt/local/share/java/maven3
        install /opt/local/share/java/maven3 as maven3
        already installed

### mvnenv current

Display the maven version that will be used.

        $ mvnenv current
        Using global version maven3

### mvnenv global

Without parameters will show you which version is used for global.

        $ mvnenv global
        Current global mvn version

        maven3

        Available:

        maven2
        maven3
        maven311

With the name of a version will set that version as the global one.

        $ mvnenv global maven2

### mvnenv init

This command is only used in the .bashrc | .bash_profile to setup the other commands, you must have this in your init script:

        eval "$(mvnenv init)"

### mvnenv local

This command allow you to set a specific version for the current directory, it does it by creating a file named *.mvnenv_version* in the current directory, this means that for subdirectories the global one will apply.

Without parameters will show you which version is used for local.

        $ mvnenv local
        Current local mvn version

        maven3

        Available:

        maven2
        maven3
        maven311

With the name of a version will set that version as the local one.

        $ mvnenv local maven2

You can remove the current local version by using --unset.

        $ mvnenv local --unset
        Removed local maven version

### mvnenv remove

Remove a maven version from the list of available versions.

        $ mvnenv remove maven3

### mvnenv shell

This command allow you to set a specific version for the current shell.

Without parameters will show you which version is used for the shell.

        $ mvnenv shell
        Current shell mvn version

        maven3

        Available:

        maven2
        maven3
        maven311

With the name of a version will set that version for the current shell.

        $ mvnenv shell maven2

You can remove the current shell version by using --unset.

        $ mvnenv shell --unset
        Removed shell maven version

### mvnenv versions

List the available maven versions that have been added with the *add* command.

        $ mvnenv versions
        maven2
        maven3
        maven311


## Thanks

Please feel free to submit [pull requests](https://github.com/themnd/mvnenv) and file bugs on the [issue
tracker](https://github.com/themnd/mvnenv/issues).

_Heavily inspired by https://github.com/gcuisinier/jenv_
