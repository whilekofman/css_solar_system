import { useState } from "react";
import "./App.css";
import NavBar from "./components/NavBar";
import Planets from "./components/Planets";

function App() {
	const [planet, setPlanet] = useState(null);

  console.log(planet)
	return (
		<div className="App">
      <Planets planet={planet}/>
      <NavBar setPlanet={setPlanet}/>
		</div>
	);
}

export default App;
