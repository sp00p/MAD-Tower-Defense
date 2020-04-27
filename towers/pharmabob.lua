--
-- created with TexturePacker - https://www.codeandweb.com/texturepacker
--
-- $TexturePacker:SmartUpdate:ed7080e8375c15aac5a87601c449bf9f:0180588186c0918957c081ce210daf1c:6d9b59b8df23e921962a0d27a36a0d67$
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
            y=306,
            width=117,
            height=141,

        },
        {
            -- idle2
            x=121,
            y=306,
            width=117,
            height=135,

        },
        {
            -- idle3
            x=240,
            y=306,
            width=116,
            height=141,

        },
        {
            -- idle4
            x=372,
            y=302,
            width=114,
            height=145,

        },
        {
            -- idle5
            x=256,
            y=154,
            width=114,
            height=150,

        },
        {
            -- idle6
            x=372,
            y=154,
            width=114,
            height=146,

        },
        {
            -- shoot1
            x=2,
            y=2,
            width=125,
            height=150,

        },
        {
            -- shoot2
            x=129,
            y=2,
            width=125,
            height=150,

        },
        {
            -- shoot3
            x=256,
            y=2,
            width=125,
            height=150,

        },
        {
            -- shoot4
            x=2,
            y=154,
            width=125,
            height=150,

        },
        {
            -- shoot5
            x=129,
            y=154,
            width=125,
            height=150,

        },
    },

    sheetContentWidth = 488,
    sheetContentHeight = 449
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
    ["shoot5"] = 11,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
