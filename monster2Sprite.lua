--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:10ae561b89e5c7b35837bccc35d7a7a9:e17fb15206b764a1e2c80dba0dc2b24e:11dc3e4dff043026a37f29c722a8b93f$
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
            width=233,
            height=217,

        },
        {
            -- Monster 2-2
            x=2,
            y=221,
            width=233,
            height=217,

        },
        {
            -- Monster 2-3
            x=2,
            y=440,
            width=233,
            height=217,

        },
        {
            -- Monster 2-4
            x=2,
            y=221,
            width=233,
            height=217,

        },
        {
            -- Monster 2-5
            x=2,
            y=2,
            width=233,
            height=217,

        },
    },

    sheetContentWidth = 237,
    sheetContentHeight = 659
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
