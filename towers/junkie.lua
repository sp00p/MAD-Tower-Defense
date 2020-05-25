--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:c9696f49076eb627e14901403b7dd82f:bcea5dcea9cdc5ea376ec843427b18fb:bcc7c085d5cc4e66f33809d507ca6034$
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
            x=350,
            y=2,
            width=107,
            height=150,

        },
        {
            -- arrival2
            x=459,
            y=2,
            width=107,
            height=150,

        },
        {
            -- arrival3
            x=568,
            y=2,
            width=107,
            height=150,

        },
        {
            -- arrival4
            x=459,
            y=2,
            width=107,
            height=150,

        },
        {
            -- damaged1
            x=677,
            y=2,
            width=107,
            height=150,

        },
        {
            -- damaged2
            x=786,
            y=2,
            width=107,
            height=150,

        },
        {
            -- damaged3
            x=895,
            y=2,
            width=107,
            height=150,

        },
        {
            -- damaged4
            x=786,
            y=2,
            width=107,
            height=150,

        },
        {
            -- final1
            x=2,
            y=2,
            width=114,
            height=150,

        },
        {
            -- final2
            x=118,
            y=2,
            width=114,
            height=150,

        },
        {
            -- final3
            x=234,
            y=2,
            width=114,
            height=150,

        },
        {
            -- final4
            x=118,
            y=2,
            width=114,
            height=150,

        },
    },

    sheetContentWidth = 1004,
    sheetContentHeight = 154
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

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
