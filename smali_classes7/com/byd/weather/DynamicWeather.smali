.class public final Lcom/byd/weather/DynamicWeather;
.super Ljava/lang/Object;
.source "DynamicWeather.java"


# static fields
.field private static final ALIVE_CHECK:Ljava/lang/Runnable;

.field private static final BURST_LIMIT:I = 0x5

.field private static final BURST_WINDOW_MS:J = 0xbb8L

.field private static final COLUMN:Ljava/lang/String; = "name"

.field private static final DURATION_MS:J = 0x927c0L

.field private static final EFFECT_NONE:I = -0x1

.field private static final EFFECT_RAIN:I = 0x1

.field private static final EFFECT_SNOW:I = 0x2

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final NO_FORCE:I = -0x2

.field private static final POLL_INTERVAL_MS:J = 0x493e0L

.field private static final PREF_NAME:Ljava/lang/String; = "byd_dynamic_weather"

.field private static final SCREENS:[I

.field private static final STARTER:Ljava/lang/Runnable;

.field private static final SWITCH_DELAY_MS:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "BydWeather"

.field private static final WATCHER:Ljava/lang/Runnable;

.field private static final WATCH_INTERVAL_MS:J = 0x1f4L

.field private static final WEATHER_URI:Landroid/net/Uri;

.field private static applied:I

.field private static burst:I

.field private static volatile enabled:I

.field private static volatile forced:I

.field private static handler:Landroid/os/Handler;

.field private static lastPickup:J

.field private static volatile localEffect:I

.field private static volatile naviEffect:I

.field private static pending:I

.field private static polling:Z

.field private static startedAt:J

.field private static worker:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "content://com.byd.weatherdata.utils.WeatherContentProvider/weather"

    .line 49
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/byd/weather/DynamicWeather;->WEATHER_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 108
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/byd/weather/DynamicWeather;->SCREENS:[I

    const/4 v0, -0x1

    .line 111
    sput v0, Lcom/byd/weather/DynamicWeather;->enabled:I

    const/4 v1, -0x2

    .line 114
    sput v1, Lcom/byd/weather/DynamicWeather;->forced:I

    .line 117
    sput v0, Lcom/byd/weather/DynamicWeather;->naviEffect:I

    .line 120
    sput v0, Lcom/byd/weather/DynamicWeather;->localEffect:I

    .line 123
    sput v0, Lcom/byd/weather/DynamicWeather;->applied:I

    .line 126
    sput v0, Lcom/byd/weather/DynamicWeather;->pending:I

    .line 257
    new-instance v0, Lcom/byd/weather/DynamicWeather$2;

    invoke-direct {v0}, Lcom/byd/weather/DynamicWeather$2;-><init>()V

    sput-object v0, Lcom/byd/weather/DynamicWeather;->ALIVE_CHECK:Ljava/lang/Runnable;

    .line 485
    new-instance v0, Lcom/byd/weather/DynamicWeather$4;

    invoke-direct {v0}, Lcom/byd/weather/DynamicWeather$4;-><init>()V

    sput-object v0, Lcom/byd/weather/DynamicWeather;->STARTER:Ljava/lang/Runnable;

    .line 532
    new-instance v0, Lcom/byd/weather/DynamicWeather$5;

    invoke-direct {v0}, Lcom/byd/weather/DynamicWeather$5;-><init>()V

    sput-object v0, Lcom/byd/weather/DynamicWeather;->WATCHER:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 39
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->pollLocal()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Runnable;
    .registers 1

    .line 39
    sget-object v0, Lcom/byd/weather/DynamicWeather;->ALIVE_CHECK:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .line 39
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->handler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .line 39
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->worker()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()V
    .registers 0

    .line 39
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->checkAlive()V

    return-void
.end method

.method static synthetic access$500()V
    .registers 0

    .line 39
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->apply()V

    return-void
.end method

.method static synthetic access$600()V
    .registers 0

    .line 39
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->startPending()V

    return-void
.end method

.method static synthetic access$700()V
    .registers 0

    .line 39
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->watch()V

    return-void
.end method

.method private static allowBurst()Z
    .registers 6

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 584
    sget-wide v2, Lcom/byd/weather/DynamicWeather;->lastPickup:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_16

    .line 585
    sget v2, Lcom/byd/weather/DynamicWeather;->burst:I

    add-int/2addr v2, v3

    sput v2, Lcom/byd/weather/DynamicWeather;->burst:I

    goto :goto_18

    .line 587
    :cond_16
    sput v4, Lcom/byd/weather/DynamicWeather;->burst:I

    .line 589
    :goto_18
    sput-wide v0, Lcom/byd/weather/DynamicWeather;->lastPickup:J

    .line 590
    sget v0, Lcom/byd/weather/DynamicWeather;->burst:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_20

    goto :goto_21

    :cond_20
    move v3, v4

    :goto_21
    return v3
.end method

.method private static animationState(Ljava/lang/Object;)I
    .registers 6

    const/16 v0, -0x3e7

    .line 605
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAnimationState"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 606
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1f

    :catchall_1f
    :cond_1f
    return v0
.end method

.method private static apply()V
    .registers 8

    .line 451
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->isEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/byd/weather/DynamicWeather;->wanted()I

    move-result v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 452
    :goto_d
    sget v2, Lcom/byd/weather/DynamicWeather;->applied:I

    if-ne v0, v2, :cond_16

    sget v2, Lcom/byd/weather/DynamicWeather;->pending:I

    if-ne v2, v1, :cond_16

    return-void

    .line 455
    :cond_16
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->handler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/byd/weather/DynamicWeather;->STARTER:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->handler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/byd/weather/DynamicWeather;->WATCHER:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    sput v1, Lcom/byd/weather/DynamicWeather;->pending:I

    const/4 v2, 0x0

    move v3, v2

    .line 462
    :goto_2c
    sget-object v4, Lcom/byd/weather/DynamicWeather;->SCREENS:[I

    array-length v5, v4

    const-string v6, "BydWeather"

    if-ge v2, v5, :cond_78

    .line 463
    aget v5, v4, v2

    invoke-static {v5}, Lcom/byd/weather/DynamicWeather;->operator(I)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "screen "

    if-nez v5, :cond_54

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v4, v2

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no weather operator"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 468
    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " animState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/byd/weather/DynamicWeather;->animationState(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-static {v5}, Lcom/byd/weather/DynamicWeather;->stopEffect(Ljava/lang/Object;)V

    const/4 v3, 0x1

    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_78
    if-nez v3, :cond_a3

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apply "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/byd/weather/DynamicWeather;->applied:I

    invoke-static {v2}, Lcom/byd/weather/DynamicWeather;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/byd/weather/DynamicWeather;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FAILED: no operator"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 476
    :cond_a3
    sput v1, Lcom/byd/weather/DynamicWeather;->applied:I

    if-ne v0, v1, :cond_ad

    const-string v0, "apply -> none ok"

    .line 478
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 481
    :cond_ad
    sput v0, Lcom/byd/weather/DynamicWeather;->pending:I

    .line 482
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->handler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/byd/weather/DynamicWeather;->STARTER:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static canStart(I)Z
    .registers 2

    const/16 v0, -0x3e7

    if-eq p0, v0, :cond_a

    and-int/lit8 p0, p0, -0x5

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static checkAlive()V
    .registers 2

    .line 597
    sget v0, Lcom/byd/weather/DynamicWeather;->applied:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    invoke-static {}, Lcom/byd/weather/DynamicWeather;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_f

    .line 600
    :cond_c
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->startWatch()V

    :cond_f
    :goto_f
    return-void
.end method

.method private static context()Landroid/content/Context;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "f.h.c.n0.l2"

    .line 701
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "g"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 702
    instance-of v2, v1, Landroid/content/Context;

    if-eqz v2, :cond_1d

    check-cast v1, Landroid/content/Context;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    move-object v0, v1

    :catchall_1d
    :cond_1d
    return-object v0
.end method

.method public static force(I)V
    .registers 3

    if-gez p0, :cond_4

    const/4 v0, -0x2

    goto :goto_8

    .line 219
    :cond_4
    invoke-static {p0}, Lcom/byd/weather/DynamicWeather;->toEffect(I)I

    move-result v0

    :goto_8
    sput v0, Lcom/byd/weather/DynamicWeather;->forced:I

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "force cnWeatherId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/byd/weather/DynamicWeather;->forced:I

    invoke-static {p0}, Lcom/byd/weather/DynamicWeather;->name(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BydWeather"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->post()V

    return-void
.end method

.method private static handler()Landroid/os/Handler;
    .registers 3

    .line 415
    const-class v0, Lcom/byd/weather/DynamicWeather;

    monitor-enter v0

    .line 416
    :try_start_3
    sget-object v1, Lcom/byd/weather/DynamicWeather;->handler:Landroid/os/Handler;

    if-nez v1, :cond_12

    .line 417
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/byd/weather/DynamicWeather;->handler:Landroid/os/Handler;

    .line 419
    :cond_12
    sget-object v1, Lcom/byd/weather/DynamicWeather;->handler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    .line 420
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private static intField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 371
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_15

    return-object p0

    :catchall_15
    return-object v0
.end method

.method public static isEnabled()Z
    .registers 2

    .line 150
    sget v0, Lcom/byd/weather/DynamicWeather;->enabled:I

    if-ltz v0, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 154
    :cond_a
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->readEnabled()Z

    move-result v0

    .line 155
    sput v0, Lcom/byd/weather/DynamicWeather;->enabled:I

    return v0
.end method

.method private static name(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "rain"

    return-object p0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string p0, "snow"

    return-object p0

    :cond_c
    const/4 v0, -0x2

    if-ne p0, v0, :cond_12

    const-string p0, "auto"

    return-object p0

    :cond_12
    const-string p0, "none"

    return-object p0
.end method

.method public static onNaviStop()V
    .registers 3

    .line 206
    sget v0, Lcom/byd/weather/DynamicWeather;->naviEffect:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const-string v0, "BydWeather"

    const-string v2, "navi stopped, drop route weather"

    .line 209
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sput v1, Lcom/byd/weather/DynamicWeather;->naviEffect:I

    .line 211
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->post()V

    return-void
.end method

.method public static onNaviWeather(Ljava/lang/Object;)V
    .registers 4

    const-string v0, "BydWeather"

    .line 188
    :try_start_2
    invoke-static {p0}, Lcom/byd/weather/DynamicWeather;->parse(Ljava/lang/Object;)I

    move-result p0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_7

    goto :goto_1a

    :catchall_7
    move-exception p0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse navi weather failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 193
    :goto_1a
    sget v1, Lcom/byd/weather/DynamicWeather;->naviEffect:I

    if-ne p0, v1, :cond_1f

    return-void

    .line 196
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "navi weather effect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/byd/weather/DynamicWeather;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sput p0, Lcom/byd/weather/DynamicWeather;->naviEffect:I

    .line 198
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->post()V

    return-void
.end method

.method private static operator(I)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.autosdk.bussiness.map.MapController"

    .line 628
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 629
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getMapView"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    .line 630
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    .line 631
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_32

    return-object v0

    .line 635
    :cond_32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOperatorWeather"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    return-object p0

    :catchall_45
    move-exception p0

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get weather operator failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BydWeather"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static parse(Ljava/lang/Object;)I
    .registers 3

    .line 327
    instance-of v0, p0, Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 330
    :cond_6
    check-cast p0, Ljava/util/List;

    .line 331
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x0

    .line 334
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/byd/weather/DynamicWeather;->weatherId(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1b

    return v1

    .line 338
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "navi weather id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BydWeather"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/byd/weather/DynamicWeather;->toEffect(I)I

    move-result p0

    return p0
.end method

.method private static pollLocal()V
    .registers 11

    const-string v0, "?"

    const-string v1, "BydWeather"

    const-string v2, "local weather cnweatherid="

    const-string v3, "poll local weather failed: "

    const/4 v4, 0x0

    .line 271
    :try_start_9
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->context()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_15

    const-string v0, "poll skipped: no context"

    .line 273
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 276
    :cond_15
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 277
    sget-object v6, Lcom/byd/weather/DynamicWeather;->WEATHER_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_ba

    .line 278
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_2d

    goto/16 :goto_ba

    :cond_2d
    const-string v5, "name"

    .line 282
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_40

    const-string v0, "poll: column \'name\' missing"

    .line 284
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_c5

    if-eqz v4, :cond_3f

    .line 307
    :try_start_3c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_3f

    :catchall_3f
    :cond_3f
    return-void

    .line 287
    :cond_40
    :try_start_40
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_af

    .line 288
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4d

    goto :goto_af

    .line 292
    :cond_4d
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    .line 293
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "condition"

    .line 294
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "cnweatherid"

    const/4 v7, -0x1

    .line 295
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 296
    invoke-static {v6}, Lcom/byd/weather/DynamicWeather;->toEffect(I)I

    move-result v7

    .line 297
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "weathertext"

    .line 298
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") updated="

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "updatetimeFmt"

    .line 299
    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {v7}, Lcom/byd/weather/DynamicWeather;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_40 .. :try_end_a0} :catchall_c5

    if-eqz v4, :cond_a5

    .line 307
    :try_start_a2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a5

    .line 313
    :catchall_a5
    :cond_a5
    sget v0, Lcom/byd/weather/DynamicWeather;->localEffect:I

    if-eq v7, v0, :cond_ae

    .line 314
    sput v7, Lcom/byd/weather/DynamicWeather;->localEffect:I

    .line 315
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->post()V

    :cond_ae
    return-void

    :cond_af
    :goto_af
    :try_start_af
    const-string v0, "poll got empty json"

    .line 289
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_c5

    if-eqz v4, :cond_b9

    .line 307
    :try_start_b6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_b9

    :catchall_b9
    :cond_b9
    return-void

    :cond_ba
    :goto_ba
    :try_start_ba
    const-string v0, "poll got no row"

    .line 279
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_ba .. :try_end_bf} :catchall_c5

    if-eqz v4, :cond_c4

    .line 307
    :try_start_c1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c4

    :catchall_c4
    :cond_c4
    return-void

    :catchall_c5
    move-exception v0

    .line 302
    :try_start_c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_c6 .. :try_end_d5} :catchall_db

    if-eqz v4, :cond_da

    .line 307
    :try_start_d7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_da

    :catchall_da
    :cond_da
    return-void

    :catchall_db
    move-exception v0

    if-eqz v4, :cond_e1

    :try_start_de
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e1

    .line 312
    :catchall_e1
    :cond_e1
    throw v0
.end method

.method private static post()V
    .registers 2

    .line 406
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byd/weather/DynamicWeather$3;

    invoke-direct {v1}, Lcom/byd/weather/DynamicWeather$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static readEnabled()Z
    .registers 4

    const/4 v0, 0x0

    .line 685
    :try_start_1
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->context()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    const-string v2, "byd_dynamic_weather"

    .line 690
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enabled"

    .line 691
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    return v0

    :catchall_15
    move-exception v1

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read setting failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BydWeather"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static setEnabled(Z)V
    .registers 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setEnabled "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BydWeather"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sput p0, Lcom/byd/weather/DynamicWeather;->enabled:I

    if-eqz p0, :cond_1a

    .line 176
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->startPolling()V

    .line 178
    :cond_1a
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->post()V

    return-void
.end method

.method public static start()V
    .registers 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start, enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/byd/weather/DynamicWeather;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BydWeather"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->startPolling()V

    return-void
.end method

.method private static startEffect(Ljava/lang/Object;I)Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.autonavi.gbl.map.model.TextBuffer"

    .line 644
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 645
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "startWeatherEffect"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    const/4 v6, 0x1

    aput-object v1, v5, v6

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v1, v5, v7

    .line 646
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 647
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x0

    aput-object p1, v2, v6

    const-wide/32 v3, 0x927c0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    return v6

    :catchall_38
    move-exception p0

    .line 650
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "start weather failed: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BydWeather"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static startPending()V
    .registers 5

    .line 493
    sget v0, Lcom/byd/weather/DynamicWeather;->pending:I

    const/4 v1, -0x1

    .line 494
    sput v1, Lcom/byd/weather/DynamicWeather;->pending:I

    if-ne v0, v1, :cond_8

    return-void

    :cond_8
    const/4 v1, 0x0

    move v2, v1

    .line 499
    :goto_a
    sget-object v3, Lcom/byd/weather/DynamicWeather;->SCREENS:[I

    array-length v4, v3

    if-ge v1, v4, :cond_20

    .line 500
    aget v3, v3, v1

    invoke-static {v3}, Lcom/byd/weather/DynamicWeather;->operator(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_18

    goto :goto_1d

    .line 504
    :cond_18
    invoke-static {v3, v0}, Lcom/byd/weather/DynamicWeather;->startEffect(Ljava/lang/Object;I)Z

    move-result v3

    or-int/2addr v2, v3

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 506
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "apply -> "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byd/weather/DynamicWeather;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_33

    const-string v3, " ok"

    goto :goto_35

    :cond_33
    const-string v3, " FAILED"

    :goto_35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BydWeather"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4e

    .line 508
    sput v0, Lcom/byd/weather/DynamicWeather;->applied:I

    .line 509
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byd/weather/DynamicWeather;->startedAt:J

    .line 510
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->startWatch()V

    :cond_4e
    return-void
.end method

.method private static startPolling()V
    .registers 2

    .line 241
    const-class v0, Lcom/byd/weather/DynamicWeather;

    monitor-enter v0

    .line 242
    :try_start_3
    sget-boolean v1, Lcom/byd/weather/DynamicWeather;->polling:Z

    if-eqz v1, :cond_9

    .line 243
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 245
    sput-boolean v1, Lcom/byd/weather/DynamicWeather;->polling:Z

    .line 246
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1a

    .line 247
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->worker()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/byd/weather/DynamicWeather$1;

    invoke-direct {v1}, Lcom/byd/weather/DynamicWeather$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_1a
    move-exception v1

    .line 246
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private static startWatch()V
    .registers 4

    .line 528
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->handler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/byd/weather/DynamicWeather;->WATCHER:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->handler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static stopEffect(Ljava/lang/Object;)V
    .registers 7

    .line 661
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "stopWeatherEffect"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v5

    .line 662
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_30

    :catchall_1c
    move-exception p0

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop weather failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BydWeather"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public static text()Ljava/lang/String;
    .registers 2

    .line 226
    sget v0, Lcom/byd/weather/DynamicWeather;->forced:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_8

    const-string v0, "\u5929\u6c14 \u81ea\u52a8"

    return-object v0

    .line 229
    :cond_8
    sget v0, Lcom/byd/weather/DynamicWeather;->forced:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const-string v0, "\u5929\u6c14 \u96e8"

    return-object v0

    .line 232
    :cond_10
    sget v0, Lcom/byd/weather/DynamicWeather;->forced:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    const-string v0, "\u5929\u6c14 \u96ea"

    return-object v0

    :cond_18
    const-string v0, "\u5929\u6c14 \u65e0"

    return-object v0
.end method

.method private static toEffect(I)I
    .registers 8

    const/4 v0, -0x1

    if-gez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    const-string v1, "f.h.c.n0.y2"

    .line 387
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "a"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 388
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 389
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 390
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_30

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    goto :goto_31

    :cond_30
    move p0, v0

    :goto_31
    if-nez p0, :cond_34

    return v3

    :cond_34
    if-ne p0, v3, :cond_4c

    const/4 p0, 0x2

    return p0

    :catchall_38
    move-exception p0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "map weather id failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BydWeather"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return v0
.end method

.method private static wanted()I
    .registers 2

    .line 436
    sget v0, Lcom/byd/weather/DynamicWeather;->forced:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8

    .line 437
    sget v0, Lcom/byd/weather/DynamicWeather;->forced:I

    return v0

    .line 439
    :cond_8
    sget v0, Lcom/byd/weather/DynamicWeather;->naviEffect:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 440
    sget v0, Lcom/byd/weather/DynamicWeather;->naviEffect:I

    return v0

    .line 442
    :cond_10
    sget v0, Lcom/byd/weather/DynamicWeather;->localEffect:I

    return v0
.end method

.method private static watch()V
    .registers 9

    .line 544
    sget v0, Lcom/byd/weather/DynamicWeather;->applied:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_92

    invoke-static {}, Lcom/byd/weather/DynamicWeather;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_92

    .line 547
    :cond_d
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->wanted()I

    move-result v0

    .line 548
    sget v1, Lcom/byd/weather/DynamicWeather;->applied:I

    if-eq v0, v1, :cond_19

    .line 550
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->post()V

    return-void

    :cond_19
    const/4 v0, 0x0

    move v1, v0

    .line 554
    :goto_1b
    sget-object v2, Lcom/byd/weather/DynamicWeather;->SCREENS:[I

    array-length v3, v2

    const-string v4, "BydWeather"

    if-ge v0, v3, :cond_71

    .line 555
    aget v3, v2, v0

    invoke-static {v3}, Lcom/byd/weather/DynamicWeather;->operator(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2b

    goto :goto_6e

    .line 559
    :cond_2b
    invoke-static {v3}, Lcom/byd/weather/DynamicWeather;->animationState(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Lcom/byd/weather/DynamicWeather;->canStart(I)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 562
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/byd/weather/DynamicWeather;->startedAt:J

    sub-long/2addr v5, v7

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "screen "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " idle after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s (asked 600s), pick up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/byd/weather/DynamicWeather;->applied:I

    .line 564
    invoke-static {v2}, Lcom/byd/weather/DynamicWeather;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    sget v1, Lcom/byd/weather/DynamicWeather;->applied:I

    invoke-static {v3, v1}, Lcom/byd/weather/DynamicWeather;->startEffect(Ljava/lang/Object;I)Z

    const/4 v1, 0x1

    :cond_6e
    :goto_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_71
    if-eqz v1, :cond_79

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/byd/weather/DynamicWeather;->startedAt:J

    :cond_79
    if-eqz v1, :cond_87

    .line 572
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->allowBurst()Z

    move-result v0

    if-nez v0, :cond_87

    const-string v0, "effect keeps dying instantly with duration=600000 -> engine rejects it, stop watching"

    .line 574
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 578
    :cond_87
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->handler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/byd/weather/DynamicWeather;->WATCHER:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_92
    :goto_92
    return-void
.end method

.method private static weatherId(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "weatherID"

    .line 347
    invoke-static {p0, v1}, Lcom/byd/weather/DynamicWeather;->intField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_d

    return-object v2

    .line 352
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "weatherInfo"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 353
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 354
    instance-of v2, p0, Ljava/util/List;

    if-eqz v2, :cond_31

    .line 355
    check-cast p0, Ljava/util/List;

    .line 356
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    const/4 v2, 0x0

    .line 357
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/byd/weather/DynamicWeather;->intField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_31

    return-object p0

    :catchall_31
    :cond_31
    return-object v0
.end method

.method private static worker()Landroid/os/Handler;
    .registers 3

    .line 424
    const-class v0, Lcom/byd/weather/DynamicWeather;

    monitor-enter v0

    .line 425
    :try_start_3
    sget-object v1, Lcom/byd/weather/DynamicWeather;->worker:Landroid/os/Handler;

    if-nez v1, :cond_1c

    .line 426
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BydWeather"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 428
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/byd/weather/DynamicWeather;->worker:Landroid/os/Handler;

    .line 430
    :cond_1c
    sget-object v1, Lcom/byd/weather/DynamicWeather;->worker:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_20
    move-exception v1

    .line 431
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method
