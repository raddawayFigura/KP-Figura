-- Auto generated script file --

--hide vanilla model
vanilla_model.PLAYER:setVisible(false)
vanilla_model.ARMOR:setVisible(false)

nameplate.ALL:setText("§bGhostFox")

local squapi = require("SquAPI")

leftTail = {
	models.model.root.Body.tail,
    models.model.root.Body.tail.seg3,
    models.model.root.Body.tail.seg3.seg4,
}

rightTail = {
	models.model.root.Body.tail2,
    models.model.root.Body.tail2.seg2,
    models.model.root.Body.tail2.seg2.seg5,
}

events.ENTITY_INIT:register(function ()
    particles:newParticle("minecraft:explosion", player:getPos())
    sounds:playSound("minecraft:block.large_amethyst_bud.break", player:getPos(),1,0.4)
    sounds:playSound("minecraft:block.amethyst_block.break", player:getPos(),1,0.6)
end)


squapi.tail:new(leftTail,
    nil,    --(15) idleXMovement
    nil,    --(5) idleYMovement
    nil,    --(1.2) idleXSpeed
    nil,    --(2) idleYSpeed
    1.5,    --(2) bendStrength
    nil,    --(0) velocityPush
    nil,    --(0) initialMovementOffset
    nil,    --(1) offsetBetweenSegments
    nil,    --(.005) stiffness
    nil,    --(.9) bounce
    nil,    --(90) flyingOffset
    nil,    --(-90) downLimit
    nil     --(45) upLimit
)

squapi.tail:new(rightTail,
    nil,    --(15) idleXMovement
    nil,    --(5) idleYMovement
    nil,    --(1.2) idleXSpeed
    nil,    --(2) idleYSpeed
    1.5,    --(2) bendStrength
    nil,    --(0) velocityPush
    nil,    --(0) initialMovementOffset
    nil,    --(1) offsetBetweenSegments
    nil,    --(.005) stiffness
    nil,    --(.9) bounce
    nil,    --(90) flyingOffset
    nil,    --(-90) downLimit
    nil     --(45) upLimit
)

squapi.ear:new(
    models.model.root.Head.bone3, --leftEar
    models.model.root.Head.bone, --(nil) rightEar
    nil, --(1) rangeMultiplier
    nil, --(false) horizontalEars
    1, --(2) bendStrength
    nil, --(true) doEarFlick
    nil, --(400) earFlickChance
    nil, --(0.1) earStiffness
    nil  --(0.8) earBounce
)

local gaze = require("Gaze")

local mainGaze = gaze:newGaze()

mainGaze:newAnim(
 animations.model.horizontal,
 animations.model.vertical
)

mainGaze:newBlink(animations.model.blink)