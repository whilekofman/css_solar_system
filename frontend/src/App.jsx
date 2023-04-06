import { useEffect, useState } from "react";
import "./App.css";
import NavBar from "./components/NavBar";
import SolarSystem from "./components/SolarSystem";
import Information from "./components/Information";

function App() {
	const [planet, setPlanet] = useState('Sun');
	const [sunData, setSunData] = useState();
	const [planetData, setPlanetData] = useState();
	const [selectedPlanetData, setSelectedPlanetData] = useState('Sun');
	
console.log(sunData)

	useEffect(() => {
		const fetchSunData = async () => {
		  try {
			const sunRes = await fetch('http://localhost:5000/api/stars/Sun');
			const sunData = await sunRes.json();
			// setSunData(Object.values(sunData.star));
			setSunData(sunData);

			const planetResponse = await fetch(
				"http://localhost:5000/api/planets"
			);
			const planetData = await planetResponse.json()
			setPlanetData(Object.values(planetData))
			
		  } catch (error) {
			console.error(error);
		  }
		};
		fetchSunData();
	  }, []);


	
	//   if (sunData) {
	// 	console.log(sunData);
	// 	console.log(planetData)
	//   }
	

	return (
		<div className="App">
			{sunData && (
				<div className="main">
					<div className="solar-system-container">
						<SolarSystem planet={planet} />
						<NavBar
							setPlanet={setPlanet}
							planetData={planetData}
							setSelectedPlanetData={setSelectedPlanetData}
						/>
					</div>
					{planetData && sunData && (
						<Information 
							planet={planet} 
							planetData={planetData} 
							selectedPlanetData={selectedPlanetData}
							sundData={sunData}
							/>
					)}
				</div>
			)}
		</div>
	);
}

export default App;
