class ApiService {

    constructor(rootUrl){
      this.api = rootUrl
    }
  
    getPhilosophers = () => fetch(this.api + "/philosophers").then(res => res.json())
  
    createPhilosopher = (philosopher) => fetch(this.api + "/philosophers", {
      method: 'POST', // or 'PUT'
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(philosopher),
    })
    .then(res => res.json())
  
    likePhilosopher = (id, likes) => fetch(`${this.api}/philosophers/${id}`, {
      method: 'PATCH', 
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({likes}), //varaiable equal to the key 
    })
    .then(res => res.json())
    
    
    DeletePhilosopher = (id) => fetch(`${this.api}/philosophers/${id}`, {
        method: 'PATCH', // or 'PUT'
        headers: {
          'Content-Type': 'application/json',
        },
       
      })
      .then(res => res.json())
   
  
  }