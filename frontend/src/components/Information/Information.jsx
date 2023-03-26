const Information = ({ planet }) => {

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
    
    return (
        <div className="planet-information-container">
			<div className="planet-display-container">
                <div className='display-planet' id={`planet-${planet.toLowerCase()}`}>

                </div>
			</div>
			<div className="planet-text-container">
			</div>
		</div>
    )
}

export default Information;