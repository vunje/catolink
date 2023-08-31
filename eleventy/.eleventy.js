const pluginNavigation = require("@11ty/eleventy-navigation");
const { format } = require('date-fns');

module.exports = eleventyConfig => {
    // Add plugins
    eleventyConfig.addPlugin(pluginNavigation);

    eleventyConfig.addFilter("readableDate", dateObj => {
        const postdate = format (dateObj, 'do MMMM, yyyy');
        return postdate;
    });
    eleventyConfig.addFilter('htmlDateString', dateObj => {
        const htmlDate =  format(dateObj, 'yyyy-LL-dd');
        return htmlDate;
    });

    // Output directory: _site
    // Copy `img/` to `_site/img`
    eleventyConfig.addPassthroughCopy("img");
    // Copy `css/fonts/` to `_site/css/fonts`
    // Keeps the same directory structure.
    eleventyConfig.addPassthroughCopy("css/fonts");

    return {
        dir: {
            input: "src",
            output: "_site",
            layouts: "../_includes/layouts",
            data: "../_data",
            includes: "../_includes"
        },
        templateFormats:["md", "liquid", "njk"],
        passthroughFileCopy: true
    }; 
};

