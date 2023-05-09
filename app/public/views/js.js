const select = document.querySelector("#category");
let id;
const body = document.body;
const container = document.querySelector(".con");

console.log(body);

select.addEventListener("change", async (e) => {
  let firstNode;
  if (container.children.length > 1) {
    firstNode = container.children[0];
    console.log(firstNode);
    container.innerHTML = "";
    container.appendChild(firstNode);
  }
  const sele = document.createElement("select");
  sele.id = "category";
  const label = document.createElement("label");
  label.innerText = "select a subcategory";
  container.appendChild(label);
  sele.onchange = onChange;
  id = e.target.value;
  let res = await fetch(`http://localhost:2000/categories/${id}`);
  let data = await res.json();
  console.log(data);
  data.forEach((sub) => {
    let option = document.createElement("option");
    option.value = sub.id;
    option.text = sub.name;
    sele.appendChild(option);
  });
  container.appendChild(sele);
});

const onChange = async (e) => {
  id = e.target.value;
  const sele = document.createElement("select");
  sele.id = "category";
  const label = document.createElement("label");
  label.innerText = "select a subcategory";
  container.appendChild(label);
  sele.onchange = onChange;
  let res = await fetch(`http://localhost:2000/categories/${id}`);
  let data = await res.json();

  data.forEach((sub) => {
    let option = document.createElement("option");
    option.value = sub.id;
    option.text = sub.name;
    sele.appendChild(option);
  });
  container.appendChild(sele);
};
