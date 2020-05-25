--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:3e506036255efc5982364d15ca5f4804:b5c361e88a13cb1127a79e669861c529:308e770b888b90821352c94f497cad7f$
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
            -- 1 - MM
            x=244,
            y=193,
            width=216,
            height=190,

        },
        {
            -- 2 - MM
            x=2,
            y=2,
            width=232,
            height=197,

        },
        {
            -- 3 - MM
            x=236,
            y=2,
            width=239,
            height=189,

        },
        {
            -- 4 - MM
            x=2,
            y=201,
            width=240,
            height=184,

        },
        {
            -- idle1
            x=477,
            y=2,
            width=167,
            height=184,

        },
        {
            -- idle2
            x=477,
            y=188,
            width=167,
            height=184,

        },
    },

    sheetContentWidth = 646,
    sheetContentHeight = 387
}

SheetInfo.frameIndex =
{

    ["1 - MM"] = 1,
    ["2 - MM"] = 2,
    ["3 - MM"] = 3,
    ["4 - MM"] = 4,
    ["idle1"] = 5,
    ["idle2"] = 6,
}

SheetInfo.sequences = {

    {name = "idle", start = 5, count = 2, time = 200},
    {name = "moneymaking", start = 1, count = 4, time = 200},

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
