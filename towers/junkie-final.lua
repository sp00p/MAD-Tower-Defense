--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:8627bb29b081f8a19337686aaf5a26c6:861d7618d4f42b18422c626872d24d2f:19e7742e74c22643d2591db9c7ff239a$
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
            -- 1 - final
            x=2,
            y=2,
            width=456,
            height=599,

        },
        {
            -- 2 - final
            x=2,
            y=603,
            width=456,
            height=599,

        },
        {
            -- 3 - final
            x=2,
            y=1204,
            width=456,
            height=599,

        },
        {
            -- 4 - final
            x=2,
            y=603,
            width=456,
            height=599,

        },
    },

    sheetContentWidth = 460,
    sheetContentHeight = 1805
}

SheetInfo.frameIndex =
{

    ["1 - final"] = 1,
    ["2 - final"] = 2,
    ["3 - final"] = 3,
    ["4 - final"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
