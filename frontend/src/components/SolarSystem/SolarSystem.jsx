const SolarSystem = ({ planet }) => {

    const planets = {
        mercury: [3031, 100, 98],
        venus: [7502, 130, 127],
        earth: [7917.5, 160, 157],
        mars: [4213.3, 200, 198],
        jupiter: [86881, 260, 247],
        saturn: [72367, 340, 330],
        uranus: [31518, 400, 394],
        neptune: [30599, 460, 455],
        pluto: [1467.8, 520, 518],
    };

    const sizeRatio = 200 / 865370;

    const planetName = planet ? planet : ''

    return (
        <div className="solar-system">
            <div className="sun">

            </div>
            {Object.keys(planets).map((body) => (
				<div 
                    className="planet-container"
                    style={{
                        height: `${planets[body][1]}px`,
                        width: `${planets[body][1]}px`,
                    }}
                >
                    <div 
                        className="orbit"
                        id={`${body}`}
                        style={{
                            height: `${planets[body][1]}px`,
                            width: `${planets[body][1]}px`,
                            opacity: `${
                                planetName.toLowerCase() === body ? '1' : '.2' 
                            }`
                        }}
                    >
                        <div
                            className="planet"
                            style={{
                                height: `${planets[body][0] * sizeRatio}px`,
                                width: `${planets[body][0] * sizeRatio}px`,
                                marginTop: `${planets[body][2]}px`,
                                marginLeft: `${planets[body][1]/2}px`,
                            }}
                        >
                        </div>
                    </div>
				</div>
			))}
        </div>
    )
}

export default SolarSystem;