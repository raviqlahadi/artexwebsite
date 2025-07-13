module.exports = function (eleventyConfig) {
    eleventyConfig.addPassthroughCopy("assets");
    return {
      dir: {
        input: ".",         // Your project root
        includes: "_includes",
        data: "_data",
        output: "_site"
      },
      markdownTemplateEngine: "njk",
      htmlTemplateEngine: "njk",
      dataTemplateEngine: "njk",
      templateFormats: ["njk", "html", "md"]
    };
  };