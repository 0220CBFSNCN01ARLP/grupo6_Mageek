const colorService = {
    setColorValue: function (colors) {
        let colorString = "";
        colors[0] ? (colorString += "1") : (colorString += "0");
        colors[1] ? (colorString += "1") : (colorString += "0");
        colors[2] ? (colorString += "1") : (colorString += "0");
        colors[3] ? (colorString += "1") : (colorString += "0");
        colors[4] ? (colorString += "1") : (colorString += "0");
        colors[5] ? (colorString += "1") : (colorString += "0");
        if (colorString.length == 6) {
            return colorString;
        } else {
            return null;
        }
    },
};

module.exports = colorService;
