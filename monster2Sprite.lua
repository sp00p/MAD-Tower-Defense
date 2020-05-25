--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:17b0fbf8a06a03411d042f0a38486ef0:4aa9984bcd18354344f573f467a295ff:11dc3e4dff043026a37f29c722a8b93f$
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
            width=210,
            height=196,

        },
        {
            -- Monster 2-2
            x=2,
            y=200,
            width=210,
            height=196,

        },
        {
            -- Monster 2-3
            x=2,
            y=398,
            width=210,
            height=196,

        },
        {
            -- Monster 2-4
            x=2,
            y=200,
            width=210,
            height=196,

        },
        {
            -- Monster 2-5
            x=2,
            y=2,
            width=210,
            height=196,

        },
    },

    sheetContentWidth = 214,
    sheetContentHeight = 596
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
