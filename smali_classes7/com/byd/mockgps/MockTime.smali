.class public final Lcom/byd/mockgps/MockTime;
.super Ljava/lang/Object;
.source "MockTime.java"


# static fields
.field private static final DAY_MS:J = 0x5265c00L

.field private static final MODE_AUTO:I = 0x10

.field private static final SETTLE_DELAY_MS:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "BydMockGps"

.field private static volatile active:Z = false

.field private static baseElapsedMs:J = 0x0L

.field private static baseOfDayMs:J = 0x0L

.field private static handler:Landroid/os/Handler; = null

.field private static savedMode:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)V
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/byd/mockgps/MockTime;->pushOnce(I)V

    return-void
.end method

.method private static applyMode(I)V
    .registers 10

    :try_start_0
    const-string v0, "f.h.c.j0.k0"

    .line 225
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.autosdk.bussiness.settings.SettingMethod"

    .line 226
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "b"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 227
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "NOTIFIY"

    .line 228
    invoke-static {v1, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    const-string v5, "setBydConfigKeyDayNightMode"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    .line 229
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    .line 230
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    aput-object v4, v1, v8

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_40

    goto :goto_54

    :catchall_40
    move-exception p0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set day/night mode failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BydMockGps"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-void
.end method

.method private static currentMode()I
    .registers 6

    const/4 v0, -0x1

    :try_start_1
    const-string v1, "f.h.c.j0.k0"

    .line 204
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "b"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 205
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getBydConfigKeyDayNightMode"

    new-array v5, v3, [Ljava/lang/Class;

    .line 206
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 207
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_2f

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_30

    :cond_2f
    return v0

    :catchall_30
    move-exception v1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read day/night mode failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BydMockGps"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static currentOfDayMs()J
    .registers 7

    .line 126
    sget-boolean v0, Lcom/byd/mockgps/MockTime;->active:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_7

    return-wide v1

    .line 129
    :cond_7
    const-class v0, Lcom/byd/mockgps/MockTime;

    monitor-enter v0

    .line 130
    :try_start_a
    sget-boolean v3, Lcom/byd/mockgps/MockTime;->active:Z

    if-nez v3, :cond_10

    .line 131
    monitor-exit v0

    return-wide v1

    .line 133
    :cond_10
    sget-wide v1, Lcom/byd/mockgps/MockTime;->baseOfDayMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v1, v3

    sget-wide v3, Lcom/byd/mockgps/MockTime;->baseElapsedMs:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    rem-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_25

    add-long/2addr v1, v3

    .line 134
    :cond_25
    monitor-exit v0

    return-wide v1

    :catchall_27
    move-exception v1

    .line 135
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_27

    throw v1
.end method

.method public static disable()V
    .registers 3

    .line 73
    const-class v0, Lcom/byd/mockgps/MockTime;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-boolean v1, Lcom/byd/mockgps/MockTime;->active:Z

    if-nez v1, :cond_9

    .line 75
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 77
    sput-boolean v1, Lcom/byd/mockgps/MockTime;->active:Z

    .line 78
    sget v1, Lcom/byd/mockgps/MockTime;->savedMode:I

    const/4 v2, -0x1

    .line 79
    sput v2, Lcom/byd/mockgps/MockTime;->savedMode:I

    .line 80
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1b

    if-ltz v1, :cond_15

    goto :goto_17

    :cond_15
    const/16 v1, 0x10

    .line 81
    :goto_17
    invoke-static {v1}, Lcom/byd/mockgps/MockTime;->sync(I)V

    return-void

    :catchall_1b
    move-exception v1

    .line 80
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static enable(II)V
    .registers 7

    .line 57
    const-class v0, Lcom/byd/mockgps/MockTime;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-boolean v1, Lcom/byd/mockgps/MockTime;->active:Z

    if-nez v1, :cond_d

    .line 61
    invoke-static {}, Lcom/byd/mockgps/MockTime;->currentMode()I

    move-result v1

    sput v1, Lcom/byd/mockgps/MockTime;->savedMode:I

    :cond_d
    int-to-long v1, p0

    const-wide/16 v3, 0x3c

    mul-long/2addr v1, v3

    int-to-long p0, p1

    add-long/2addr v1, p0

    mul-long/2addr v1, v3

    const-wide/16 p0, 0x3e8

    mul-long/2addr v1, p0

    .line 63
    sput-wide v1, Lcom/byd/mockgps/MockTime;->baseOfDayMs:J

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sput-wide p0, Lcom/byd/mockgps/MockTime;->baseElapsedMs:J

    const/4 p0, 0x1

    .line 65
    sput-boolean p0, Lcom/byd/mockgps/MockTime;->active:Z

    .line 66
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_29

    const/16 p0, 0x10

    .line 67
    invoke-static {p0}, Lcom/byd/mockgps/MockTime;->sync(I)V

    return-void

    :catchall_29
    move-exception p0

    .line 66
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private static handler()Landroid/os/Handler;
    .registers 3

    .line 165
    const-class v0, Lcom/byd/mockgps/MockTime;

    monitor-enter v0

    .line 166
    :try_start_3
    sget-object v1, Lcom/byd/mockgps/MockTime;->handler:Landroid/os/Handler;

    if-nez v1, :cond_12

    .line 167
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/byd/mockgps/MockTime;->handler:Landroid/os/Handler;

    .line 169
    :cond_12
    sget-object v1, Lcom/byd/mockgps/MockTime;->handler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    .line 170
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static hour()I
    .registers 4

    .line 105
    invoke-static {}, Lcom/byd/mockgps/MockTime;->currentOfDayMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_11

    :cond_c
    const-wide/32 v2, 0x36ee80

    .line 106
    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_11
    return v0
.end method

.method public static isActive()Z
    .registers 1

    .line 52
    sget-boolean v0, Lcom/byd/mockgps/MockTime;->active:Z

    return v0
.end method

.method public static localTimeNow()Ljava/time/LocalTime;
    .registers 4

    .line 96
    invoke-static {}, Lcom/byd/mockgps/MockTime;->currentOfDayMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 98
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0

    :cond_f
    const-wide/16 v2, 0x3e8

    .line 100
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 101
    div-int/lit16 v1, v0, 0xe10

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v1, v2, v0}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public static minute()I
    .registers 4

    .line 110
    invoke-static {}, Lcom/byd/mockgps/MockTime;->currentOfDayMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_c

    const/4 v0, 0x0

    goto :goto_13

    :cond_c
    const-wide/32 v2, 0xea60

    .line 111
    div-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/lit8 v0, v0, 0x3c

    :goto_13
    return v0
.end method

.method public static ofDayMs()J
    .registers 2

    .line 88
    invoke-static {}, Lcom/byd/mockgps/MockTime;->currentOfDayMs()J

    move-result-wide v0

    return-wide v0
.end method

.method private static pushOnce(I)V
    .registers 1

    .line 159
    invoke-static {}, Lcom/byd/mockgps/MockTime;->refreshEngine()V

    .line 160
    invoke-static {p0}, Lcom/byd/mockgps/MockTime;->applyMode(I)V

    .line 161
    invoke-static {}, Lcom/byd/mockgps/MockTime;->refreshSkyBox()V

    return-void
.end method

.method private static refreshEngine()V
    .registers 5

    :try_start_0
    const-string v0, "com.autosdk.common.UtilDayStatusNotifyManager"

    .line 180
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 181
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "refreshDayNightMode"

    new-array v4, v2, [Ljava/lang/Class;

    .line 182
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    goto :goto_38

    :catchall_24
    move-exception v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refresh day/night failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BydMockGps"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method private static refreshSkyBox()V
    .registers 4

    :try_start_0
    const-string v0, "com.wzw.day.LocalTimeDayStatusUtil"

    .line 194
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "refreshStatus"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 195
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    goto :goto_2a

    :catchall_16
    move-exception v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refresh sky box failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BydMockGps"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method private static sync(I)V
    .registers 5

    .line 144
    invoke-static {p0}, Lcom/byd/mockgps/MockTime;->pushOnce(I)V

    .line 145
    invoke-static {}, Lcom/byd/mockgps/MockTime;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byd/mockgps/MockTime$1;

    invoke-direct {v1, p0}, Lcom/byd/mockgps/MockTime$1;-><init>(I)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static text()Ljava/lang/String;
    .registers 4

    .line 116
    invoke-static {}, Lcom/byd/mockgps/MockTime;->currentOfDayMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    const-string v0, "\u65f6\u95f4 \u5173"

    return-object v0

    :cond_d
    const-wide/16 v2, 0x3e8

    .line 120
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 121
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-int/lit16 v2, v0, 0xe10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    div-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\u65f6\u95f4 %02d:%02d"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
