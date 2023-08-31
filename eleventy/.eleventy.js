const pluginNavigation = require("@11ty/eleventy-navigation");
const { format } = require('date-fns');
const fs = require("fs");

module.exports = eleventyConfig => {
    // Output directory: _site
    // Copy `img/` to `_site/img`
    eleventyConfig.addPassthroughCopy("img");
    // Copy `css/fonts/` to `_site/css/fonts`
    // Keeps the same directory structure.
    eleventyConfig.addPassthroughCopy("css/fonts");

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

    eleventyConfig.setBrowserSyncConfig({
        callbacks:{
            ready: function (err, browserSync) {
                const content_404 = fs.readFileSync('_site/404/index.html');

                browserSync.addMiddleware("*", (req, res) => {
                    res.writeHead(404, {"Content-Type": "text/html; charset=UTF-8"});
                    res.write(content_404);
                    res.end();
                });
            },
        },
        ui: false,
        ghostMode: false,
        open: true
    });

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

