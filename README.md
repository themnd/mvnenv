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

### mvnenv --version

### mvnenv add

### mvnenv current

### mvnenv global

### mvnenv init

### mvnenv local

### mvnenv remove

### mvnenv shell

### mvnenv versions



_Heavily inspired by https://github.com/gcuisinier/jenv_
