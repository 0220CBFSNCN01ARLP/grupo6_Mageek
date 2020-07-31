const express = require("express");
const createError = require("http-errors");
const path = require("path");
const cookieParser = require("cookie-parser");
const logger = require("morgan");
const bodyParser = require("body-parser");
const session = require("express-session");
const methodOverride = require("method-override");
const secret = "Mageek secret code";
const cors = require("cors");

var app = express();

// view engine setup
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");

app.use(cors("*"));
app.use(methodOverride("_method"));
app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(
    session({
        secret: secret,
        name: "mageek_user_cookie",
        resave: false,
        saveUninitialized: false,
        cookie: {
            path: "/",
            httpOnly: false,
            maxAge: 24 * 60 * 60 * 1000,
        },
    })
);
app.use(cookieParser(secret));
app.use(express.static(path.join(__dirname, "public")));

// Router
const indexRouter = require("./routes/index");

// Routes
app.use("/", indexRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
    next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
    // set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = req.app.get("env") === "development" ? err : {};

    // render the error page
    res.status(err.status || 500);
    res.render("error");
});

module.exports = app;