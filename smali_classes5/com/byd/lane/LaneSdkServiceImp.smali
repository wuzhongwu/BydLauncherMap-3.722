.class public Lcom/byd/lane/LaneSdkServiceImp;
.super Lf/h/q/e;
.source "SourceFile"

# interfaces
.implements Lf/k/l/g/b/c;
.implements Lcom/autonavi/gbl/lane/observer/ILaneDiagnosisObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "LaneSdkServiceImp"


# instance fields
.field private final hashLaneResource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byd/lane/observer/LaneResourceProxyImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final laneLayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lf/k/l/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private laneNaviService:Lcom/autonavi/gbl/lane/LaneNaviService;

.field private final laneObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/byd/lane/observer/BydLaneObserverImp;",
            ">;"
        }
    .end annotation
.end field

.field private final laneRenderServiceHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/gbl/lane/LaneRenderService;",
            ">;"
        }
    .end annotation
.end field

.field private mLaneService:Lcom/autonavi/gbl/lane/LaneService;


# direct methods
.method public constructor <init>(Lf/h/q/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/h/q/e;-><init>(Lf/h/q/d;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneRenderServiceHashMap:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->hashLaneResource:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneLayers:Ljava/util/Map;

    invoke-static {p0}, Lcom/byd/lane/ClusterLaneMode;->attach(Lcom/byd/lane/LaneSdkServiceImp;)V

    return-void
.end method

.method private static pushCluster(Lcom/byd/lane/observer/BydLaneObserverImp;I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_state

    invoke-virtual {p0}, Lcom/byd/lane/observer/BydLaneObserverImp;->isSDKInLane()Z

    move-result v2

    :cond_state
    invoke-static {v2}, Lcom/byd/lane/ClusterLaneMode;->setShowingLane(Z)V

    const-string v0, "proj_x"

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v0

    const-string v1, "proj_y"

    invoke-static {v1}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/byd/lane/observer/BydLaneObserverImp;->setMapCenter(FF)V

    invoke-virtual {p0, p1}, Lcom/byd/lane/observer/BydLaneObserverImp;->doDnpRoadControl(I)V

    invoke-static {v2}, Lcom/byd/lane/ClusterLaneMode;->scheduleApply(Z)V

    return-void
.end method

.method public clusterObserver()Lcom/byd/lane/observer/BydLaneObserverImp;
    .locals 2

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/lane/observer/BydLaneObserverImp;

    return-object v0
.end method

.method public clusterLaneCtrl()Lf/k/l/h/c;
    .locals 2

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneLayers:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/k/l/h/c;

    return-object v0
.end method

.method public applyClusterLaneMode()V
    .locals 3

    invoke-virtual {p0}, Lcom/byd/lane/LaneSdkServiceImp;->clusterObserver()Lcom/byd/lane/observer/BydLaneObserverImp;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/byd/lane/observer/BydLaneObserverImp;->isSDKInLane()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-static {v0, v2}, Lcom/byd/lane/LaneSdkServiceImp;->pushCluster(Lcom/byd/lane/observer/BydLaneObserverImp;I)V

    return-void
.end method

.method public reenterClusterLane()V
    .locals 2

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->isInLane()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/byd/lane/LaneSdkServiceImp;->clusterObserver()Lcom/byd/lane/observer/BydLaneObserverImp;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    # 退出->进入期间抑制"按普通模式贴参数"，否则会把刚进入的车道级改坏
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/byd/lane/ClusterLaneMode;->setBusy(Z)V

    invoke-static {v0, v1}, Lcom/byd/lane/LaneSdkServiceImp;->pushCluster(Lcom/byd/lane/observer/BydLaneObserverImp;I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byd/lane/LaneSdkServiceImp;->pushCluster(Lcom/byd/lane/observer/BydLaneObserverImp;I)V

    invoke-static {v1}, Lcom/byd/lane/ClusterLaneMode;->setBusy(Z)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/byd/lane/ClusterLaneMode;->scheduleApply(Z)V

    return-void
.end method

.method private createLaneRenderService(I)Lcom/autonavi/gbl/lane/LaneRenderService;
    .locals 4

    invoke-direct {p0}, Lcom/byd/lane/LaneSdkServiceImp;->isInitSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneRenderServiceHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/lane/LaneRenderService;

    if-nez v0, :cond_1

    new-instance v0, Lcom/autonavi/gbl/lane/model/LaneRenderParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/lane/model/LaneRenderParam;-><init>()V

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2LaneRender(I)I

    move-result v2

    iput v2, v0, Lcom/autonavi/gbl/lane/model/LaneRenderParam;->screen:I

    iget-object v2, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {v2, v0}, Lcom/autonavi/gbl/lane/LaneService;->createLaneRenderService(Lcom/autonavi/gbl/lane/model/LaneRenderParam;)Lcom/autonavi/gbl/lane/LaneRenderService;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/byd/lane/observer/LaneResourceProxyImpl;

    invoke-direct {v1, p1}, Lcom/byd/lane/observer/LaneResourceProxyImpl;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/lane/LaneRenderService;->setResourceProxy(Lcom/autonavi/gbl/lane/observer/ILaneResourceProxy;)Z

    iget-object v2, p0, Lcom/byd/lane/LaneSdkServiceImp;->hashLaneResource:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/autonavi/gbl/lane/model/LaneRenderInitParam;

    invoke-direct {v1}, Lcom/autonavi/gbl/lane/model/LaneRenderInitParam;-><init>()V

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/lane/LaneRenderService;->init(Lcom/autonavi/gbl/lane/model/LaneRenderInitParam;)Z

    new-instance v1, Lcom/autonavi/gbl/lane/model/LaneMapViewParam;

    invoke-direct {v1}, Lcom/autonavi/gbl/lane/model/LaneMapViewParam;-><init>()V

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    iput v2, v1, Lcom/autonavi/gbl/lane/model/LaneMapViewParam;->mapEngineId:I

    const-string v2, "style_35"

    iput-object v2, v1, Lcom/autonavi/gbl/lane/model/LaneMapViewParam;->dayStyleName:Ljava/lang/String;

    const-string v2, "style_36"

    iput-object v2, v1, Lcom/autonavi/gbl/lane/model/LaneMapViewParam;->nightStyleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/lane/LaneRenderService;->attachMapView(Lcom/autonavi/gbl/lane/model/LaneMapViewParam;)Z

    iget-object v1, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneRenderServiceHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object v1
.end method

.method private getService()Lcom/autonavi/gbl/lane/LaneService;
    .locals 2

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/lane/LaneService;

    iput-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    :cond_0
    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    return-object v0
.end method

.method private isInitSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/byd/lane/LaneSdkServiceImp;->getService()Lcom/autonavi/gbl/lane/LaneService;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    :cond_0
    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/autonavi/gbl/lane/LaneService;->isInit()I

    move-result v0

    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static synthetic lambda$stopLane$2(Ljava/lang/Integer;Lf/k/l/h/c;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lf/k/l/h/c;->g(Z)V

    return-void
.end method

.method public static synthetic lambda$stopLane$3(Ljava/lang/Integer;Lcom/byd/lane/observer/LaneResourceProxyImpl;)V
    .locals 0

    invoke-virtual {p1}, Lcom/byd/lane/observer/LaneResourceProxyImpl;->clearHashLaneResource()V

    return-void
.end method

.method public static synthetic lambda$stopLane$4(Ljava/lang/Integer;Lcom/byd/lane/observer/BydLaneObserverImp;)V
    .locals 0

    invoke-virtual {p1}, Lcom/byd/lane/observer/BydLaneObserverImp;->resetState()V

    return-void
.end method

.method private synthetic lambda$unitLaneService$0(Ljava/lang/Integer;Lcom/byd/lane/observer/BydLaneObserverImp;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/byd/lane/observer/BydLaneObserverImp;->setLayerController(Lf/k/l/g/b/b;)V

    iget-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/lane/LaneService;->removeLaneObserver(Lcom/autonavi/gbl/lane/observer/ILaneObserver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$unitLaneService$1(Ljava/lang/Integer;Lcom/autonavi/gbl/lane/LaneRenderService;)V
    .locals 0

    invoke-virtual {p2}, Lcom/autonavi/gbl/lane/LaneRenderService;->detachMapView()Z

    invoke-virtual {p2}, Lcom/autonavi/gbl/lane/LaneRenderService;->unInit()V

    iget-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/lane/LaneService;->destroyLaneRenderService(Lcom/autonavi/gbl/lane/LaneRenderService;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createLaneRender(I)V
    .locals 7

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    const-string v1, "LaneSdkServiceImp"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "createLaneRender mLaneService==null"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/lane/observer/BydLaneObserverImp;

    if-nez v0, :cond_1

    new-instance v0, Lcom/byd/lane/observer/BydLaneObserverImp;

    invoke-direct {v0, p1}, Lcom/byd/lane/observer/BydLaneObserverImp;-><init>(I)V

    iget-object v3, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "createLaneRender: null"

    invoke-static {v1, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "createLaneRender: not null"

    invoke-static {v1, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v0}, Lcom/byd/lane/observer/BydLaneObserverImp;->resetState()V

    invoke-direct {p0, p1}, Lcom/byd/lane/LaneSdkServiceImp;->createLaneRenderService(I)Lcom/autonavi/gbl/lane/LaneRenderService;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    const/4 v6, 0x1

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    if-nez v3, :cond_3

    move v2, v6

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v2, "createLaneRender id:{?} mLaneService: {?} laneRenderService\uff1a{?}"

    invoke-static {v1, v2, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneLayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/k/l/h/c;

    if-nez v1, :cond_4

    new-instance v1, Lf/k/l/h/c;

    invoke-direct {v1, p1}, Lf/k/l/h/c;-><init>(I)V

    invoke-virtual {v1, v6}, Lf/k/l/h/c;->v(Z)V

    iget-object v2, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneLayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v0, v1}, Lcom/byd/lane/observer/BydLaneObserverImp;->setLayerController(Lf/k/l/g/b/b;)V

    new-instance v2, Lf/k/l/h/a;

    iget-object v4, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-direct {v2, p1, v4, v3, v1}, Lf/k/l/h/a;-><init>(ILcom/autonavi/gbl/lane/LaneService;Lcom/autonavi/gbl/lane/LaneRenderService;Lf/k/l/g/b/b;)V

    invoke-static {}, Lf/k/l/i/c;->c()Lf/k/l/i/c;

    move-result-object v1

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2LaneRender(I)I

    move-result p1

    invoke-virtual {v1, p1, v2}, Lf/k/l/i/c;->h(ILf/k/l/h/a;)V

    iget-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/lane/LaneService;->addLaneObserver(Lcom/autonavi/gbl/lane/observer/ILaneObserver;)V

    iget-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/lane/LaneService;->addLaneDiagnosisObserver(Lcom/autonavi/gbl/lane/observer/ILaneDiagnosisObserver;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Integer;Lcom/byd/lane/observer/BydLaneObserverImp;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/byd/lane/LaneSdkServiceImp;->lambda$unitLaneService$0(Ljava/lang/Integer;Lcom/byd/lane/observer/BydLaneObserverImp;)V

    return-void
.end method

.method public destroyLaneRender(I)V
    .locals 4

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    const-string v1, "LaneSdkServiceImp"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "destroyLaneRender mLaneService==null"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "destroyLaneRender MapSurfaceId:{?} "

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/l/i/c;->c()Lf/k/l/i/c;

    move-result-object v0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2LaneRender(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lf/k/l/i/c;->e(I)V

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneLayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/k/l/h/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lf/k/l/h/c;->g(Z)V

    invoke-virtual {v0}, Lf/k/l/h/c;->e()V

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneLayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneRenderServiceHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/gbl/lane/LaneRenderService;->detachMapView()Z

    invoke-virtual {v0}, Lcom/autonavi/gbl/lane/LaneRenderService;->unInit()V

    iget-object v1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {v1, v0}, Lcom/autonavi/gbl/lane/LaneService;->destroyLaneRenderService(Lcom/autonavi/gbl/lane/LaneRenderService;)Z

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneRenderServiceHashMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/lane/observer/BydLaneObserverImp;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {v1, v0}, Lcom/autonavi/gbl/lane/LaneService;->removeLaneObserver(Lcom/autonavi/gbl/lane/observer/ILaneObserver;)V

    iget-object v1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {v1, v0}, Lcom/autonavi/gbl/lane/LaneService;->removeLaneDiagnosisObserver(Lcom/autonavi/gbl/lane/observer/ILaneDiagnosisObserver;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byd/lane/observer/BydLaneObserverImp;->setLayerController(Lf/k/l/g/b/b;)V

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public dnpController(IZFF)V
    .locals 4

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byd/lane/observer/BydLaneObserverImp;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p3, p4}, Lcom/byd/lane/observer/BydLaneObserverImp;->setMapCenter(FF)V

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Lcom/byd/lane/observer/BydLaneObserverImp;->doDnpRoadControl(I)V

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->getMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v1, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byd/lane/observer/BydLaneObserverImp;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v1}, Lcom/byd/lane/observer/BydLaneObserverImp;->isSDKInLane()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-static {v1, v3}, Lcom/byd/lane/LaneSdkServiceImp;->pushCluster(Lcom/byd/lane/observer/BydLaneObserverImp;I)V

    :cond_2
    return-void

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "LaneSdkServiceImp"

    const-string p2, "contains:{?} id:{?}  enter:{?}  center:{?} {?}"

    invoke-static {p1, p2, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Integer;Lcom/autonavi/gbl/lane/LaneRenderService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/byd/lane/LaneSdkServiceImp;->lambda$unitLaneService$1(Ljava/lang/Integer;Lcom/autonavi/gbl/lane/LaneRenderService;)V

    return-void
.end method

.method public getLaneLayerController(I)Lf/k/l/g/b/b;
    .locals 1

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneLayers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/k/l/g/b/b;

    return-object p1
.end method

.method public getNaviDiagnosisState(I)I
    .locals 1

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byd/lane/observer/BydLaneObserverImp;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/byd/lane/observer/BydLaneObserverImp;->getNaviDiagnosisState()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initLaneService(Landroid/content/Context;)V
    .locals 5

    iget-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object p1

    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/lane/LaneService;

    iput-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    :cond_0
    invoke-direct {p0}, Lcom/byd/lane/LaneSdkServiceImp;->isInitSuccess()Z

    move-result p1

    const-string v0, "LaneSdkServiceImp"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "initLaneService: success"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    if-nez p1, :cond_2

    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "initLaneService error: null"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Lcom/autonavi/gbl/lane/model/LaneInitParam;

    invoke-direct {p1}, Lcom/autonavi/gbl/lane/model/LaneInitParam;-><init>()V

    new-instance v2, Lcom/byd/lane/observer/LaneResourceProxyImpl;

    invoke-direct {v2}, Lcom/byd/lane/observer/LaneResourceProxyImpl;-><init>()V

    iget-object v3, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {v3, v2}, Lcom/autonavi/gbl/lane/LaneService;->setResourceProxy(Lcom/autonavi/gbl/lane/observer/ILaneResourceProxy;)Z

    iget-object v3, p0, Lcom/byd/lane/LaneSdkServiceImp;->hashLaneResource:Ljava/util/Map;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/autonavi/gbl/lane/model/LaneInitParam;->enableDiagnosis:Z

    iput-boolean v2, p1, Lcom/autonavi/gbl/lane/model/LaneInitParam;->offlineAutoDelete:Z

    iput v1, p1, Lcom/autonavi/gbl/lane/model/LaneInitParam;->downloadMode:I

    iget-object v3, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {v3, p1}, Lcom/autonavi/gbl/lane/LaneService;->init(Lcom/autonavi/gbl/lane/model/LaneInitParam;)Z

    move-result p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "initLaneService: result:{?}"

    invoke-static {v0, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {p1, v2}, Lcom/autonavi/gbl/lane/LaneService;->openLNDSDataDownload(Z)Z

    iget-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {p1}, Lcom/autonavi/gbl/lane/LaneService;->getLaneNaviService()Lcom/autonavi/gbl/lane/LaneNaviService;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneNaviService:Lcom/autonavi/gbl/lane/LaneNaviService;

    iget-object p1, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/lane/LaneService;->addLaneDiagnosisObserver(Lcom/autonavi/gbl/lane/observer/ILaneDiagnosisObserver;)V

    :cond_3
    return-void
.end method

.method public isSDKInLane(I)Z
    .locals 1

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byd/lane/observer/BydLaneObserverImp;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/byd/lane/observer/BydLaneObserverImp;->isSDKInLane()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onUpdateNaviDiagnosis(Lcom/autonavi/gbl/lane/model/LaneNaviDiagnosisInfo;)V
    .locals 0

    return-void
.end method

.method public setDriveMode(I)Z
    .locals 1
    .param p1    # I
        .annotation build Lcom/autonavi/gbl/lane/model/LaneDriveMode$LaneDriveMode1;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneService;->setDriveMode(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLaneStatusListener(ILf/k/l/g/b/d;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lf/k/l/g/b/d;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/lane/observer/BydLaneObserverImp;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/byd/lane/observer/BydLaneObserverImp;->setLaneStatusListener(Lf/k/l/g/b/d;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/byd/lane/observer/BydLaneObserverImp;

    invoke-direct {v0, p1}, Lcom/byd/lane/observer/BydLaneObserverImp;-><init>(I)V

    invoke-virtual {v0, p2, p3}, Lcom/byd/lane/observer/BydLaneObserverImp;->setLaneStatusListener(Lf/k/l/g/b/d;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setLaneTMCState(I)V
    .locals 1

    invoke-static {}, Lf/k/l/i/c;->c()Lf/k/l/i/c;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lf/k/l/i/c;->k(I)V

    return-void
.end method

.method public setPersonNum(I)V
    .locals 1

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneNaviService:Lcom/autonavi/gbl/lane/LaneNaviService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneNaviService;->setPersonNum(I)Z

    :cond_0
    return-void
.end method

.method public stopLane()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->scheduleApply(Z)V

    invoke-static {}, Lf/k/l/j/b;->e()Lf/k/l/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/l/j/b;->h()V

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneLayers:Ljava/util/Map;

    sget-object v1, Lf/k/l/d;->a:Lf/k/l/d;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->hashLaneResource:Ljava/util/Map;

    sget-object v1, Lf/k/l/e;->a:Lf/k/l/e;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    sget-object v1, Lf/k/l/b;->a:Lf/k/l/b;

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public unitLaneService()V
    .locals 2

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    new-instance v1, Lf/k/l/a;

    invoke-direct {v1, p0}, Lf/k/l/a;-><init>(Lcom/byd/lane/LaneSdkServiceImp;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneRenderServiceHashMap:Ljava/util/Map;

    new-instance v1, Lf/k/l/c;

    invoke-direct {v1, p0}, Lf/k/l/c;-><init>(Lcom/byd/lane/LaneSdkServiceImp;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->mLaneService:Lcom/autonavi/gbl/lane/LaneService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/lane/LaneService;->removeLaneDiagnosisObserver(Lcom/autonavi/gbl/lane/observer/ILaneDiagnosisObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneObservers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/byd/lane/LaneSdkServiceImp;->laneRenderServiceHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public upDataNoaCarState()V
    .locals 0

    return-void
.end method

