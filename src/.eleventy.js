module.exports = eleventyConfig => {
    return {
        dir: {
            input: '.',
            includes: '_includes',
            data: '_data',
            output: '_site'
        }
    }; 
};
