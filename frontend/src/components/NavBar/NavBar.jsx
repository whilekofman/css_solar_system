import { useState } from "react";

const NavBar = ({setPlanet, planetData}) => {

    const [selected, setSelected] = useState('Sun');
    const planets = ['Sun', 'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto']
    
    

    return (  
        <>
            <div className="nav-bar">
                {planets.map(planet => (
                    <div 
                        className="planet-btn" 
                        key={planet} 
                        onClick={() => 
                            {
                                setPlanet(planet);
                                setSelected(planet);
                            }
                        }
                        id={selected === planet ? 'selected' : ''}
                    >
                        <p>{planet}</p>
                    </div>
                ))}
            </div>

        </>
    );
}
 
export default NavBar;