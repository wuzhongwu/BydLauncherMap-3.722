.class public Lcom/autosdk/common/UtilDayStatusNotifyManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/gbl/map/observer/IDayStatusSystemUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autosdk/common/UtilDayStatusNotifyManager;->initDayNight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/autosdk/common/UtilDayStatusNotifyManager;


# direct methods
.method public constructor <init>(Lcom/autosdk/common/UtilDayStatusNotifyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/common/UtilDayStatusNotifyManager$2;->this$0:Lcom/autosdk/common/UtilDayStatusNotifyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTime(Lcom/autonavi/gbl/util/model/DateTime;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/autonavi/gbl/util/TimeUtil;->getLocalTime2()Lcom/autonavi/gbl/util/model/DateTime;

    move-result-object v1

    invoke-static {}, Lcom/byd/mockgps/MockTime;->ofDayMs()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_mock_off

    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    long-to-int v5, v5

    const/16 v6, 0xe10

    div-int v6, v5, v6

    const/16 v7, 0x3c

    div-int v7, v5, v7

    rem-int/lit8 v7, v7, 0x3c

    rem-int/lit8 v3, v5, 0x3c

    new-instance v4, Lcom/autonavi/gbl/util/model/Time;

    invoke-direct {v4, v6, v7, v3, v0}, Lcom/autonavi/gbl/util/model/Time;-><init>(BBBB)V

    iput-object v4, v1, Lcom/autonavi/gbl/util/model/DateTime;->time:Lcom/autonavi/gbl/util/model/Time;

    iget-object v6, v1, Lcom/autonavi/gbl/util/model/DateTime;->date:Lcom/autonavi/gbl/util/model/Date;

    iput-object v6, p1, Lcom/autonavi/gbl/util/model/DateTime;->date:Lcom/autonavi/gbl/util/model/Date;

    iput-object v4, p1, Lcom/autonavi/gbl/util/model/DateTime;->time:Lcom/autonavi/gbl/util/model/Time;

    const/4 v1, 0x1

    return v1

    :cond_mock_off
    sget-boolean v1, Lcom/autosdk/bussiness/settings/SettingConstant;->is3DMap:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/autonavi/gbl/util/TimeUtil;->getLocalTime2()Lcom/autonavi/gbl/util/model/DateTime;

    move-result-object v1

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v2

    invoke-virtual {v2}, Lf/h/c/j0/k0;->getBydConfigKeyDayNightMode()I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "UtilDayStatusNotifyManager"

    const-string v6, "dayNightMode init:{?}"

    invoke-static {v5, v6, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0x64

    if-eq v2, v4, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

    :cond_2
    :pswitch_1
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformUI()Z

    move-result v2

    const/16 v4, 0x18

    const/16 v6, 0xc

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isUIIntegrate()Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/autosdk/common/UtilDayStatusNotifyManager$2;->this$0:Lcom/autosdk/common/UtilDayStatusNotifyManager;

    invoke-static {v7}, Lcom/autosdk/common/UtilDayStatusNotifyManager;->access$100(Lcom/autosdk/common/UtilDayStatusNotifyManager;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v0

    const-string v7, "getDateTime: isUIIntegrate mDayStatus == {?}"

    invoke-static {v5, v7, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/autosdk/common/UtilDayStatusNotifyManager$2;->this$0:Lcom/autosdk/common/UtilDayStatusNotifyManager;

    invoke-static {v2}, Lcom/autosdk/common/UtilDayStatusNotifyManager;->access$100(Lcom/autosdk/common/UtilDayStatusNotifyManager;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    new-instance v2, Lcom/autonavi/gbl/util/model/Time;

    invoke-direct {v2, v6, v0, v0, v0}, Lcom/autonavi/gbl/util/model/Time;-><init>(BBBB)V

    goto :goto_0

    :sswitch_1
    new-instance v2, Lcom/autonavi/gbl/util/model/Time;

    invoke-direct {v2, v6, v0, v0, v0}, Lcom/autonavi/gbl/util/model/Time;-><init>(BBBB)V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/autosdk/common/UtilDayStatusNotifyManager$2;->this$0:Lcom/autosdk/common/UtilDayStatusNotifyManager;

    invoke-static {v2}, Lcom/autosdk/common/UtilDayStatusNotifyManager;->access$200(Lcom/autosdk/common/UtilDayStatusNotifyManager;)I

    iget-object v2, p0, Lcom/autosdk/common/UtilDayStatusNotifyManager$2;->this$0:Lcom/autosdk/common/UtilDayStatusNotifyManager;

    invoke-static {v2}, Lcom/autosdk/common/UtilDayStatusNotifyManager;->access$300(Lcom/autosdk/common/UtilDayStatusNotifyManager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    const/16 v4, 0x3c

    new-instance v2, Lcom/autonavi/gbl/util/model/Time;

    invoke-direct {v2, v6, v0, v0, v0}, Lcom/autonavi/gbl/util/model/Time;-><init>(BBBB)V

    goto :goto_0

    :sswitch_3
    new-instance v2, Lcom/autonavi/gbl/util/model/Time;

    invoke-direct {v2, v4, v0, v0, v0}, Lcom/autonavi/gbl/util/model/Time;-><init>(BBBB)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/autonavi/gbl/util/model/Time;

    invoke-direct {v2, v4, v0, v0, v0}, Lcom/autonavi/gbl/util/model/Time;-><init>(BBBB)V

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/autonavi/gbl/util/model/Time;

    invoke-direct {v2, v6, v0, v0, v0}, Lcom/autonavi/gbl/util/model/Time;-><init>(BBBB)V

    :goto_0
    iput-object v2, v1, Lcom/autonavi/gbl/util/model/DateTime;->time:Lcom/autonavi/gbl/util/model/Time;

    :goto_1
    iget-object v2, v1, Lcom/autonavi/gbl/util/model/DateTime;->date:Lcom/autonavi/gbl/util/model/Date;

    iput-object v2, p1, Lcom/autonavi/gbl/util/model/DateTime;->date:Lcom/autonavi/gbl/util/model/Date;

    iget-object v1, v1, Lcom/autonavi/gbl/util/model/DateTime;->time:Lcom/autonavi/gbl/util/model/Time;

    iput-object v1, p1, Lcom/autonavi/gbl/util/model/DateTime;->time:Lcom/autonavi/gbl/util/model/Time;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, v2, Lcom/autonavi/gbl/util/model/Date;->year:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v0, p1, Lcom/autonavi/gbl/util/model/DateTime;->date:Lcom/autonavi/gbl/util/model/Date;

    iget-byte v0, v0, Lcom/autonavi/gbl/util/model/Date;->month:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v1, v3

    const/4 v0, 0x2

    iget-object v2, p1, Lcom/autonavi/gbl/util/model/DateTime;->date:Lcom/autonavi/gbl/util/model/Date;

    iget-byte v2, v2, Lcom/autonavi/gbl/util/model/Date;->day:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p1, Lcom/autonavi/gbl/util/model/DateTime;->time:Lcom/autonavi/gbl/util/model/Time;

    iget-byte v2, v2, Lcom/autonavi/gbl/util/model/Time;->hour:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p1, Lcom/autonavi/gbl/util/model/DateTime;->time:Lcom/autonavi/gbl/util/model/Time;

    iget-byte v2, v2, Lcom/autonavi/gbl/util/model/Time;->minute:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget-object p1, p1, Lcom/autonavi/gbl/util/model/DateTime;->time:Lcom/autonavi/gbl/util/model/Time;

    iget-byte p1, p1, Lcom/autonavi/gbl/util/model/Time;->second:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "dateTime date year:{?}, month:{?}, day:{?}, hour:{?}, minute:{?}, second:{?}"

    invoke-static {v5, p1, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10101 -> :sswitch_3
        0x10102 -> :sswitch_2
        0x10201 -> :sswitch_1
        0x10301 -> :sswitch_0
        0x10302 -> :sswitch_3
        0x10401 -> :sswitch_3
    .end sparse-switch
.end method

.method public getLonLat()Lcom/autonavi/gbl/common/model/Coord2DDouble;
    .locals 4

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/location/LocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    new-instance v1, Lcom/autonavi/gbl/common/model/Coord2DDouble;

    invoke-direct {v1}, Lcom/autonavi/gbl/common/model/Coord2DDouble;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/gbl/common/model/Coord2DDouble;->lat:D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/gbl/common/model/Coord2DDouble;->lon:D

    :cond_0
    return-object v1
.end method
