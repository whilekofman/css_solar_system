import { useState } from "react";
import "./App.css";
import NavBar from "./components/NavBar";
import Planets from "./components/Planets";
import SolarSystem from "./components/SolarSystem";

function App() {
	const [planet, setPlanet] = useState(null);

	return (
		<div className="App">
			<div className="main">
				<div className="solar-system-container">
					<SolarSystem planet={planet}/>
      				<NavBar setPlanet={setPlanet}/>
				</div>
			</div>
		</div>
	);
}

export default App;
