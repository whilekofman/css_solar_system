import { useState } from "react";

const NavBar = ({setPlanet, planetData}) => {

    const [selected, setSelected] = useState('Sun');

    const planets = ['Sun', 'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto']
    
    return (  
        <>
            
            <div className="nav-bar">
                {planetData ? 
                    ['Sun', ...planetData].map(planet => (
                    <div 
                        className="planet-btn" 
                        key={planet.id || "Sun" } 
                        onClick={() => 
                            {
                                setPlanet(planet.name || 'Sun');
                                setSelected(planet);
                            }
                        }
                        id={selected === planet ? 'selected' : ''}
                    >
                        <p>{planet.name ? planet.name : "Sun"}</p>
                    </div>
                )) :
                <p>Loading SolarSystem</p>
            }
            </div>

        </>
    );
}
 
export default NavBar;