--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:cb02f5753fa993e230b7b861b5349207:b46f4e9152eaab2893a5f7a4d77cddec:31d0e46e50a91a7f2b84e281d1738e16$
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
            x=604,
            y=2,
            width=541,
            height=475,

        },
        {
            -- 2 - MM
            x=2,
            y=465,
            width=581,
            height=494,

        },
        {
            -- 3 - MM
            x=585,
            y=479,
            width=596,
            height=472,

        },
        {
            -- 4 - MM
            x=2,
            y=2,
            width=600,
            height=461,

        },
    },

    sheetContentWidth = 1183,
    sheetContentHeight = 961
}

SheetInfo.frameIndex =
{

    ["1 - MM"] = 1,
    ["2 - MM"] = 2,
    ["3 - MM"] = 3,
    ["4 - MM"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
