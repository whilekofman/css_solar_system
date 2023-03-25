const NavBar = ({setPlanet}) => {

    const planets = ['Sun', 'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto']
    
    return (  
        <>
            <div className="nav-bar">
                {planets.map(planet => (
                    <div className="planet-btn" key={planet} onClick={() => setPlanet(planet)}>
                        <p>{planet}</p>
                    </div>
                ))}
            </div>

        </>
    );
}
 
export default NavBar;