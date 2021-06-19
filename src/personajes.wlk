import wollok.game.*

// en la implementación real, conviene tener un personaje por nivel
// los personajes probablemente tengan un comportamiendo más complejo que solamente
// imagen y posición

object personajeSimple {
	var property position = game.at(10,8)
	const property image = "player.png"	
	
	method up()
	{
		if (self.position().y() == game.height() -1)
			self.position(self.position().down(game.height() -1))
		else
			self.position(self.position().up(1))
	}
	
	
	method down()
	{
		if (self.position().y() == 0)
			self.position(self.position().up(game.height() -1))
		else
			self.position(self.position().down(1))
	}
	
	method left()
	{
		if (self.position().x() == 0)
			self.position(self.position().right(game.width() -1))
		else
			self.position(self.position().left(1))
	}
	
	method right()
	{
		if (self.position().x() == game.width() -1)
			self.position(self.position().left(game.width() -1))
		else
			self.position(self.position().right(1))
	}
	
}

