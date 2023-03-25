import { useState } from "react";

import "./App.css";
import Planets from "./components/Planets";

function App() {
	const [count, setCount] = useState(0);

	return (
		<div className="App">
      <Planets />
		</div>
	);
}

export default App;
