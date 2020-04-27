--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:214974bab268f86c61613ce638c681e3:465d010e523e1f81bf6a062456ec1522:ff6ed9a539a848dae2d91c7b3e7c2dd2$
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
            -- explosion1
            x=2,
            y=2,
            width=118,
            height=106,

        },
        {
            -- explosion2
            x=122,
            y=2,
            width=118,
            height=106,

        },
        {
            -- explosion3
            x=2,
            y=110,
            width=118,
            height=106,

        },
        {
            -- explosion4
            x=122,
            y=110,
            width=118,
            height=106,

        },
    },

    sheetContentWidth = 242,
    sheetContentHeight = 218
}

SheetInfo.frameIndex =
{

    ["explosion1"] = 1,
    ["explosion2"] = 2,
    ["explosion3"] = 3,
    ["explosion4"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
