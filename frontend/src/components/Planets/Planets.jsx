const Planets = ({planet}) => {
    const diameters = {
        sun: 865370,
        mercury: 3031,
        venus: 7502,
        earth: 7917.5,
        mars: 4213.3,
        jupiter: 86881,
        saturn: 72367,
        uranus: 31518,
        neptune: 30599,
        pluto: 1467.8,
    };
    console.log(planet)

    const sizeRatio = 200 / diameters.sun;

	return !planet ? (
		<div className="planets">
			{Object.keys(diameters).map((heavenlyBody) => (
				<div className="heavenly-body">
					<div
						className={`planet ${heavenlyBody}`}
						style={{
							height: `${diameters[heavenlyBody] * sizeRatio}px`,
							width: `${diameters[heavenlyBody] * sizeRatio}px`,
						}}
					></div>
					{heavenlyBody}
				</div>
			))}
		</div>
	) : (
		<div className="single-planet">
			<div className="close">X</div>

			<div className="heavenly-body">
				<div
					className={`planet ${planet}`}
					style={{
						height: `${diameters[planet] * sizeRatio}px`,
						width: `${diameters[planet] * sizeRatio}px`,
					}}
				></div>
				{planet}
			</div>
		</div>
	);
};

export default Planets;
