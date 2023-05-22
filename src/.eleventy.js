module.exports = eleventyConfig => {
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
            layouts: "_includes/layouts",
            data: "_data",
            includes: "_includes"
        },
        templateFormats:["md", "liquid", "njk"],
        passthroughFileCopy: true
    }; 
};

