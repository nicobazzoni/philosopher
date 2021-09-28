const port = "http://localhost:3000/philosophers"
const port = "http://localhost:3000/branches"
const philosopherAdapter = new PhilosopherAdapter(port)
const branchAdapter = new BranchAdapter(port)
const philosopherslist = document.getElementById('philosophers')
const form = document.getElementById('philosopher-form')
const nameInput = document.getElementById('philosopher-name')
const ideaInput = document.getElementById('philosopher-idea')
const imageInput = document.getElementById('philosopher-image')

// const imageInput = document.getElementById('philosopher-image')


const branchNameInput = document.getElementById("branch-name")
const dropdown = document.getElementById('branch-dropdown')


form.addEventListener('submit', handleSubmit)

function handleSubmit(event){
  // always add a prevent default when handling a submit so that it waits for the user to click 
  event.preventDefault(),
  philosopherAdapter.philosopherCreation(),
  event.target.reset()
}


philosopherAdapter.getPhilosophers()
branchAdapter.getBranches()