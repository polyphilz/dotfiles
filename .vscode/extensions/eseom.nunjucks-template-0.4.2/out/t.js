const prettydiff = require("prettydiff");
const source = `<div style="qlkwejrlkqwjerlkqwjrlj leqjr lwkejrq lwkejr qlwkejrq lwkejr qwlekrjq wlekrj " class="lkqjwelrkqjwelkr jqwlekrj qlwkejr qlwkejr qlwkejr qlwkjr qwlkrj qwlkrej "></div>`;
const prettyDiffWrapper = () => {
    const indent_size = 2;
    const inchar = " ";
    console.log(prettydiff.options);
    prettydiff.options = Object.assign({}, prettydiff.options, { source, lang: "twig", mode: "beautify", indent_size,
        inchar, wrap: 80, jekyll: true });
    return prettydiff();
};
console.log(prettyDiffWrapper());
//# sourceMappingURL=t.js.map