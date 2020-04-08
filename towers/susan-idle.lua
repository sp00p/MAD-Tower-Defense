--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:7258ed541c5a17f17922da5332d756e9:3788bd112db2a3aefd7606bb8d7b1cbd:21c0d0af9b89bf9ee73412356fbb60fe$
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
            -- 1
            x=2,
            y=2,
            width=419,
            height=461,

        },
        {
            -- 2
            x=423,
            y=2,
            width=418,
            height=460,

        },
    },

    sheetContentWidth = 843,
    sheetContentHeight = 465
}

SheetInfo.frameIndex =
{

    ["1"] = 1,
    ["2"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
