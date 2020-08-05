// functions
const userCatcher = {
    // if no user is in cookies or session, return false
    recordUser: function (req, res, next) {
        // Validate content
        console.log('about to start with the catcher');
        console.log(`mw: checking session/cookies ${req.session.userId} - ${req.cookies.userId}`);
        if (req.session.userId == undefined && req.cookies.userId == undefined) {
            console.log("no cookies or session");
            return false;
        }
        let credentials; // assign credentials
        req.session.userId
        ? (credentials = req.session.userId)
        : (credentials = req.cookies.userId);
        if (!isNaN(credentials)) {
            console.log('true!');
            return true;
        }
        console.log('false :(');
        return false;
        }
    }

module.exports = userCatcher;
