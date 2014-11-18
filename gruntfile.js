module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    bower: {
      dev: {
        dest: 'BlogApp/Public/vendor',
        js_dest: 'BlogApp/Public/scripts/vendor',
        css_dest: 'BlogApp/Public/content/styles',
        options: {
          expand: false,
          keepExpandedHierarchy: false,
          packageSpecific: {
            bootstrap: {
              dest: 'BlogApp/Public/fonts',
              css_dest: 'BlogApp/Public/css/bootstrap',
              option: {
                expand:false
              }
            }
          }
        }
      }
    }
  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-bower');

  // Default task(s).
  grunt.registerTask('default', ['bower']);

};