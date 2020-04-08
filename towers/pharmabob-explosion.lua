--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:7691224d52b4804861f0b1388125e208:3fc584d74a2fb418b7212513e35cd9f4:d0bd2dc42a9d3979dd93254f342a8501$
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
            -- 1 - explosion
            x=1427,
            y=2,
            width=30,
            height=27,

        },
        {
            -- 2 - explosion
            x=2,
            y=2,
            width=473,
            height=425,

        },
        {
            -- 3 - explosion
            x=477,
            y=2,
            width=473,
            height=425,

        },
        {
            -- 4 - explosion
            x=952,
            y=2,
            width=473,
            height=425,

        },
    },

    sheetContentWidth = 1459,
    sheetContentHeight = 429
}

SheetInfo.frameIndex =
{

    ["1 - explosion"] = 1,
    ["2 - explosion"] = 2,
    ["3 - explosion"] = 3,
    ["4 - explosion"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
