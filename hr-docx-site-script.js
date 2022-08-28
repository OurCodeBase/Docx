Things = [
  "danger.pub",
  "deca.pub",
  "hexa.pub",
  "version.pub"
];
// For loop in Javascript
for (let i = 0; i < Things.length; i++) {
  // Adding html elements
  const tag = document.createElement('a');
  const value = document.createTextNode(Things[i]);
  const broken = document.createElement('br');
  const line = document.createElement('hr');
  tag.appendChild(value);
  tag.title = Things[i];
  tag.href = "assets/"+Things[i];
  tag.class = "anchor_tag_a";
  document.getElementById("anchor_tags").prepend(line);
  document.getElementById("anchor_tags").prepend(tag);
}