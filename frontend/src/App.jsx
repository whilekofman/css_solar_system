import { useState } from "react";
import "./App.css";
import NavBar from "./components/NavBar";
import Planets from "./components/Planets";

function App() {
	const [planet, setPlanet] = useState(null);

	return (
		<div className="App">
			<div className="main">
				<div className="solar-system-container">
					<Planets planet={planet} setPlanet={setPlanet}/>
				</div>
      			<NavBar setPlanet={setPlanet}/>
			</div>
		</div>
	);
}

export default App;
