--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:1ada0e8ed3271e979014b22c27d98925:cd84edc9610390ccec76d54519d5f445:4498a22a12e77edd2819f3c3ece84104$
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
            -- Monster 1-1
            x=2,
            y=2,
            width=182,
            height=196,

        },
        {
            -- Monster 1-2
            x=186,
            y=2,
            width=182,
            height=196,

        },
        {
            -- Monster 1-3
            x=370,
            y=2,
            width=182,
            height=196,

        },
        {
            -- Monster 1-4
            x=186,
            y=2,
            width=182,
            height=196,

        },
        {
            -- Monster 1-5
            x=2,
            y=2,
            width=182,
            height=196,

        },
    },

    sheetContentWidth = 554,
    sheetContentHeight = 200
}

SheetInfo.frameIndex =
{

    ["Monster 1-1"] = 1,
    ["Monster 1-2"] = 2,
    ["Monster 1-3"] = 3,
    ["Monster 1-4"] = 4,
    ["Monster 1-5"] = 5,
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
