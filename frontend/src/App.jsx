import { useEffect, useState } from "react";
import "./App.css";
import NavBar from "./components/NavBar";
import SolarSystem from "./components/SolarSystem";
import Information from "./components/Information";

function App() {
	const [planet, setPlanet] = useState('Sun');
	const [sunData, setSunData] = useState()
	
	useEffect(() => {
		const fetchSunData = async () => {
		  try {
			const res = await fetch('http://localhost:5000/api/stars/Sun');
			const data = await res.json();
			setSunData(data.star);
		  } catch (error) {
			console.error(error);
		  }
		};
		fetchSunData();
	  }, []);
	
	  if (sunData) {
		console.log(sunData);
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
