--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:86a8531e5e125b210f5a7dac54a87130:ab897f7da885ff8540d836f2e89804ce:c9c542ed1aff36c784f3a3eb518c3223$
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
            -- Monster 3-1
            x=2,
            y=2,
            width=154,
            height=189,

        },
        {
            -- Monster 3-2
            x=158,
            y=2,
            width=167,
            height=188,

        },
        {
            -- Monster 3-3
            x=327,
            y=2,
            width=167,
            height=188,

        },
        {
            -- Monster 3-4
            x=158,
            y=2,
            width=167,
            height=188,

        },
        {
            -- Monster 3-5
            x=2,
            y=2,
            width=154,
            height=189,

        },
    },

    sheetContentWidth = 496,
    sheetContentHeight = 193
}

SheetInfo.frameIndex =
{

    ["Monster 3-1"] = 1,
    ["Monster 3-2"] = 2,
    ["Monster 3-3"] = 3,
    ["Monster 3-4"] = 4,
    ["Monster 3-5"] = 5,
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
