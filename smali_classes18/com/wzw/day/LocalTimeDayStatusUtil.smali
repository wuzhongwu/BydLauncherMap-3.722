.class public Lcom/wzw/day/LocalTimeDayStatusUtil;
.super Ljava/lang/Object;
.source "LocalTimeDayStatusUtil.java"


# static fields
.field public static final DAY_STATUS_DAWN_1:I = 0x10101

.field public static final DAY_STATUS_DAWN_2:I = 0x10102

.field public static final DAY_STATUS_DAY:I = 0x10201

.field public static final DAY_STATUS_DUSK_1:I = 0x10301

.field public static final DAY_STATUS_DUSK_2:I = 0x10302

.field public static final DAY_STATUS_NIGHT:I = 0x10401

.field private static currentStatus:I

.field private static defaultSunriseTime:Ljava/time/LocalTime;

.field private static defaultSunsetTime:Ljava/time/LocalTime;

.field public static handler:Landroid/os/Handler;

.field public static isTimerRunning:Z

.field private static listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public static final timerRunnable:Ljava/lang/Runnable;

.field public static final UPDATE_INTERVAL:J = 0xea60L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    const/4 v0, 0x5

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    sput-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunriseTime:Ljava/time/LocalTime;

    .line 26
    const/16 v0, 0x11

    invoke-static {v0, v1}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v0

    sput-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunsetTime:Ljava/time/LocalTime;

    .line 29
    const v0, 0x10401

    sput v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->currentStatus:I

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->listeners:Ljava/util/Set;

    .line 38
    new-instance v0, Lcom/wzw/day/LocalTimeDayStatusUtil$1;

    invoke-direct {v0}, Lcom/wzw/day/LocalTimeDayStatusUtil$1;-><init>()V

    sput-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->timerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\u5de5\u5177\u7c7b\u4e0d\u80fd\u5b9e\u4f8b\u5316"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addOnDayStatusChangeListener(Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;

    .line 341
    if-eqz p0, :cond_0

    .line 342
    sget-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_0
    return-void
.end method

.method private static calculateDayStatusNoDynamic(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)I
    .locals 1
    .param p0, "currentTime"    # Ljava/time/LocalTime;
    .param p1, "sunriseTime"    # Ljava/time/LocalTime;
    .param p2, "sunsetTime"    # Ljava/time/LocalTime;

    .line 77
    # 获取夜间模式状态
    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z
    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    sget v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_NIGHT:I
    goto :goto_0

    .line 82
    :cond_0
    sget v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAY:I

    :goto_0
    return v0
.end method

.method private static calculateDayStatus(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)I
    .locals 6
    .param p0, "currentTime"    # Ljava/time/LocalTime;
    .param p1, "sunriseTime"    # Ljava/time/LocalTime;
    .param p2, "sunsetTime"    # Ljava/time/LocalTime;

    .line 77
    # 计算 dawnStart = sunriseTime.minusHours(1)
    const-wide/16 v0, 0x1
    invoke-virtual {p1, v0, v1}, Ljava/time/LocalTime;->minusHours(J)Ljava/time/LocalTime;
    move-result-object v2

    .line 78
    .local v2, "dawnStart":Ljava/time/LocalTime;

    # 计算 dawnEnd = sunriseTime.plusHours(1)
    invoke-virtual {p1, v0, v1}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;
    move-result-object v3

    .line 80
    .local v3, "dawnEnd":Ljava/time/LocalTime;

    # 计算 duskStart = sunsetTime.minusHours(1)
    invoke-virtual {p2, v0, v1}, Ljava/time/LocalTime;->minusHours(J)Ljava/time/LocalTime;
    move-result-object v4

    .line 81
    .local v4, "duskStart":Ljava/time/LocalTime;

    # 计算 duskEnd = sunsetTime.plusHours(1)
    invoke-virtual {p2, v0, v1}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;
    move-result-object v0

    .line 83
    .local v0, "duskEnd":Ljava/time/LocalTime;

    # 获取夜间模式状态
    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z
    move-result v1

    .line 86
    .local v1, "isNightMode":Z

    # if (currentTime.isBefore(dawnStart))
    invoke-virtual {p0, v2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z
    move-result v5
    if-eqz v5, :cond_1

    .line 87
    if-eqz v1, :cond_0

    .line 88
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_NIGHT:I
    return v5

    .line 90
    :cond_0
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAY:I
    return v5

    .line 94
    :cond_1
    # else if (currentTime.isBefore(dawnEnd))
    invoke-virtual {p0, v3}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z
    move-result v5
    if-eqz v5, :cond_3

    .line 95
    if-eqz v1, :cond_2

    .line 96
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAWN_1:I
    return v5

    .line 98
    :cond_2
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAWN_2:I
    return v5

    .line 102
    :cond_3
    # else if (currentTime.isBefore(duskStart))
    invoke-virtual {p0, v4}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z
    move-result v5
    if-eqz v5, :cond_5

    .line 103
    if-eqz v1, :cond_4

    .line 104
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_NIGHT:I
    return v5

    .line 106
    :cond_4
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAY:I
    return v5

    .line 110
    :cond_5
    # else if (currentTime.isBefore(duskEnd))
    invoke-virtual {p0, v0}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z
    move-result v5
    if-eqz v5, :cond_7

    .line 111
    if-eqz v1, :cond_6

    .line 112
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DUSK_2:I
    return v5

    .line 114
    :cond_6
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DUSK_1:I
    return v5

    .line 119
    :cond_7
    # else
    if-eqz v1, :cond_8

    .line 120
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_NIGHT:I
    return v5

    .line 122
    :cond_8
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAY:I
    return v5
.end method

.method private static calculateDayStatus3(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)I
    .locals 6
    .param p0, "currentTime"    # Ljava/time/LocalTime;
    .param p1, "sunriseTime"    # Ljava/time/LocalTime;
    .param p2, "sunsetTime"    # Ljava/time/LocalTime;

    .line 77
    const-wide/16 v0, 0x2

    # 计算 dawnStart
    invoke-virtual {p1, v0, v1}, Ljava/time/LocalTime;->minusHours(J)Ljava/time/LocalTime;

    move-result-object v2

    const-wide/16 v0, 0x1e

    invoke-virtual {v2, v0, v1}, Ljava/time/LocalTime;->minusMinutes(J)Ljava/time/LocalTime;

    move-result-object v2


    .line 78
    .local v2, "dawnStart":Ljava/time/LocalTime;

    const-wide/16 v0, 0x2
    # 计算 duskStart - 重用常量 v0,v1，但存储到不同的寄存器
    invoke-virtual {p2, v0, v1}, Ljava/time/LocalTime;->minusHours(J)Ljava/time/LocalTime;

    move-result-object v3

    const-wide/16 v0, 0x1e
    # 计算 duskStart - 重用常量 v0,v1，但存储到不同的寄存器
    invoke-virtual {v3, v0, v1}, Ljava/time/LocalTime;->minusMinutes(J)Ljava/time/LocalTime;

    move-result-object v3


    .line 80
    .local v3, "duskStart":Ljava/time/LocalTime;

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v4

    .line 82
    .local v4, "isNightMode":Z
    invoke-virtual {p0, v2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    if-eqz v4, :cond_0

    .line 84
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_NIGHT:I

    return v5

    .line 86
    :cond_0
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAY:I

    return v5

    .line 88
    :cond_1
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    if-eqz v4, :cond_2

    .line 90
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAWN_1:I

    return v5

    .line 92
    :cond_2
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAWN_2:I

    return v5

    .line 94
    :cond_3
    invoke-virtual {p0, v3}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 95
    if-eqz v4, :cond_4

    .line 96
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_NIGHT:I

    return v5

    .line 98
    :cond_4
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAY:I

    return v5

    .line 100
    :cond_5
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 101
    if-eqz v4, :cond_6

    .line 102
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DUSK_2:I

    return v5

    .line 104
    :cond_6
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DUSK_1:I

    return v5

    .line 107
    :cond_7
    if-eqz v4, :cond_8

    .line 108
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_NIGHT:I

    return v5

    .line 110
    :cond_8
    sget v5, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAY:I

    return v5
.end method

.method private static calculateDayStatus2(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)I
    .locals 6
    .param p0, "currentTime"    # Ljava/time/LocalTime;
    .param p1, "sunriseTime"    # Ljava/time/LocalTime;
    .param p2, "sunsetTime"    # Ljava/time/LocalTime;

    .line 77
    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    const-wide/16 v0, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    .line 80
    .local v0, "dawn1Start":Ljava/time/LocalTime;
    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v1

    .line 83
    .local v1, "dawn2Start":Ljava/time/LocalTime;
    invoke-virtual {p0, v0}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    sget v2, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_NIGHT:I
    #const v2, 0x10401

    return v2

    .line 86
    :cond_0
    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    #const v2, 0x10101
    sget v2, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAWN_1:I

    return v2

    .line 88
    :cond_1
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    #const v2, 0x10102
    sget v2, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAWN_2:I

    return v2

    .line 92
    :cond_2
    #const v2, 0x10401
    sget v2, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_NIGHT:I

    return v2

    .line 97
    .end local v0    # "dawn1Start":Ljava/time/LocalTime;
    .end local v1    # "dawn2Start":Ljava/time/LocalTime;
    :cond_5
    const-wide/16 v0, -0x2

    invoke-virtual {p2, v0, v1}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v0

    .line 98
    .local v0, "dusk1Start":Ljava/time/LocalTime;
    const-wide/16 v1, -0x1

    invoke-virtual {p2, v1, v2}, Ljava/time/LocalTime;->plusHours(J)Ljava/time/LocalTime;

    move-result-object v1

    .line 101
    .local v1, "dusk2Start":Ljava/time/LocalTime;
    invoke-virtual {p0, v0}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 103
    #const v2, 0x10201
    sget v2, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAY:I

    return v2

    .line 104
    :cond_6
    invoke-virtual {p0, v1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 105
    #const v2, 0x10301
    sget v2, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DUSK_1:I

    return v2

    .line 106
    :cond_7
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 107
    #const v2, 0x10302
    sget v2, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DUSK_2:I

    return v2

    .line 110
    :cond_8
    #const v2, 0x10201
    sget v2, Lcom/wzw/day/LocalTimeDayStatusUtil;->DAY_STATUS_DAY:I

    return v2
.end method

.method public static getCurrentStatus()I
    .locals 1

    .line 162
    sget v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->currentStatus:I

    return v0
.end method

.method public static getDayStatus()I
    .locals 1

    # 调用initAutoUpdate
    invoke-static {}, Lcom/wzw/day/LocalTimeDayStatusUtil;->initAutoUpdate()V

    .line 244
    invoke-static {}, Lcom/byd/mockgps/MockTime;->localTimeNow()Ljava/time/LocalTime;

    move-result-object v0

    invoke-static {v0}, Lcom/wzw/day/LocalTimeDayStatusUtil;->getDayStatus(Ljava/time/LocalTime;)I

    move-result v0

    return v0
.end method

.method public static getDayStatus(Ljava/lang/String;)I
    .locals 3
    .param p0, "currentTime"    # Ljava/lang/String;

    .line 279
    invoke-static {p0}, Lcom/wzw/day/LocalTimeDayStatusUtil;->parseTimeString(Ljava/lang/String;)Ljava/time/LocalTime;

    move-result-object v0

    .line 280
    .local v0, "current":Ljava/time/LocalTime;
    sget-object v1, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunriseTime:Ljava/time/LocalTime;

    sget-object v2, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunsetTime:Ljava/time/LocalTime;

    invoke-static {v0, v1, v2}, Lcom/wzw/day/LocalTimeDayStatusUtil;->calculateDayStatus(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)I

    move-result v1

    return v1
.end method

.method public static getDayStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "currentTime"    # Ljava/lang/String;
    .param p1, "sunriseTime"    # Ljava/lang/String;
    .param p2, "sunsetTime"    # Ljava/lang/String;

    .line 292
    invoke-static {p0}, Lcom/wzw/day/LocalTimeDayStatusUtil;->parseTimeString(Ljava/lang/String;)Ljava/time/LocalTime;

    move-result-object v0

    .line 293
    .local v0, "current":Ljava/time/LocalTime;
    invoke-static {p1}, Lcom/wzw/day/LocalTimeDayStatusUtil;->parseTimeString(Ljava/lang/String;)Ljava/time/LocalTime;

    move-result-object v1

    .line 294
    .local v1, "sunrise":Ljava/time/LocalTime;
    invoke-static {p2}, Lcom/wzw/day/LocalTimeDayStatusUtil;->parseTimeString(Ljava/lang/String;)Ljava/time/LocalTime;

    move-result-object v2

    .line 296
    .local v2, "sunset":Ljava/time/LocalTime;
    invoke-static {v0, v1, v2}, Lcom/wzw/day/LocalTimeDayStatusUtil;->calculateDayStatus(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)I

    move-result v2

    return v2
.end method

.method public static getDayStatus(Ljava/time/LocalTime;)I
    .locals 2
    .param p0, "currentTime"    # Ljava/time/LocalTime;

    .line 254
    sget-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunriseTime:Ljava/time/LocalTime;

    sget-object v1, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunsetTime:Ljava/time/LocalTime;

    invoke-static {p0, v0, v1}, Lcom/wzw/day/LocalTimeDayStatusUtil;->calculateDayStatus(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)I

    move-result v0

    return v0
.end method

.method public static getDayStatus(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)I
    .locals 1
    .param p0, "currentTime"    # Ljava/time/LocalTime;
    .param p1, "sunriseTime"    # Ljava/time/LocalTime;
    .param p2, "sunsetTime"    # Ljava/time/LocalTime;

    .line 267
    invoke-static {p0, p1, p2}, Lcom/wzw/day/LocalTimeDayStatusUtil;->calculateDayStatus(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)I

    move-result v0

    return v0
.end method

.method public static getDefaultSunriseTime()Ljava/time/LocalTime;
    .locals 1

    .line 230
    sget-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunriseTime:Ljava/time/LocalTime;

    return-object v0
.end method

.method public static getDefaultSunsetTime()Ljava/time/LocalTime;
    .locals 1

    .line 238
    sget-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunsetTime:Ljava/time/LocalTime;

    return-object v0
.end method

.method public static initDefaultSunriseTime()V

    .locals 4
    # 调用高德获取日出日落时间
    invoke-static {}, Lcom/autonavi/gbl/map/UtilDayStatusNotify;->getInstance()Lcom/autonavi/gbl/map/UtilDayStatusNotify;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/UtilDayStatusNotify;->getSunTime()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/autosdk/bussiness/common/utils/GsonUtils;->objectToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSunTime===>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "LocalTimeDayStatusUtil"

    invoke-static {v3, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    # 设置日出时间
    const/4 v1, 0x0

    invoke-static {v0, v1} , Lcom/wzw/day/LocalTimeDayStatusUtil;->parseSunriseSunsetTime(Ljava/util/ArrayList;I)Ljava/time/LocalTime;

    move-result-object v1

    # 判断v1不能为空，否则直接到返回
    if-eqz v1, :cond_return

    invoke-static {v1}, Lcom/wzw/day/LocalTimeDayStatusUtil;->setDefaultSunriseTime(Ljava/time/LocalTime;)V

        #设置日落时间
    const/4 v1, 0x1

    invoke-static {v0, v1} , Lcom/wzw/day/LocalTimeDayStatusUtil;->parseSunriseSunsetTime(Ljava/util/ArrayList;I)Ljava/time/LocalTime;

    move-result-object v1

     # 判断v1不能为空，否则直接到返回
    if-eqz v1, :cond_return

    invoke-static {v1}, Lcom/wzw/day/LocalTimeDayStatusUtil;->setDefaultSunsetTime(Ljava/time/LocalTime;)V

    :cond_return

    return-void

.end method

.method public static initAutoUpdate()V
    .locals 3

    .line 54
    sget-boolean v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->isTimerRunning:Z

    if-eqz v0, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 60
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/wzw/day/LocalTimeDayStatusUtil;->handler:Landroid/os/Handler;

    .line 63
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    invoke-static {} , Lcom/wzw/day/LocalTimeDayStatusUtil;->initDefaultSunriseTime()V

    invoke-static {}, Lcom/wzw/day/LocalTimeDayStatusUtil;->updateCurrentStatus()V

    .line 65
    invoke-static {}, Lcom/wzw/day/LocalTimeDayStatusUtil;->startTimer()V

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->isTimerRunning:Z

    .line 67
    return-void
.end method

.method private static notifyStatusChanged(II)V
    .locals 3
    .param p0, "oldStatus"    # I
    .param p1, "newStatus"    # I

    .line 357
    sget-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;

    .line 358
    .local v1, "listener":Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;
    invoke-interface {v1, p0, p1}, Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;->onDayStatusChanged(II)V

    .line 359
    .end local v1    # "listener":Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;
    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method private static parseTimeString(Ljava/lang/String;)Ljava/time/LocalTime;
    .locals 4
    .param p0, "timeString"    # Ljava/lang/String;

    .line 303
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "trimmed":Ljava/lang/String;
    const-string v1, "^\\d{1,2}:\\d{2}(:\\d{2})?$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 318
    :cond_0
    invoke-static {v0}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v1

    return-object v1

    .line 311
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u65f6\u95f4\u683c\u5f0f\u4e0d\u6b63\u786e\uff0c\u5e94\u4e3a HH:mm:ss \u6216 HH:mm"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    .end local v0    # "trimmed":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u65f6\u95f4\u5b57\u7b26\u4e32\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static refreshStatus()V
    .locals 0

    .line 366
    invoke-static {}, Lcom/wzw/day/LocalTimeDayStatusUtil;->updateCurrentStatus()V

    .line 367
    return-void
.end method

.method public static removeOnDayStatusChangeListener(Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;

    .line 352
    sget-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 353
    return-void
.end method

.method public static setDefaultSunriseSunsetTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "sunriseTime"    # Ljava/lang/String;
    .param p1, "sunsetTime"    # Ljava/lang/String;

    .line 225
    invoke-static {p0}, Lcom/wzw/day/LocalTimeDayStatusUtil;->setDefaultSunriseTime(Ljava/lang/String;)V

    .line 226
    invoke-static {p1}, Lcom/wzw/day/LocalTimeDayStatusUtil;->setDefaultSunsetTime(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public static setDefaultSunriseSunsetTime(Ljava/time/LocalTime;Ljava/time/LocalTime;)V
    .locals 0
    .param p0, "sunriseTime"    # Ljava/time/LocalTime;
    .param p1, "sunsetTime"    # Ljava/time/LocalTime;

    .line 219
    invoke-static {p0}, Lcom/wzw/day/LocalTimeDayStatusUtil;->setDefaultSunriseTime(Ljava/time/LocalTime;)V

    .line 220
    invoke-static {p1}, Lcom/wzw/day/LocalTimeDayStatusUtil;->setDefaultSunsetTime(Ljava/time/LocalTime;)V

    .line 221
    return-void
.end method

.method public static setDefaultSunriseTime(Ljava/lang/String;)V
    .locals 1
    .param p0, "sunriseTime"    # Ljava/lang/String;

    .line 202
    invoke-static {p0}, Lcom/wzw/day/LocalTimeDayStatusUtil;->parseTimeString(Ljava/lang/String;)Ljava/time/LocalTime;

    move-result-object v0

    sput-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunriseTime:Ljava/time/LocalTime;

    .line 203
    invoke-static {}, Lcom/wzw/day/LocalTimeDayStatusUtil;->updateCurrentStatus()V

    .line 204
    return-void
.end method

.method public static setDefaultSunriseTime(Ljava/time/LocalTime;)V
    .locals 2
    .param p0, "sunriseTime"    # Ljava/time/LocalTime;

    .line 170
    if-eqz p0, :cond_0

    .line 174
    sput-object p0, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunriseTime:Ljava/time/LocalTime;

    .line 176
    invoke-static {}, Lcom/wzw/day/LocalTimeDayStatusUtil;->updateCurrentStatus()V

    .line 177
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u65e5\u51fa\u65f6\u95f4\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDefaultSunsetTime(Ljava/lang/String;)V
    .locals 1
    .param p0, "sunsetTime"    # Ljava/lang/String;

    .line 213
    invoke-static {p0}, Lcom/wzw/day/LocalTimeDayStatusUtil;->parseTimeString(Ljava/lang/String;)Ljava/time/LocalTime;

    move-result-object v0

    sput-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunsetTime:Ljava/time/LocalTime;

    .line 214
    invoke-static {}, Lcom/wzw/day/LocalTimeDayStatusUtil;->updateCurrentStatus()V

    .line 215
    return-void
.end method

.method public static setDefaultSunsetTime(Ljava/time/LocalTime;)V
    .locals 2
    .param p0, "sunsetTime"    # Ljava/time/LocalTime;

    .line 185
    if-eqz p0, :cond_0

    .line 189
    sput-object p0, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunsetTime:Ljava/time/LocalTime;

    .line 191
    invoke-static {}, Lcom/wzw/day/LocalTimeDayStatusUtil;->updateCurrentStatus()V

    .line 192
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u65e5\u843d\u65f6\u95f4\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static startTimer()V
    .locals 4

    .line 74
    sget-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 75
    sget-object v1, Lcom/wzw/day/LocalTimeDayStatusUtil;->timerRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_0
    return-void
.end method

.method public static stopAutoUpdate()V
    .locals 2

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->isTimerRunning:Z

    .line 85
    sget-object v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 86
    sget-object v1, Lcom/wzw/day/LocalTimeDayStatusUtil;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static updateCurrentStatus()V
    .locals 3

    .line 95
    invoke-static {}, Lcom/byd/mockgps/MockTime;->localTimeNow()Ljava/time/LocalTime;

    move-result-object v0

    sget-object v1, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunriseTime:Ljava/time/LocalTime;

    sget-object v2, Lcom/wzw/day/LocalTimeDayStatusUtil;->defaultSunsetTime:Ljava/time/LocalTime;

    invoke-static {v0, v1, v2}, Lcom/wzw/day/LocalTimeDayStatusUtil;->calculateDayStatus(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)I

    move-result v0

    .line 97
    .local v0, "newStatus":I
    sget v1, Lcom/wzw/day/LocalTimeDayStatusUtil;->currentStatus:I

    if-eq v0, v1, :cond_0

    .line 98
    sget v1, Lcom/wzw/day/LocalTimeDayStatusUtil;->currentStatus:I

    .line 99
    .local v1, "oldStatus":I
    sput v0, Lcom/wzw/day/LocalTimeDayStatusUtil;->currentStatus:I

    .line 102
    invoke-static {v1, v0}, Lcom/wzw/day/LocalTimeDayStatusUtil;->notifyStatusChanged(II)V

    .line 104
    .end local v1    # "oldStatus":I
    :cond_0
    return-void
.end method

.method public static parseSunriseSunsetTime(Ljava/util/ArrayList;I)Ljava/time/LocalTime;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[D>;I)",
            "Ljava/time/LocalTime;"
        }
    .end annotation

    .prologue
    .line 10
    const/4 v14, 0x0

    .line 12
    .local v14, "result":Ljava/time/LocalTime;
    const-string v15, "LocalTimeDayStatusUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "开始解析日出日落时间, index="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 15
    :cond_0
    const-string v15, "LocalTimeDayStatusUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "时间列表无效, timeList="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const/4 v15, 0x0

    .line 59
    :goto_0
    return-object v15

    .line 19
    :cond_1
    if-ltz p1, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v0, p1

    if-lt v0, v15, :cond_3

    .line 20
    :cond_2
    const-string v15, "LocalTimeDayStatusUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "索引超出范围, index="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", size="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v15, 0x0

    goto :goto_0

    .line 24
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [D

    .line 25
    .local v13, "timeArray":[D
    if-eqz v13, :cond_4

    array-length v15, v13

    if-nez v15, :cond_5

    .line 26
    :cond_4
    const-string v15, "LocalTimeDayStatusUtil"

    const-string v16, "时间数组为空"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v15, 0x0

    goto :goto_0

    .line 30
    :cond_5
    const/4 v15, 0x0

    aget-wide v10, v13, v15

    .line 32
    .local v10, "timeValue":D
    const-string v15, "LocalTimeDayStatusUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "原始时间值: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    double-to-int v6, v10

    .line 35
    .local v6, "hours":I
    int-to-double v0, v6

    move-wide/from16 v16, v0

    sub-double v8, v10, v16

    .line 36
    .local v8, "decimalPart":D
    const-wide v16, 0x404e000000000000L    # 60.0

    mul-double v16, v16, v8

    move-wide/from16 v0, v16

    double-to-int v7, v0

    .line 37
    .local v7, "minutes":I
    const-wide v16, 0x404e000000000000L    # 60.0

    mul-double v16, v16, v8

    int-to-double v0, v7

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    const-wide v18, 0x404e000000000000L    # 60.0

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v12, v0

    .line 39
    .local v12, "seconds":I
    const-string v15, "LocalTimeDayStatusUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "解析中间值 - 小时: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", 分钟: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", 秒: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/16 v15, 0x3c

    if-lt v12, v15, :cond_6

    .line 43
    div-int/lit8 v15, v12, 0x3c

    add-int/2addr v7, v15

    .line 44
    rem-int/lit8 v12, v12, 0x3c

    .line 47
    :cond_6
    const/16 v15, 0x3c

    if-lt v7, v15, :cond_7

    .line 48
    div-int/lit8 v15, v7, 0x3c

    add-int/2addr v6, v15

    .line 49
    rem-int/lit8 v7, v7, 0x3c

    .line 52
    :cond_7
    const/16 v15, 0x18

    if-lt v6, v15, :cond_8

    .line 53
    rem-int/lit8 v6, v6, 0x18

    .line 56
    :cond_8
    invoke-static {v6, v7, v12}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v14

    .line 58
    const-string v15, "LocalTimeDayStatusUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "解析成功: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v6    # "hours":I
    .end local v7    # "minutes":I
    .end local v8    # "decimalPart":D
    .end local v10    # "timeValue":D
    .end local v12    # "seconds":I
    .end local v13    # "timeArray":[D
    :goto_1
    move-object v15, v14

    .line 64
    goto/16 :goto_0

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    const-string v15, "LocalTimeDayStatusUtil"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "解析日出日落时间时发生异常: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v14, 0x0

    goto :goto_1
.end method

