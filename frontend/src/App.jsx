import { useEffect, useState } from "react";
import "./App.css";
import NavBar from "./components/NavBar";
import Planets from "./components/Planets";
import SolarSystem from "./components/SolarSystem";
import Information from "./components/Information";

function App() {
	const [planet, setPlanet] = useState('Sun');
	const [sunData, setSunData] = useState()

	useEffect(() => {
		const sunInfo = async () => {
			const res = await fetch("/api/stars/Sun").then(
				res => res.json 
			).then(data => setSunData(data.message))
			
			// (setSunData(data))
		}
		sunInfo()

	}, [])
	debugger
	if(sunData){
		debugger
		console.log(sunData)
	}



	return (
		<div className="App">
			{sunData &&
			<div className="main">
				<div className="solar-system-container">
					<SolarSystem planet={planet}/>
      				<NavBar setPlanet={setPlanet}/>
				</div>
				<Information planet={planet} />
			</div>
		}
		</div>
	);
}

export default App;
