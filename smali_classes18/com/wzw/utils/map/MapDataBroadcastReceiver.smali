.class public Lcom/wzw/utils/map/MapDataBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MapDataBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MapDataBroadcastReceiver"

.field private static instance:Lcom/wzw/utils/map/MapDataBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    const-string v1, "com.wzw.bydmodule.MAP_DATA_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 3

    .line 45
    const-string v0, "MapDataBroadcastReceiver"

    new-instance v1, Lcom/wzw/utils/map/MapDataBroadcastReceiver;

    invoke-direct {v1}, Lcom/wzw/utils/map/MapDataBroadcastReceiver;-><init>()V

    sput-object v1, Lcom/wzw/utils/map/MapDataBroadcastReceiver;->instance:Lcom/wzw/utils/map/MapDataBroadcastReceiver;

    .line 47
    :try_start_0
    const-string v1, "register MapDataBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v1, Lcom/wzw/utils/map/MapDataBroadcastReceiver;->instance:Lcom/wzw/utils/map/MapDataBroadcastReceiver;

    invoke-static {}, Lcom/wzw/utils/map/MapDataBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 50
    const-string v1, "register MapDataBroadcastReceiver error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static unRegister(Landroid/content/Context;)V
    .locals 2

    .line 56
    sget-object v0, Lcom/wzw/utils/map/MapDataBroadcastReceiver;->instance:Lcom/wzw/utils/map/MapDataBroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    const-string v0, "unregister MapDataBroadcastReceiver"

    const-string v1, "MapDataBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :try_start_0
    sget-object v0, Lcom/wzw/utils/map/MapDataBroadcastReceiver;->instance:Lcom/wzw/utils/map/MapDataBroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 63
    const-string v0, "unregister MapDataBroadcastReceiver error"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "action:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MapDataBroadcastReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string p1, "com.wzw.bydmodule.MAP_DATA_CHANGE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 22
    const-string p0, "INSTRUMENT_UI_INTERFACE"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 24
    invoke-static {p0}, Lcom/wzw/utils/map/MapSharedPreferences;->changeInstrumentUiInterface(I)V

    invoke-static {}, Lg/a/c/p;->relayout()V

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->reapply()V

    .line 26
    :cond_0
    const-string p0, "INSTRUMENT_SMALL_ZOOM_LEVEL"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x41880000    # 17.0f

    .line 27
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p0

    .line 28
    invoke-static {p0}, Lcom/wzw/utils/map/MapSharedPreferences;->changeInstrumentSmallZoomLevel(F)V

    .line 30
    :cond_1
    const-string p0, "STATUS_BAR_BG"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 31
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 32
    invoke-static {p0}, Lcom/wzw/utils/map/MapSharedPreferences;->changeStatusBarBg(Z)V

    :cond_2
    return-void
.end method
