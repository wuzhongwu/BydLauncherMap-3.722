.class public Lcom/byd/lane/ClusterLaneMode;
.super Ljava/lang/Object;
.source "ClusterLaneMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final sApplier:Lcom/byd/lane/ClusterLaneMode;

.field private static final sApplierLate:Lcom/byd/lane/ClusterLaneMode;

.field private static final sHandler:Landroid/os/Handler;

.field private static final sReenter:Lcom/byd/lane/ClusterLaneMode;

.field private static final sApplierLate2:Lcom/byd/lane/ClusterLaneMode;

.field private static final sAutoEnter:Lcom/byd/lane/ClusterLaneMode;

.field private static sCruiseLane:Landroid/view/View;

.field private static sBusy:Z

.field private static sMode:I

.field private static sService:Lcom/byd/lane/LaneSdkServiceImp;

.field private static sShowingLane:Z


# instance fields
.field private final kind:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, -0x1

    sput v0, Lcom/byd/lane/ClusterLaneMode;->sMode:I

    const/4 v0, 0x0

    sput-object v0, Lcom/byd/lane/ClusterLaneMode;->sService:Lcom/byd/lane/LaneSdkServiceImp;

    sput-boolean v0, Lcom/byd/lane/ClusterLaneMode;->sShowingLane:Z

    sput-boolean v0, Lcom/byd/lane/ClusterLaneMode;->sBusy:Z

    new-instance v0, Lcom/byd/lane/ClusterLaneMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/byd/lane/ClusterLaneMode;-><init>(I)V

    sput-object v0, Lcom/byd/lane/ClusterLaneMode;->sApplier:Lcom/byd/lane/ClusterLaneMode;

    new-instance v0, Lcom/byd/lane/ClusterLaneMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/byd/lane/ClusterLaneMode;-><init>(I)V

    sput-object v0, Lcom/byd/lane/ClusterLaneMode;->sApplierLate:Lcom/byd/lane/ClusterLaneMode;

    new-instance v0, Lcom/byd/lane/ClusterLaneMode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/byd/lane/ClusterLaneMode;-><init>(I)V

    sput-object v0, Lcom/byd/lane/ClusterLaneMode;->sReenter:Lcom/byd/lane/ClusterLaneMode;

    new-instance v0, Lcom/byd/lane/ClusterLaneMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/byd/lane/ClusterLaneMode;-><init>(I)V

    sput-object v0, Lcom/byd/lane/ClusterLaneMode;->sApplierLate2:Lcom/byd/lane/ClusterLaneMode;

    new-instance v0, Lcom/byd/lane/ClusterLaneMode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/byd/lane/ClusterLaneMode;-><init>(I)V

    sput-object v0, Lcom/byd/lane/ClusterLaneMode;->sAutoEnter:Lcom/byd/lane/ClusterLaneMode;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/byd/lane/ClusterLaneMode;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/byd/lane/ClusterLaneMode;->kind:I

    return-void
.end method

.method public static attach(Lcom/byd/lane/LaneSdkServiceImp;)V
    .locals 0

    sput-object p0, Lcom/byd/lane/ClusterLaneMode;->sService:Lcom/byd/lane/LaneSdkServiceImp;

    return-void
.end method

.method private static prefs()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "byd_cluster_lane"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getMode()I
    .locals 3

    sget v0, Lcom/byd/lane/ClusterLaneMode;->sMode:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/byd/lane/ClusterLaneMode;->sMode:I

    return v0
.end method

.method public static setMode(I)V
    .locals 2

    sput p0, Lcom/byd/lane/ClusterLaneMode;->sMode:I

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    sget-object v0, Lcom/byd/lane/ClusterLaneMode;->sService:Lcom/byd/lane/LaneSdkServiceImp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byd/lane/LaneSdkServiceImp;->applyClusterLaneMode()V

    :cond_1
    return-void
.end method

.method public static onLaneDataReady(I)V
    .locals 4

    # 仪表设为"始终车道级"时自行进入，不受主屏手动退出状态影响
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->isInLane()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-boolean v0, Lcom/byd/lane/ClusterLaneMode;->sBusy:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/byd/lane/ClusterLaneMode;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/byd/lane/ClusterLaneMode;->sAutoEnter:Lcom/byd/lane/ClusterLaneMode;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static shouldKeepLaneNavi(I)Z
    .locals 2

    # 仅主屏退出时判断：仪表设为"始终车道级"且仍在车道级，
    # 就不能关全局共享的 LaneNaviService
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->getMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v1, Lcom/byd/lane/ClusterLaneMode;->sService:Lcom/byd/lane/LaneSdkServiceImp;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/byd/lane/LaneSdkServiceImp;->clusterObserver()Lcom/byd/lane/observer/BydLaneObserverImp;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    invoke-virtual {v1}, Lcom/byd/lane/observer/BydLaneObserverImp;->isSDKInLane()Z

    move-result v0

    return v0
.end method

.method public static bindCruiseLane(Landroid/view/View;)V
    .locals 0

    sput-object p0, Lcom/byd/lane/ClusterLaneMode;->sCruiseLane:Landroid/view/View;

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->applyCruiseOffset()V

    return-void
.end method

.method public static applyCruiseOffset()V
    .locals 5

    sget-object v0, Lcom/byd/lane/ClusterLaneMode;->sCruiseLane:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "cruise_dx"

    invoke-static {v1}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const-string v1, "cruise_dy"

    invoke-static {v1}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    # 平移会超出父容器边界被裁切，且不触发完整重绘，需关掉祖先裁剪并强制刷新
    move-object v4, v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    move-object v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/byd/lane/ClusterLaneMode;->sCruiseLane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public static isInLane()Z
    .locals 1

    sget-boolean v0, Lcom/byd/lane/ClusterLaneMode;->sShowingLane:Z

    return v0
.end method

.method public static setShowingLane(Z)V
    .locals 0

    sput-boolean p0, Lcom/byd/lane/ClusterLaneMode;->sShowingLane:Z

    return-void
.end method

.method public static setBusy(Z)V
    .locals 0

    sput-boolean p0, Lcom/byd/lane/ClusterLaneMode;->sBusy:Z

    return-void
.end method

.method public static fullKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    # 卡片/巡航条位置：普通模式与车道级共用一份，也不分导航类型
    const-string v0, "panel_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_raw

    const-string v0, "cruise_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_shared

    :cond_raw
    return-object p0

    :cond_shared
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->isInLane()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lane_"

    goto :goto_0

    :cond_0
    const-string v0, "norm_"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultFor(Ljava/lang/String;)F
    .locals 3

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->isInLane()Z

    move-result v0

    const-string v1, "zoom"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_zoom_end

    if-eqz v0, :cond_zoom_norm

    const v2, 0x419c7ae1    # 19.56f

    return v2

    :cond_zoom_norm
    const/high16 v2, 0x41880000    # 17.0f

    return v2

    :cond_zoom_end
    const-string v1, "pitch"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_pitch_end

    if-eqz v0, :cond_pitch_norm

    const/high16 v2, 0x42920000    # 73.0f

    return v2

    :cond_pitch_norm
    const/high16 v2, 0x42b40000    # 90.0f

    return v2

    :cond_pitch_end
    const-string v1, "proj_y"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_y_end

    if-eqz v0, :cond_y_norm

    const v2, 0x3f35c28f    # 0.71f

    return v2

    :cond_y_norm
    const v2, 0x3f28f5c3    # 0.66f

    return v2

    :cond_y_end
    const-string v1, "proj_x"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_x_end

    invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getInstrumentUiInterface()I

    move-result v2

    const/4 v1, 0x2

    if-ne v2, v1, :cond_x_center

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_x_center

    const v2, 0x3f560419    # 0.836f

    return v2

    :cond_x_center
    const/high16 v2, 0x3f000000    # 0.5f

    return v2

    :cond_x_end
    const-string v1, "panel_dy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dy_end

    const/high16 v2, 0x42480000    # 50.0f

    return v2

    :cond_dy_end
    const-string v1, "cruise_dy"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cdy_end

    const/high16 v2, 0x42c80000    # 100.0f

    return v2

    :cond_cdy_end
    const/4 v2, 0x0

    return v2
.end method

.method public static getAuto(Ljava/lang/String;)F
    .locals 3

    invoke-static {p0}, Lcom/byd/lane/ClusterLaneMode;->defaultFor(Ljava/lang/String;)F

    move-result v0

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->prefs()Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/byd/lane/ClusterLaneMode;->fullKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static setAuto(Ljava/lang/String;F)V
    .locals 2

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/byd/lane/ClusterLaneMode;->fullKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-string v0, "cruise_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cruise_end

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->applyCruiseOffset()V

    return-void

    :cond_cruise_end
    const-string v0, "panel_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/a/c/p;->relayout()V

    return-void

    :cond_1
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->applyToCluster()V

    return-void
.end method

.method public static paramKeys()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "zoom"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pitch"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "proj_x"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proj_y"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "panel_dx"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "panel_dy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cruise_dx"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cruise_dy"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static resetParams()V
    .locals 4

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->prefs()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->paramKeys()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/byd/lane/ClusterLaneMode;->fullKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static {}, Lg/a/c/p;->relayout()V

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->reapply()V

    return-void
.end method

.method public static offsetPx(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, p1

    return v0
.end method

.method public static adjust(II)I
    .locals 2

    # 只调小屏导航的卡片，全屏导航保持原厂位置
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_small

    return p1

    :cond_small
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "panel_dy"

    invoke-static {v0, p1}, Lcom/byd/lane/ClusterLaneMode;->offsetPx(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    const-string v0, "panel_dx"

    invoke-static {v0, p1}, Lcom/byd/lane/ClusterLaneMode;->offsetPx(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    return p1
.end method

.method private static freeLaneCamera()V
    .locals 2

    sget-object v0, Lcom/byd/lane/ClusterLaneMode;->sService:Lcom/byd/lane/LaneSdkServiceImp;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/byd/lane/LaneSdkServiceImp;->clusterLaneCtrl()Lf/k/l/h/c;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/k/l/h/c;->q(Z)Z

    invoke-virtual {v0, v1}, Lf/k/l/h/c;->r(Z)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget v0, p0, Lcom/byd/lane/ClusterLaneMode;->kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_notauto

    sget-object v0, Lcom/byd/lane/ClusterLaneMode;->sService:Lcom/byd/lane/LaneSdkServiceImp;

    if-eqz v0, :cond_done

    invoke-virtual {v0}, Lcom/byd/lane/LaneSdkServiceImp;->applyClusterLaneMode()V

    return-void

    :cond_notauto
    const/4 v1, 0x1

    if-ne v0, v1, :cond_apply

    sget-object v0, Lcom/byd/lane/ClusterLaneMode;->sService:Lcom/byd/lane/LaneSdkServiceImp;

    if-eqz v0, :cond_done

    invoke-virtual {v0}, Lcom/byd/lane/LaneSdkServiceImp;->reenterClusterLane()V

    return-void

    :cond_apply
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->applyToCluster()V

    :cond_done
    return-void
.end method

.method public static scheduleApply(Z)V
    .locals 4

    sget-boolean v0, Lcom/byd/lane/ClusterLaneMode;->sBusy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/byd/lane/ClusterLaneMode;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/byd/lane/ClusterLaneMode;->sApplierLate:Lcom/byd/lane/ClusterLaneMode;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    # 引擎进入动画 1000ms，单次补偿会被尾帧覆盖，再补两次
    sget-object v1, Lcom/byd/lane/ClusterLaneMode;->sApplierLate2:Lcom/byd/lane/ClusterLaneMode;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x960

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v1, Lcom/byd/lane/ClusterLaneMode;->sApplier:Lcom/byd/lane/ClusterLaneMode;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->reapply()V

    return-void
.end method

.method public static reapply()V
    .locals 4

    sget-object v0, Lcom/byd/lane/ClusterLaneMode;->sHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->isInLane()Z

    move-result v1

    if-eqz v1, :cond_normal

    sget-object v1, Lcom/byd/lane/ClusterLaneMode;->sReenter:Lcom/byd/lane/ClusterLaneMode;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_normal
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->applyToCluster()V

    sget-object v1, Lcom/byd/lane/ClusterLaneMode;->sApplier:Lcom/byd/lane/ClusterLaneMode;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v1, Lcom/byd/lane/ClusterLaneMode;->sApplierLate:Lcom/byd/lane/ClusterLaneMode;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static applyToCluster()V
    .locals 6

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->isInLane()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->freeLaneCamera()V

    :cond_1
    const-string v2, "proj_x"

    invoke-static {v2}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v2

    const-string v3, "proj_y"

    invoke-static {v3}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFF)V

    const-string v2, "zoom"

    invoke-static {v2}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/bussiness/map/MapController;->setZoomLevel(IF)V

    const-string v2, "pitch"

    invoke-static {v2}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v2}, Lcom/autonavi/gbl/map/OperatorPosture;->setPitchAngle(F)V

    :cond_2
    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    return-void
.end method
