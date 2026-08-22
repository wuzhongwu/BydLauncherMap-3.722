.class public Lcom/byd/lane/observer/BydLaneObserverImp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/gbl/lane/observer/ILaneObserver;
.implements Lcom/autonavi/gbl/lane/observer/ILaneDiagnosisObserver;
.implements Lcom/autonavi/gbl/lane/observer/ILaneRenderStatusObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "BydLaneObserverImp"


# instance fields
.field private final laneCallbackStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private laneLayerController:Lf/k/l/h/c;

.field private final lanePositionDisableRunnable:Ljava/lang/Runnable;

.field private final laneStatusListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lf/k/l/g/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mLanePositionStatus:I

.field private final mSurfaceViewId:I

.field private naviDiagnosisState:I

.field private projectionX:F

.field private projectionY:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->projectionX:F

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->projectionY:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mLanePositionStatus:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->naviDiagnosisState:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneCallbackStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    new-instance v0, Lf/k/l/k/i;

    invoke-direct {v0, p0}, Lf/k/l/k/i;-><init>(Lcom/byd/lane/observer/BydLaneObserverImp;)V

    iput-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->lanePositionDisableRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mSurfaceViewId:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private allowEnterLaneSr()Z
    .locals 2

    invoke-static {}, Lf/k/r/f/b;->c()Z

    move-result v0

    sget-object v1, Lf/k/l/g/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private enterLane(Lcom/autonavi/gbl/map/MapView;)V
    .locals 5

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorStyle()Lcom/autonavi/gbl/map/OperatorStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/OperatorStyle;->getMapStyle()Lcom/autonavi/gbl/map/model/MapStyleParam;

    move-result-object p1

    new-instance v0, Lcom/autonavi/gbl/lane/model/EnterLaneParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/lane/model/EnterLaneParam;-><init>()V

    iget p1, p1, Lcom/autonavi/gbl/map/model/MapStyleParam;->time:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->mapStyle:Lcom/autonavi/gbl/lane/model/LaneMapStyleParam;

    iput v2, p1, Lcom/autonavi/gbl/lane/model/LaneMapStyleParam;->dayTime:I

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->mapStyle:Lcom/autonavi/gbl/lane/model/LaneMapStyleParam;

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneMapStyleParam;->dayTime:I

    :goto_0
    iget-object p1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->animation:Lcom/autonavi/gbl/lane/model/LaneAnimationParam;

    iput-boolean v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->enable:Z

    const-wide/16 v3, 0x3e8

    iput-wide v3, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->durationTime:J

    invoke-static {}, Lf/k/l/g/a/b;->a()Z

    move-result p1

    iget-object v1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->animation:Lcom/autonavi/gbl/lane/model/LaneAnimationParam;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneLayerController:Lf/k/l/h/c;

    invoke-virtual {p1}, Lf/k/l/h/c;->j()F

    move-result p1

    goto :goto_1

    :cond_1
    const p1, 0x41987ae1    # 19.06f

    :goto_1
    iput p1, v1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->zoomLevel:F

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/location/LocationController;->getLocInfo()Lcom/autonavi/gbl/pos/model/LocInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/autonavi/gbl/pos/model/LocInfo;->matchInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->animation:Lcom/autonavi/gbl/lane/model/LaneAnimationParam;

    iget-object p1, p1, Lcom/autonavi/gbl/pos/model/LocInfo;->matchInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/pos/model/LocMatchInfo;

    iget p1, p1, Lcom/autonavi/gbl/pos/model/LocMatchInfo;->course:F

    iput p1, v1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->rollAngle:F

    goto :goto_2

    :cond_2
    iget-object p1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->animation:Lcom/autonavi/gbl/lane/model/LaneAnimationParam;

    const/4 v1, 0x0

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->rollAngle:F

    :goto_2
    iget-object p1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->animation:Lcom/autonavi/gbl/lane/model/LaneAnimationParam;

    const/high16 v1, 0x42820000    # 65.0f

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->pitchAngle:F

    iget v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->projectionX:F

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->projectionX:F

    iget v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->projectionY:F

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->projectionY:F

    const/high16 p1, 0x41880000    # 17.0f

    iput p1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneParam;->zoomLevel:F

    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneLayerController:Lf/k/l/h/c;

    invoke-virtual {p1, v0}, Lf/k/l/h/c;->h(Lcom/autonavi/gbl/lane/model/EnterLaneParam;)Z

    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneLayerController:Lf/k/l/h/c;

    invoke-virtual {p1, v2}, Lf/k/l/h/c;->t(Z)V

    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    sget-object v0, Lf/k/l/k/h;->a:Lf/k/l/k/h;

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private exitLane(Lcom/autonavi/gbl/map/MapView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorStyle()Lcom/autonavi/gbl/map/OperatorStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/OperatorStyle;->getMapStyle()Lcom/autonavi/gbl/map/model/MapStyleParam;

    move-result-object p1

    new-instance v0, Lcom/autonavi/gbl/lane/model/ExitLaneParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/lane/model/ExitLaneParam;-><init>()V

    iget p1, p1, Lcom/autonavi/gbl/map/model/MapStyleParam;->time:I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->mapStyle:Lcom/autonavi/gbl/lane/model/LaneMapStyleParam;

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneMapStyleParam;->dayTime:I

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->mapStyle:Lcom/autonavi/gbl/lane/model/LaneMapStyleParam;

    const/4 v2, 0x1

    iput v2, p1, Lcom/autonavi/gbl/lane/model/LaneMapStyleParam;->dayTime:I

    :goto_0
    iget-object p1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->mapStyle:Lcom/autonavi/gbl/lane/model/LaneMapStyleParam;

    const/4 v2, 0x4

    iput v2, p1, Lcom/autonavi/gbl/lane/model/LaneMapStyleParam;->state:I

    iget-object p1, v0, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->animation:Lcom/autonavi/gbl/lane/model/LaneAnimationParam;

    iput-boolean v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->enable:Z

    const-wide/16 v1, 0x1

    iput-wide v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->durationTime:J

    const v1, -0x39e3c400    # -9999.0f

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->zoomLevel:F

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->pitchAngle:F

    iget v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->projectionX:F

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->projectionX:F

    iget v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->projectionY:F

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneAnimationParam;->projectionY:F

    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneLayerController:Lf/k/l/h/c;

    invoke-virtual {p1, v0}, Lf/k/l/h/c;->i(Lcom/autonavi/gbl/lane/model/ExitLaneParam;)Z

    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    sget-object v0, Lf/k/l/k/c;->a:Lf/k/l/k/c;

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic lambda$enterLane$0(Ljava/lang/Integer;Lf/k/l/g/b/d;)V
    .locals 0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lf/k/l/g/b/d;->b(Z)V

    return-void
.end method

.method public static synthetic lambda$exitLane$1(Ljava/lang/Integer;Lf/k/l/g/b/d;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lf/k/l/g/b/d;->b(Z)V

    return-void
.end method

.method public static synthetic lambda$new$4(Ljava/lang/Integer;Lf/k/l/g/b/d;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lf/k/l/g/b/d;->c(Z)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 3

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    sget-object v1, Lf/k/l/k/b;->a:Lf/k/l/k/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onLaneLndsDataDistance$6(Lcom/autonavi/gbl/lane/model/LaneLndsDataDistance;Ljava/lang/Integer;Lf/k/l/g/b/d;)V
    .locals 0

    iget-object p2, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    iget p1, p1, Lcom/autonavi/gbl/lane/model/LaneLndsDataDistance;->distance:F

    invoke-interface {p3, p2, p1}, Lf/k/l/g/b/d;->a(ZF)V

    return-void
.end method

.method public static synthetic lambda$onLaneLndsDataDistance$7(Ljava/lang/Integer;Lf/k/l/g/b/d;)V
    .locals 0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lf/k/l/g/b/d;->c(Z)V

    return-void
.end method

.method private synthetic lambda$onLaneStatus$2(Ljava/lang/Integer;Lf/k/l/g/b/d;)V
    .locals 0

    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-interface {p2, p1}, Lf/k/l/g/b/d;->c(Z)V

    return-void
.end method

.method public static synthetic lambda$onLaneStatus$3(Lcom/autonavi/gbl/lane/model/LaneStatusInfo;Ljava/lang/Integer;Lf/k/l/g/b/d;)V
    .locals 0

    invoke-interface {p2, p0}, Lf/k/l/g/b/d;->onLaneStatus(Lcom/autonavi/gbl/lane/model/LaneStatusInfo;)V

    return-void
.end method

.method public static synthetic lambda$onUpdateNaviDiagnosis$8(Lcom/autonavi/gbl/lane/model/LaneNaviDiagnosisInfo;Ljava/lang/Integer;Lf/k/l/g/b/d;)V
    .locals 0

    invoke-interface {p2, p0}, Lf/k/l/g/b/d;->d(Lcom/autonavi/gbl/lane/model/LaneNaviDiagnosisInfo;)V

    return-void
.end method

.method private setLaneZoomMode()V
    .locals 4

    new-instance v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/MapviewModeParam;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    const v1, 0x4188cccd    # 17.1f

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v2, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mSurfaceViewId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/autosdk/bussiness/map/MapController;->setMapMode(ILcom/autonavi/gbl/map/model/MapviewModeParam;Z)V

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/lane/observer/BydLaneObserverImp;->lambda$new$5()V

    return-void
.end method

.method public synthetic b(Lcom/autonavi/gbl/lane/model/LaneLndsDataDistance;Ljava/lang/Integer;Lf/k/l/g/b/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/byd/lane/observer/BydLaneObserverImp;->lambda$onLaneLndsDataDistance$6(Lcom/autonavi/gbl/lane/model/LaneLndsDataDistance;Ljava/lang/Integer;Lf/k/l/g/b/d;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Integer;Lf/k/l/g/b/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/byd/lane/observer/BydLaneObserverImp;->lambda$onLaneStatus$2(Ljava/lang/Integer;Lf/k/l/g/b/d;)V

    return-void
.end method

.method public doDnpRoadControl(I)V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mSurfaceViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mLanePositionStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneLayerController:Lf/k/l/h/c;

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/4 v1, 0x4

    iget-object v4, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x5

    iget v4, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->projectionX:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x6

    iget v4, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->projectionY:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "BydLaneObserverImp"

    const-string v4, "doDnpRoadControl id:{?}  oldState:{?}  newState:{?}  notNull:{?}  inLane:{?} animationX:{?} {?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneLayerController:Lf/k/l/h/c;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mLanePositionStatus:I

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mSurfaceViewId:I

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    if-ne p1, v3, :cond_1

    iput v3, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mLanePositionStatus:I

    invoke-direct {p0, v0}, Lcom/byd/lane/observer/BydLaneObserverImp;->exitLane(Lcom/autonavi/gbl/map/MapView;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iput v2, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mLanePositionStatus:I

    invoke-direct {p0}, Lcom/byd/lane/observer/BydLaneObserverImp;->setLaneZoomMode()V

    invoke-direct {p0, v0}, Lcom/byd/lane/observer/BydLaneObserverImp;->enterLane(Lcom/autonavi/gbl/map/MapView;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getNaviDiagnosisState()I
    .locals 1

    iget v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->naviDiagnosisState:I

    return v0
.end method

.method public isSDKInLane()Z
    .locals 1

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/byd/lane/observer/BydLaneObserverImp;->allowEnterLaneSr()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onEnterLaneActionStatus(JLcom/autonavi/gbl/lane/model/LaneTransitionInfo;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    iget p1, p3, Lcom/autonavi/gbl/lane/model/LaneTransitionInfo;->status:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "BydLaneObserverImp"

    const-string p2, "onEnterLaneActionStatus id:{?} status:{?}"

    invoke-static {p1, p2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneLayerController:Lf/k/l/h/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/k/l/h/c;->aa()V

    :cond_0

    return-void
.end method

.method public onExitLaneActionStatus(JLcom/autonavi/gbl/lane/model/LaneTransitionInfo;)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    iget p1, p3, Lcom/autonavi/gbl/lane/model/LaneTransitionInfo;->status:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "BydLaneObserverImp"

    const-string p2, "onExitLaneActionStatus id:{?} status:{?}"

    invoke-static {p1, p2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneLayerController:Lf/k/l/h/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/k/l/h/c;->aa()V

    :cond_0

    return-void
.end method

.method public onLaneLndsDataDistance(Lcom/autonavi/gbl/lane/model/LaneLndsDataDistanceInfo;)V
    .locals 6

    iget-object v0, p1, Lcom/autonavi/gbl/lane/model/LaneLndsDataDistanceInfo;->distance:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/autosdk/bussiness/logic/BaseLogic;->isNullList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/byd/lane/observer/BydLaneObserverImp;->allowEnterLaneSr()Z

    move-result v0

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/LaneLndsDataDistanceInfo;->distance:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/lane/model/LaneLndsDataDistance;

    const/16 v2, 0xe

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/autosdk/bussiness/utils/LogIntervalUtil;->downConversion(SI)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p1, Lcom/autonavi/gbl/lane/model/LaneLndsDataDistance;->distance:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x2

    iget v5, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mLanePositionStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "BydLaneObserverImp"

    const-string v5, "LNDSDataDistance:{?}  showLane:{?} LaneStatus:{?}"

    invoke-static {v4, v5, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneCallbackStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/autonavi/gbl/lane/model/LaneLndsDataDistance;->distance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    # 本屏已具备车道级数据，通知仪表按"始终车道级"自行进入
    iget v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mSurfaceViewId:I

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->onLaneDataReady(I)V

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->lanePositionDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    new-instance v1, Lf/k/l/k/a;

    invoke-direct {v1, p0, p1}, Lf/k/l/k/a;-><init>(Lcom/byd/lane/observer/BydLaneObserverImp;Lcom/autonavi/gbl/lane/model/LaneLndsDataDistance;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->lanePositionDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    sget-object v0, Lf/k/l/k/e;->a:Lf/k/l/k/e;

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onLanePositionStatus(I)V
    .locals 5
    .param p1    # I
        .annotation build Lcom/autonavi/gbl/lane/model/LanePositionStatus$LanePositionStatus1;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mSurfaceViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "BydLaneObserverImp"

    const-string v4, "onLanePositionStatus#LanePositionStatus:{?},  id:{?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v3, :cond_0

    move v2, v3

    :cond_0
    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->lanePositionDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->lanePositionDisableRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onLaneStatus(Lcom/autonavi/gbl/lane/model/LaneStatusInfo;)V
    .locals 3

    invoke-static {p1}, Lf/k/l/l/i;->d(Lcom/autonavi/gbl/lane/model/LaneStatusInfo;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p1, Lcom/autonavi/gbl/lane/model/LaneStatusInfo;->enter:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Lcom/autonavi/gbl/lane/model/LaneStatusInfo;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lf/k/l/g/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->naviDiagnosisState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "BydLaneObserverImp"

    const-string v2, "onLaneStatus enter:{?} status:{?}  LaneSetting:{?}  diagnosisState:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneCallbackStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p1, Lcom/autonavi/gbl/lane/model/LaneStatusInfo;->enter:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->lanePositionDisableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p1, Lcom/autonavi/gbl/lane/model/LaneStatusInfo;->enter:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/byd/lane/observer/BydLaneObserverImp;->allowEnterLaneSr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p1, Lcom/autonavi/gbl/lane/model/LaneStatusInfo;->enter:Z

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    new-instance v1, Lf/k/l/k/f;

    invoke-direct {v1, p0}, Lf/k/l/k/f;-><init>(Lcom/byd/lane/observer/BydLaneObserverImp;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1
    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    new-instance v1, Lf/k/l/k/d;

    invoke-direct {v1, p1}, Lf/k/l/k/d;-><init>(Lcom/autonavi/gbl/lane/model/LaneStatusInfo;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onUpdateNaviDiagnosis(Lcom/autonavi/gbl/lane/model/LaneNaviDiagnosisInfo;)V
    .locals 3

    iget v0, p1, Lcom/autonavi/gbl/lane/model/LaneNaviDiagnosisInfo;->naviState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iput v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->naviDiagnosisState:I

    :cond_1
    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    new-instance v2, Lf/k/l/k/g;

    invoke-direct {v2, p1}, Lf/k/l/k/g;-><init>(Lcom/autonavi/gbl/lane/model/LaneNaviDiagnosisInfo;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget p1, p1, Lcom/autonavi/gbl/lane/model/LaneNaviDiagnosisInfo;->naviState:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->naviDiagnosisState:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "BydLaneObserverImp"

    const-string v1, "onUpdateNaviDiagnosis cur:{?} :last:{?}"

    invoke-static {p1, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resetState()V
    .locals 2

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mIsInLane:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneCallbackStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mLanePositionStatus:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->naviDiagnosisState:I

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lf/k/l/i/c;->c()Lf/k/l/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/l/i/c;->a()V

    return-void
.end method

.method public setLaneStatusListener(Lf/k/l/g/b/d;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/k/l/g/b/d;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    iget v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->mSurfaceViewId:I

    mul-int/2addr p2, v0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneStatusListeners:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setLayerController(Lf/k/l/g/b/b;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lf/k/l/g/b/b;->c(Lcom/autonavi/gbl/lane/observer/ILaneRenderStatusObserver;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneLayerController:Lf/k/l/h/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lf/k/l/h/c;->w(Lcom/autonavi/gbl/lane/observer/ILaneRenderStatusObserver;)V

    :cond_1
    :goto_0
    check-cast p1, Lf/k/l/h/c;

    iput-object p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->laneLayerController:Lf/k/l/h/c;

    return-void
.end method

.method public setMapCenter(FF)V
    .locals 0

    iput p1, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->projectionX:F

    iput p2, p0, Lcom/byd/lane/observer/BydLaneObserverImp;->projectionY:F

    return-void
.end method
