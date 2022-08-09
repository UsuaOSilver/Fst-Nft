const fs = require('fs');
const imageDir = fs.readdirSync("./assets");
imageDir.forEach(img => {
  const metadata = {
    name: `Premier ${img.split(".")[0]}`,
    description: "The First in the Limited Premier Collection",
    image: `ipfs://FOLDER_CID/${img.split(".")[0]}.png`,
    attributes: []
  }
  fs.writeFileSync(`./metadata/${img.split(".")[0]}`, JSON.stringify(metadata))
});