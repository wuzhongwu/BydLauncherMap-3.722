.class public Lcom/autosdk/bussiness/layer/LayerController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autosdk/bussiness/layer/LayerController$LayerCtrlHolder;
    }
.end annotation


# static fields
.field private static final LAYER_ASSET_DIR:Ljava/lang/String; = "/android_assets/blRes/LayerAsset/"

.field private static final TAG:Ljava/lang/String; = "LayerController"


# instance fields
.field private mBizService:Lcom/autonavi/gbl/layer/BizControlService;

.field private final mControllerInitParams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/autosdk/bussiness/layer/LayerControllerInitParam;",
            ">;"
        }
    .end annotation
.end field

.field private final mCruiseLayerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/layer/CruiseLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomLayerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/layer/CustomLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrivingLayerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/layer/DrivingLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicLayerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/layer/DynamicLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapLayerArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/autosdk/bussiness/layer/MapLayer;",
            ">;"
        }
    .end annotation
.end field

.field private mMapService:Lcom/autonavi/gbl/map/MapService;

.field private final mRouteResultLayerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/layer/RouteResultLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSearchLayerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/layer/SearchLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTeamGroupLayerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/layer/TeamGroupLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserLayerArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/layer/UserLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mControllerInitParams:Ljava/util/HashSet;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapLayerArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCruiseLayerArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mRouteResultLayerArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDrivingLayerArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mSearchLayerArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCustomLayerArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mUserLayerArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mTeamGroupLayerArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDynamicLayerArrayList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autosdk/bussiness/layer/LayerController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/bussiness/layer/LayerController;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/autosdk/bussiness/layer/LayerController;)Lcom/autonavi/gbl/map/MapService;
    .locals 0

    iget-object p0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/autosdk/bussiness/layer/LayerController;)Lcom/autonavi/gbl/layer/BizControlService;
    .locals 0

    iget-object p0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    return-object p0
.end method

.method public static getInstance()Lcom/autosdk/bussiness/layer/LayerController;
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController$LayerCtrlHolder;->access$100()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$updateStyle$0(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizCarControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizCarControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/layer/BizCarControl;->updateStyle()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizFlyLineControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizFlyLineControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/layer/BizFlyLineControl;->updateStyle()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizGuideRouteControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizGuideRouteControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/layer/BizControl;->updateStyle()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizRoadFacilityControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizRoadFacilityControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/layer/BizControl;->updateStyle()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizLabelControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizLabelControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/layer/BizControl;->updateStyle()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizAreaControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizAreaControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/layer/BizControl;->updateStyle()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizSearchControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizSearchControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/layer/BizControl;->updateStyle()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizUserControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizUserControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/layer/BizControl;->updateStyle()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizAGroupControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizAGroupControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/layer/BizControl;->updateStyle()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizGuideEagleEyeControl(I)Lcom/autonavi/gbl/layer/BizGuideEagleEyeControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizGuideEagleEyeControl;->updateStyle(Z)I

    iget-object p2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {p2, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizCustomControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizCustomControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/layer/BizControl;->updateStyle()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autosdk/bussiness/layer/LayerController;->lambda$updateStyle$0(IZ)V

    return-void
.end method

.method public addClickObserver(ILcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizFlyLineControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizFlyLineControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizFlyLineControl;->addClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizGuideRouteControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizGuideRouteControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->addClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizRoadFacilityControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizRoadFacilityControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->addClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizLabelControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizLabelControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->addClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizAreaControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizAreaControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->addClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizSearchControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizSearchControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->addClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizUserControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizUserControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->addClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizAGroupControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizAGroupControl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/layer/BizControl;->addClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    :cond_0
    return-void
.end method

.method public clearPathsCacheStyle(I)V
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getInstance()Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    move-result-object v0

    new-instance v1, Lcom/autosdk/bussiness/layer/LayerController$1;

    invoke-direct {v1, p0, p1}, Lcom/autosdk/bussiness/layer/LayerController$1;-><init>(Lcom/autosdk/bussiness/layer/LayerController;I)V

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->sendBizMessage(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getBizControlService()Lcom/autonavi/gbl/layer/BizControlService;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    return-object v0
.end method

.method public declared-synchronized getCruiseLayer(I)Lcom/autosdk/bussiness/layer/CruiseLayer;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCruiseLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCruiseLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autosdk/bussiness/layer/CruiseLayer;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/layer/CruiseLayer;->getmSurfaceViewID()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCruiseLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autosdk/bussiness/layer/CruiseLayer;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/autosdk/bussiness/layer/CruiseLayer;

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-direct {v0, p1, v2, v1}, Lcom/autosdk/bussiness/layer/CruiseLayer;-><init>(ILcom/autonavi/gbl/layer/BizControlService;Lcom/autonavi/gbl/map/MapView;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCruiseLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCustomLayer(I)Lcom/autosdk/bussiness/layer/CustomLayer;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCustomLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCustomLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autosdk/bussiness/layer/CustomLayer;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/layer/CustomLayer;->getmSurfaceViewID()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCustomLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autosdk/bussiness/layer/CustomLayer;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/autosdk/bussiness/layer/CustomLayer;

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-direct {v0, p1, v2, v1}, Lcom/autosdk/bussiness/layer/CustomLayer;-><init>(ILcom/autonavi/gbl/layer/BizControlService;Lcom/autonavi/gbl/map/MapView;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCustomLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDrivingLayer(I)Lcom/autosdk/bussiness/layer/DrivingLayer;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDrivingLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDrivingLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/layer/DrivingLayer;->getmSurfaceViewID()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDrivingLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autosdk/bussiness/layer/DrivingLayer;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mControllerInitParams:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;

    iget v4, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->mSurfaceViewID:I

    if-ne p1, v4, :cond_2

    iget-object v3, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->prepareLayerStyle:Lcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;

    if-eqz v3, :cond_2

    new-instance v0, Lcom/autosdk/bussiness/layer/DrivingLayer;

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/autosdk/bussiness/layer/DrivingLayer;-><init>(ILcom/autonavi/gbl/layer/BizControlService;Lcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;Lcom/autonavi/gbl/map/MapView;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDrivingLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDynamicLayer(I)Lcom/autosdk/bussiness/layer/DynamicLayer;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDynamicLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDynamicLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autosdk/bussiness/layer/DynamicLayer;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/layer/DynamicLayer;->getSurfaceViewID()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDynamicLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autosdk/bussiness/layer/DynamicLayer;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/autosdk/bussiness/layer/DynamicLayer;

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-direct {v0, p1, v2, v1}, Lcom/autosdk/bussiness/layer/DynamicLayer;-><init>(ILcom/autonavi/gbl/layer/BizControlService;Lcom/autonavi/gbl/map/MapView;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDynamicLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMapLayer(I)Lcom/autosdk/bussiness/layer/MapLayer;
    .locals 5

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapLayerArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autosdk/bussiness/layer/MapLayer;

    invoke-virtual {v3}, Lcom/autosdk/bussiness/layer/MapLayer;->getmSurfaceViewID()I

    move-result v4

    if-ne v4, p1, :cond_0

    move-object v1, v3

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Lcom/autosdk/bussiness/layer/MapLayer;

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-direct {v1, p1, v2, v0}, Lcom/autosdk/bussiness/layer/MapLayer;-><init>(ILcom/autonavi/gbl/layer/BizControlService;Lcom/autonavi/gbl/map/MapView;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapLayerArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public declared-synchronized getRouteResultLayer(I)Lcom/autosdk/bussiness/layer/RouteResultLayer;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mRouteResultLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/autosdk/bussiness/layer/LayerController;->mRouteResultLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autosdk/bussiness/layer/RouteResultLayer;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/layer/RouteResultLayer;->getmSurfaceViewID()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mRouteResultLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autosdk/bussiness/layer/RouteResultLayer;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/autosdk/bussiness/layer/RouteResultLayer;

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-direct {v0, p1, v2, v1}, Lcom/autosdk/bussiness/layer/RouteResultLayer;-><init>(ILcom/autonavi/gbl/layer/BizControlService;Lcom/autonavi/gbl/map/MapView;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mRouteResultLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSearchLayer(I)Lcom/autosdk/bussiness/layer/SearchLayer;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mSearchLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/autosdk/bussiness/layer/LayerController;->mSearchLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autosdk/bussiness/layer/SearchLayer;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/layer/SearchLayer;->getmSurfaceViewID()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mSearchLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autosdk/bussiness/layer/SearchLayer;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/autosdk/bussiness/layer/SearchLayer;

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-direct {v0, p1, v2, v1}, Lcom/autosdk/bussiness/layer/SearchLayer;-><init>(ILcom/autonavi/gbl/layer/BizControlService;Lcom/autonavi/gbl/map/MapView;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mSearchLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTeamGroupLayer(I)Lcom/autosdk/bussiness/layer/TeamGroupLayer;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mTeamGroupLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/autosdk/bussiness/layer/LayerController;->mTeamGroupLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autosdk/bussiness/layer/TeamGroupLayer;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/layer/TeamGroupLayer;->getSurfaceViewId()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mTeamGroupLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autosdk/bussiness/layer/TeamGroupLayer;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/autosdk/bussiness/layer/TeamGroupLayer;

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-direct {v0, p1, v2, v1}, Lcom/autosdk/bussiness/layer/TeamGroupLayer;-><init>(ILcom/autonavi/gbl/layer/BizControlService;Lcom/autonavi/gbl/map/MapView;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mTeamGroupLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUserLayer(I)Lcom/autosdk/bussiness/layer/UserLayer;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mUserLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/autosdk/bussiness/layer/LayerController;->mUserLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autosdk/bussiness/layer/UserLayer;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/layer/UserLayer;->getSurfaceViewId()I

    move-result v4

    if-ne v4, p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mUserLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autosdk/bussiness/layer/UserLayer;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/autosdk/bussiness/layer/UserLayer;

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-direct {v0, p1, v2, v1}, Lcom/autosdk/bussiness/layer/UserLayer;-><init>(ILcom/autonavi/gbl/layer/BizControlService;Lcom/autonavi/gbl/map/MapView;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mUserLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/layer/LayerControllerInitParam;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/map/MapService;

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/layer/BizControlService;

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "LayerController"

    const-string v2, "layerControllerInitParam is empty!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;

    iget v3, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->mSurfaceViewID:I

    if-lez v3, :cond_5

    const/4 v4, 0x5

    if-ge v3, v4, :cond_5

    invoke-static {v3}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v4

    const/16 v5, 0x1f4

    if-ne v4, v2, :cond_3

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    const-string v3, "/android_assets/blRes/LayerAsset/"

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->init(ILjava/lang/String;)Z

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;

    iget-object v3, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->prepareLayerStyle:Lcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->setStyle(ILcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;)V

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/gbl/layer/BizControlService;->setCollisionIntervalTime(II)Z

    add-int/lit8 v4, v4, 0x1

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    const-string v3, "/android_assets/blRes/LayerAsset/"

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->init(ILjava/lang/String;)Z

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;

    iget-object v3, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->prepareLayerStyle:Lcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->setStyle(ILcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;)V

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    :goto_1
    invoke-virtual {v2, v4, v5}, Lcom/autonavi/gbl/layer/BizControlService;->setCollisionIntervalTime(II)Z

    goto :goto_2

    :cond_3
    const/4 v2, 0x4

    if-ne v3, v2, :cond_4

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    const-string v3, "/android_assets/blRes/LayerAsset/"

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->init(ILjava/lang/String;)Z

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;

    iget-object v3, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->prepareLayerStyle:Lcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->setStyle(ILcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;)V

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/gbl/layer/BizControlService;->setCollisionIntervalTime(II)Z

    add-int/lit8 v4, v4, 0x1

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    const-string v3, "/android_assets/blRes/LayerAsset/"

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->init(ILjava/lang/String;)Z

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;

    iget-object v3, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->prepareLayerStyle:Lcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->setStyle(ILcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    const-string v3, "/android_assets/blRes/LayerAsset/"

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->init(ILjava/lang/String;)Z

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;

    iget-object v3, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->prepareLayerStyle:Lcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->setStyle(ILcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;)V

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/gbl/layer/BizControlService;->setCollisionIntervalTime(II)Z

    add-int/lit8 v4, v4, 0x1

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    const-string v3, "/android_assets/blRes/LayerAsset/"

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->init(ILjava/lang/String;)Z

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;

    iget-object v3, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->prepareLayerStyle:Lcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;

    invoke-virtual {v2, v4, v3}, Lcom/autonavi/gbl/layer/BizControlService;->setStyle(ILcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;)V

    iget-object v2, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mControllerInitParams:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeClickObserver(ILcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizFlyLineControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizFlyLineControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizFlyLineControl;->removeClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizGuideRouteControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizGuideRouteControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->removeClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizRoadFacilityControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizRoadFacilityControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->removeClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizLabelControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizLabelControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->removeClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizAreaControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizAreaControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->removeClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizSearchControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizSearchControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->removeClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizUserControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizUserControl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/layer/BizControl;->removeClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizAGroupControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizAGroupControl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/layer/BizControl;->removeClickObserver(Lcom/autonavi/gbl/map/layer/observer/ILayerClickObserver;)V

    :cond_0
    return-void
.end method

.method public setChargingLayer()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/autosdk/bussiness/user/utils/CarUtils;->isNewEnergyVehicle()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/user/utils/CarUtils;->isHybridVehicle()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x19

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v1

    check-cast v1, Lcom/autonavi/gbl/map/MapService;

    iput-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    :cond_2
    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/MapService;->getDevice(I)Lcom/autonavi/gbl/map/MapDevice;

    iget-object v1, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/gbl/map/OperatorBusiness;->setCustomLabelTypeVisable(Ljava/util/ArrayList;I)V

    :cond_3
    return-void
.end method

.method public declared-synchronized uninit()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapLayerArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCruiseLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mRouteResultLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDrivingLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mSearchLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mCustomLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mUserLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mTeamGroupLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mDynamicLayerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mBizService:Lcom/autonavi/gbl/layer/BizControlService;

    iput-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mMapService:Lcom/autonavi/gbl/map/MapService;

    iget-object v0, p0, Lcom/autosdk/bussiness/layer/LayerController;->mControllerInitParams:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-static {}, Lcom/autosdk/bussiness/common/FlyLineCarConfig;->getInstance()Lcom/autosdk/bussiness/common/FlyLineCarConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/FlyLineCarConfig;->clearAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateStyle(IZ)V
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getInstance()Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    move-result-object v0

    new-instance v1, Lf/h/b/g/j;

    invoke-direct {v1, p0, p1, p2}, Lf/h/b/g/j;-><init>(Lcom/autosdk/bussiness/layer/LayerController;IZ)V

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->sendBizMessage(Ljava/lang/Runnable;)Z

    return-void
.end method
