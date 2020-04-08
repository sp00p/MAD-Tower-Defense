--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:78a65f589de306bfc1c31efb4ee69c3e:28afcddf05aa517e2b9f655b104464cf:11dc3e4dff043026a37f29c722a8b93f$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- Monster 2-1
            x=2,
            y=2,
            width=930,
            height=868,

        },
        {
            -- Monster 2-2
            x=934,
            y=2,
            width=930,
            height=868,

        },
        {
            -- Monster 2-3
            x=2,
            y=872,
            width=930,
            height=868,

        },
        {
            -- Monster 2-4
            x=934,
            y=2,
            width=930,
            height=868,

        },
        {
            -- Monster 2-5
            x=2,
            y=2,
            width=930,
            height=868,

        },
    },

    sheetContentWidth = 1866,
    sheetContentHeight = 1742
}

SheetInfo.frameIndex =
{

    ["Monster 2-1"] = 1,
    ["Monster 2-2"] = 2,
    ["Monster 2-3"] = 3,
    ["Monster 2-4"] = 4,
    ["Monster 2-5"] = 5,
}

SheetInfo.sequences = {

    {name = "walking", start = 1, count = 5, time = 500},

}

function SheetInfo:getSequences()
    return self.sequences
end

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
