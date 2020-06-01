--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:b64c861b4137ad3e23c2ccb2a329dee0:2e6407fb58d7eb6c6497d2993843bb18:bfa88de5894008f8241ad8c3fc1da557$
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
            -- idle1
            x=2,
            y=809,
            width=156,
            height=188,

        },
        {
            -- idle2
            x=160,
            y=809,
            width=156,
            height=181,

        },
        {
            -- idle3
            x=170,
            y=595,
            width=154,
            height=187,

        },
        {
            -- idle4
            x=170,
            y=400,
            width=152,
            height=193,

        },
        {
            -- idle5
            x=170,
            y=2,
            width=152,
            height=200,

        },
        {
            -- idle6
            x=170,
            y=204,
            width=152,
            height=194,

        },
        {
            -- shoot1
            x=2,
            y=608,
            width=166,
            height=199,

        },
        {
            -- shoot2
            x=2,
            y=2,
            width=166,
            height=200,

        },
        {
            -- shoot3
            x=2,
            y=204,
            width=166,
            height=200,

        },
        {
            -- shoot4
            x=2,
            y=406,
            width=166,
            height=200,

        },
    },

    sheetContentWidth = 326,
    sheetContentHeight = 999
}

SheetInfo.frameIndex =
{

    ["idle1"] = 1,
    ["idle2"] = 2,
    ["idle3"] = 3,
    ["idle4"] = 4,
    ["idle5"] = 5,
    ["idle6"] = 6,
    ["shoot1"] = 7,
    ["shoot2"] = 8,
    ["shoot3"] = 9,
    ["shoot4"] = 10,
}

SheetInfo.sequences = {

    {name = "idle", start = 1, count = 6, time = 500},
    {name = "shoot", start = 7, count = 4, time = 500},

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
