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
    prepareColors: function (colors) {
        colors = colors.toString();
        while (colors.length < 6) {
            colors = "0" + colors;
        }
        let arrayColores = [
            colors[0],
            colors[1],
            colors[2],
            colors[3],
            colors[4],
            colors[5],
        ];
        console.log(arrayColores)
        return arrayColores;
    }
};

module.exports = colorService;
