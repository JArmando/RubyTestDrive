# Ruby Test Drive #
## BlogApp ##
### Description ###
This project is my first attempt ever at programming using **Ruby** *AND* **Sinatra**. I managed create an app that can read from a **Json** file and parse its content to emulate a Post which gets served through an **API**


### Technologies used ###
- Ruby
- Sinatra
- Minitest
- Bundler
- AngularJs
- Grunt
- Bower
- Bootstrap

## Getting  Started ##
### (Preparing) The Code ###
You'll need [NodeJS.](http://nodejs.org) With it at hand you only need to clone
this [repository](https://bitbucket.org/MobiusLab/rubytestdrive) and follow my lead:

- Run these statements on the console to get **javascript** dependencies:
    
    ```
    $cd {path/to/clone/directory}
    ```
    
    ```
    $npm install
    ```
    
    ```
    $bower install
    ```

    ```
    $grunt
    ```
- Run these statements on the console to get **Ruby** ***gems*** dependencies:
    
    ```
    $cd {path/to/clone/directory}
    ```

    ```
    $gem install bundler
    ```

    ```
    $bundle install    
    ```
## Running the app ##
- Run these statements on the console to run the app:
    
    ```
    $cd {path/to/clone/directory}/BlogApp
    ```

    ```
    $ruby blog_api.rb
    ```

After this you should be able to open the site at your [localhost](localhost:4567)

## Running the tests ##

The tests are located at:

    /tests/specs

In order to run then simply open the console and run the following statements:
    
    $cd {path/to/clone/directory}/tests/specs/
    
    $ruby {test file name}.rb