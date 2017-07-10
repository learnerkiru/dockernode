let exp = require("express");
let app = exp();

const port = 2020;
app.use(exp.static(__dirname + "/public"));
app.listen(port, () => {
    console.log(`My service is  Started at Port ${port}`)
})