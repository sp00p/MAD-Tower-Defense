--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:de82eae7a411f9749f42f3f892106bd4:add94641f3b7b5cc9486a3116cbb29a8:a0ef4f58acc0838cb1086a5acf4261e3$
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
            -- Monster 5-1
            x=2,
            y=2,
            width=806,
            height=806,

        },
        {
            -- Monster 5-2
            x=2,
            y=810,
            width=868,
            height=775,

        },
        {
            -- Monster 5-3
            x=810,
            y=2,
            width=806,
            height=806,

        },
        {
            -- Monster 5-4
            x=2,
            y=810,
            width=868,
            height=775,

        },
        {
            -- Monster 5-5
            x=2,
            y=2,
            width=806,
            height=806,

        },
    },

    sheetContentWidth = 1618,
    sheetContentHeight = 1587
}

SheetInfo.frameIndex =
{

    ["Monster 5-1"] = 1,
    ["Monster 5-2"] = 2,
    ["Monster 5-3"] = 3,
    ["Monster 5-4"] = 4,
    ["Monster 5-5"] = 5,
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
