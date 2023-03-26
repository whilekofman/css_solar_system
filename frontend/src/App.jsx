import { useState } from "react";
import "./App.css";
import NavBar from "./components/NavBar";
import Planets from "./components/Planets";
import SolarSystem from "./components/SolarSystem";
import Information from "./components/Information";

function App() {
	const [planet, setPlanet] = useState('Sun');

	return (
		<div className="App">
			<div className="main">
				<div className="solar-system-container">
					<SolarSystem planet={planet}/>
      				<NavBar setPlanet={setPlanet}/>
				</div>
				<Information planet={planet} />
			</div>
		</div>
	);
}

export default App;
