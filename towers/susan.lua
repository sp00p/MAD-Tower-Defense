--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:7a4af230884618826c1cc0e7dbbac53c:ec25c451e6fbb79e8753857433359076:38af8a129e767b91ca5b1094d969e5f4$
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
            x=437,
            y=2,
            width=105,
            height=116,

        },
        {
            -- idle2
            x=544,
            y=2,
            width=105,
            height=116,

        },
        {
            -- mm1
            x=149,
            y=2,
            width=135,
            height=119,

        },
        {
            -- mm2
            x=2,
            y=2,
            width=145,
            height=123,

        },
        {
            -- mm3
            x=286,
            y=2,
            width=149,
            height=118,

        },
        {
            -- mm4
            x=651,
            y=2,
            width=150,
            height=115,

        },
    },

    sheetContentWidth = 803,
    sheetContentHeight = 127
}

SheetInfo.frameIndex =
{

    ["idle1"] = 1,
    ["idle2"] = 2,
    ["mm1"] = 3,
    ["mm2"] = 4,
    ["mm3"] = 5,
    ["mm4"] = 6,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
