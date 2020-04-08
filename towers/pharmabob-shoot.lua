--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:b1af4c3bbdac53b7324d7ed844a23a8d:2cd6e3260c9986be3a2a833ad7563740:f7fbb7d7d4bd251ba88954b14a6c54cd$
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
            -- 1 - shoot
            x=2,
            y=2,
            width=499,
            height=599,

        },
        {
            -- 2 - shoot
            x=503,
            y=2,
            width=499,
            height=600,

        },
        {
            -- 3 - shoot
            x=2,
            y=603,
            width=499,
            height=600,

        },
        {
            -- 4 - shoot
            x=503,
            y=604,
            width=499,
            height=600,

        },
        {
            -- 5 -  shoot
            x=2,
            y=1206,
            width=500,
            height=600,

        },
    },

    sheetContentWidth = 1004,
    sheetContentHeight = 1808
}

SheetInfo.frameIndex =
{

    ["1 - shoot"] = 1,
    ["2 - shoot"] = 2,
    ["3 - shoot"] = 3,
    ["4 - shoot"] = 4,
    ["5 -  shoot"] = 5,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
