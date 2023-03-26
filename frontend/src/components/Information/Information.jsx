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

    const text = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sem viverra aliquet eget sit amet tellus cras adipiscing. In hac habitasse platea dictumst. Porta lorem mollis aliquam ut porttitor. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque convallis. At imperdiet dui accumsan sit amet. Consequat id porta nibh venenatis cras sed. Ultrices dui sapien eget mi. Massa massa ultricies mi quis hendrerit. Risus sed vulputate odio ut enim blandit. Tellus mauris a diam maecenas sed enim ut sem viverra. Leo urna molestie at elementum eu facilisis sed odio. Tristique sollicitudin nibh sit amet commodo. Sagittis purus sit amet volutpat consequat. Metus vulputate eu scelerisque felis imperdiet proin fermentum leo. Viverra accumsan in nisl nisi scelerisque. Nibh nisl condimentum id venenatis a condimentum. Maecenas pharetra convallis posuere morbi leo. Cursus euismod quis viverra nibh cras pulvinar mattis.Amet venenatis urna cursus eget nunc scelerisque viverra. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Ante in nibh mauris cursus mattis molestie. Dui faucibus in ornare quam viverra orci sagittis eu. Rhoncus dolor purus non enim. Iaculis at erat pellentesque adipiscing. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum. Rhoncus mattis rhoncus urna neque viverra. Adipiscing enim eu turpis egestas pretium. Faucibus nisl tincidunt eget nullam non nisi.'

    return (
        <div className="planet-information-container">
			<div className="planet-display-container">
                <div className='display-planet' id={`planet-${planet.toLowerCase()}`}>

                </div>
			</div>
			<div className="planet-text-container">
                {text}
			</div>
		</div>
    )
}

export default Information;