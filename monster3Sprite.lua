--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:726a05757a8d040e371ec7f4c4b8c78d:bdb8265cc9a0fa4c44d51364bc6a0b51:c9c542ed1aff36c784f3a3eb518c3223$
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
            x=748,
            y=2,
            width=682,
            height=837,

        },
        {
            -- Monster 3-2
            x=2,
            y=2,
            width=744,
            height=837,

        },
        {
            -- Monster 3-3
            x=2,
            y=841,
            width=744,
            height=837,

        },
        {
            -- Monster 3-4
            x=2,
            y=2,
            width=744,
            height=837,

        },
        {
            -- Monster 3-5
            x=748,
            y=2,
            width=682,
            height=837,

        },
    },

    sheetContentWidth = 1432,
    sheetContentHeight = 1680
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
