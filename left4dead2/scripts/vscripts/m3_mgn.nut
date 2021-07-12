/*
由求生的兔写出，烈锋修改
 */

function GiveMgn()
{
    local hplayer = null;
    local i;
    for(i=0;i<32;i++)
    {
        hplayer = Entities.FindByClassname(hplayer,"player");
        if(hplayer!=null&&!hplayer.IsDead()&&!hplayer.IsDying()&&hplayer.IsSurvivor())
        {
            hplayer.GiveItem("pistol_magnum");
            /*可以修改此处的物品*/
        }else if(hplayer==null)
        {
            break;
        }
    }
}
