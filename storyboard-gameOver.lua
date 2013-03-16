
local storyboard = require( "storyboard" )
local storyboardfile = storyboard.newScene()

display.setStatusBar(display.HiddenStatusBar )



-- Called when the scene's view does not exist:
function storyboardfile:createScene( event )
	
	scene = self.view
end

-- Called immediately after scene has moved onscreen:
function storyboardfile:enterScene( event )
        local group = self.view
		local lastScene = storyboard.getPrevious()
	    if(lastScene) then 
	        storyboard.purgeScene( lastScene )
	    end
	  
        --      INSERT code here (e.g. start timers, load audio, start listeners, etc.)
end

-- Called when scene is about to move offscreen:
function storyboardfile:exitScene( event )
        local group = self.view

        --      INSERT code here (e.g. stop timers, remove listeners, unload sounds, etc.)

end


-- Called prior to the removal of scene's "view" (display group)
function storyboardfile:destroyScene( event )
        local group = self.view

        --      INSERT code here (e.g. remove listeners, widgets, save state, etc.)

end

---------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- "createScene" event is dispatched if scene's view does not exist
storyboardfile:addEventListener( "createScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
storyboardfile:addEventListener( "enterScene", scene )

-- "exitScene" event is dispatched before next scene's transition begins
storyboardfile:addEventListener( "exitScene", scene )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
storyboardfile:addEventListener( "destroyScene", scene )

---------------------------------------------------------------------------------

return storyboardfile
