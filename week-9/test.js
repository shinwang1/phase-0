// Setup
var collection = {
    2548: {
      album: "Slippery When Wet",
      artist: "Bon Jovi",
      tracks: [ 
        "Let It Rock", 
        "You Give Love a Bad Name" 
      ]
    },
    2468: {
      album: "1999",
      artist: "Prince",
      tracks: [ 
        "1999", 
        "Little Red Corvette" 
      ]
    },
    1245: {
      artist: "Robert Palmer",
      tracks: [ ]
    },
    5439: {
      album: "ABBA Gold"
    }
};
// Keep a copy of the collection for tests
var collectionCopy = JSON.parse(JSON.stringify(collection));

// Only change code below this line
function update(id, prop, value) {
  if (collection[id][prop] !== "" && collection[id] != "tracks"){
  	collection[id][prop] = value;
  }
  
  if (collection[id] == "tracks" && collection[id][prop] !== ""){
  	collection[id].tracks.push(value);
  }
 
  if (collection[id] === ""){
    delete collection[id][prop];
  }
  console.log(collection);
  return collection;
}

// Alter values below to test your code
//update(5439, "artist", "ABBA");
//update(2548, "artist", "");
update(1245, "tracks", "Addicted to Love");
//update(1245, "tracks", "SsSSS");
//update(2548, "tracks", "")
