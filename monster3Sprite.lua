--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:2a4652c2d50a4d8e49559d992e59ee85:0ffbc6d98a368774aab403b380320022:c9c542ed1aff36c784f3a3eb518c3223$
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
            width=171,
            height=210,

        },
        {
            -- Monster 3-2
            x=175,
            y=2,
            width=186,
            height=209,

        },
        {
            -- Monster 3-3
            x=363,
            y=2,
            width=186,
            height=209,

        },
        {
            -- Monster 3-4
            x=175,
            y=2,
            width=186,
            height=209,

        },
        {
            -- Monster 3-5
            x=2,
            y=2,
            width=171,
            height=210,

        },
    },

    sheetContentWidth = 551,
    sheetContentHeight = 214
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
