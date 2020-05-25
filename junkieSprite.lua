--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:96ddf97b9171356828540da89889449f:640fab5c370aa584b9c06e75a3e8e6fc:01c40b2cccdf5080625d5db3a95515df$
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
            -- arrival1
            x=473,
            y=2,
            width=143,
            height=200,

        },
        {
            -- arrival2
            x=618,
            y=2,
            width=143,
            height=200,

        },
        {
            -- arrival3
            x=763,
            y=2,
            width=143,
            height=200,

        },
        {
            -- arrival4
            x=618,
            y=2,
            width=143,
            height=200,

        },
        {
            -- damaged1
            x=908,
            y=2,
            width=143,
            height=200,

        },
        {
            -- damaged2
            x=1053,
            y=2,
            width=143,
            height=200,

        },
        {
            -- damaged3
            x=1198,
            y=2,
            width=143,
            height=200,

        },
        {
            -- damaged4
            x=1053,
            y=2,
            width=143,
            height=200,

        },
        {
            -- final1
            x=2,
            y=2,
            width=155,
            height=200,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 157,
            sourceHeight = 200
        },
        {
            -- final2
            x=159,
            y=2,
            width=155,
            height=200,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 157,
            sourceHeight = 200
        },
        {
            -- final3
            x=316,
            y=2,
            width=155,
            height=200,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 157,
            sourceHeight = 200
        },
        {
            -- final4
            x=159,
            y=2,
            width=155,
            height=200,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 157,
            sourceHeight = 200
        },
    },

    sheetContentWidth = 1343,
    sheetContentHeight = 204
}

SheetInfo.frameIndex =
{

    ["arrival1"] = 1,
    ["arrival2"] = 2,
    ["arrival3"] = 3,
    ["arrival4"] = 4,
    ["damaged1"] = 5,
    ["damaged2"] = 6,
    ["damaged3"] = 7,
    ["damaged4"] = 8,
    ["final1"] = 9,
    ["final2"] = 10,
    ["final3"] = 11,
    ["final4"] = 12,
}

SheetInfo.sequences = {

    {name = "arrival", start = 1, count = 4, time = 500},
    {name = "damaged", start = 5, count = 8, time = 500},
    {name = "final", start = 9, count = 12, time = 500},

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
