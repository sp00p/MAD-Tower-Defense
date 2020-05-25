--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:0cfb045b513d739f6a72e89c136a1769:4cb48ceba6d923c02f812310520c2cd3:d233c3a65ee0fa44981c6613932cb6c0$
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
            -- 1explosion
            x=2,
            y=2,
            width=189,
            height=170,

        },
        {
            -- 2explosion
            x=193,
            y=2,
            width=189,
            height=170,

        },
        {
            -- 3explosion
            x=2,
            y=174,
            width=189,
            height=170,

        },
        {
            -- 4explosion
            x=193,
            y=174,
            width=189,
            height=170,

        },
    },

    sheetContentWidth = 384,
    sheetContentHeight = 346
}

SheetInfo.frameIndex =
{

    ["1explosion"] = 1,
    ["2explosion"] = 2,
    ["3explosion"] = 3,
    ["4explosion"] = 4,
}

SheetInfo.sequences = {

    {name = "explode", start = 1, count = 4, time = 500},

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
