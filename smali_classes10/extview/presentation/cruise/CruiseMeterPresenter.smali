.class public Lextview/presentation/cruise/CruiseMeterPresenter;
.super Lg/a/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/a/a/a/a<",
        "Lg/a/b/d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/autosdk/bussiness/layer/DrivingLayer;

.field public final b:Lcom/autonavi/gbl/guide/observer/ICruiseObserver;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lg/a/a/a/a;-><init>(I)V

    new-instance p1, Lextview/presentation/cruise/CruiseMeterPresenter$1;

    invoke-direct {p1, p0}, Lextview/presentation/cruise/CruiseMeterPresenter$1;-><init>(Lextview/presentation/cruise/CruiseMeterPresenter;)V

    iput-object p1, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->b:Lcom/autonavi/gbl/guide/observer/ICruiseObserver;

    return-void
.end method

.method public static synthetic a(Lextview/presentation/cruise/CruiseMeterPresenter;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic b(Lextview/presentation/cruise/CruiseMeterPresenter;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic c(Lextview/presentation/cruise/CruiseMeterPresenter;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic d(Lextview/presentation/cruise/CruiseMeterPresenter;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic e(Lextview/presentation/cruise/CruiseMeterPresenter;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic f(Lextview/presentation/cruise/CruiseMeterPresenter;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic g(Lextview/presentation/cruise/CruiseMeterPresenter;)I
    .locals 0

    iget p0, p0, Lg/a/a/a/a;->surfaceId:I

    return p0
.end method


# virtual methods
.method public enterState(Z)V
    .locals 0

    invoke-super {p0, p1}, Lg/a/a/a/a;->enterState(Z)V

    return-void
.end method

.method public h(II)V
    .locals 0

    iget-object p1, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz p1, :cond_0

    check-cast p1, Lg/a/b/d;

    invoke-virtual {p1}, Lg/a/b/d;->g()V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 6

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getLayerController()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    iget v1, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/LayerController;->getDrivingLayer(I)Lcom/autosdk/bussiness/layer/DrivingLayer;

    move-result-object v0

    iput-object v0, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->a:Lcom/autosdk/bussiness/layer/DrivingLayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setRoadFacilityControlVisible(Z)V

    iget-object v0, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->a:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setLabelControlVisible(Z)V

    iget-object v0, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->a:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->openDynamicLevel(ZI)V

    iget-object v0, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->a:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setFollowMode(Z)V

    :cond_0
    iget-object v0, p0, Lg/a/a/a/a;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setPreviewMode(Z)V

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v0

    iget-object v1, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->b:Lcom/autonavi/gbl/guide/observer/ICruiseObserver;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviController;->registerCruiseObserver(Lcom/autonavi/gbl/guide/observer/ICruiseObserver;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget v1, p0, Lg/a/a/a/a;->surfaceId:I

    #const/high16 v2, 0x41800000    # 16.0f
    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/bussiness/map/MapController;->setZoomLevel(IF)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v4

    invoke-virtual {v4}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    move-result v5

    invoke-virtual {p0, v5}, Lextview/presentation/cruise/CruiseMeterPresenter;->setMapMode(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(IZ)V

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v0, :cond_2

    check-cast v0, Lg/a/b/d;

    invoke-virtual {v0, p1}, Lg/a/b/d;->k(I)V

    :cond_2
    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lg/a/e/b;->e()Lcom/autonavi/gbl/guide/model/LaneInfo;

    move-result-object p1

    iget-object v0, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->b:Lcom/autonavi/gbl/guide/observer/ICruiseObserver;

    invoke-interface {v0, p1}, Lcom/autonavi/gbl/guide/observer/ICruiseObserver;->onShowCruiseLaneInfo(Lcom/autonavi/gbl/guide/model/LaneInfo;)V

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->a:Lcom/autosdk/bussiness/layer/DrivingLayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/autosdk/bussiness/layer/DrivingLayer;->openDynamicLevel(ZI)V

    iget-object v0, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->a:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setRoadFacilityControlVisible(Z)V

    iget-object v0, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->a:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setLabelControlVisible(Z)V

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v0

    iget-object v1, p0, Lextview/presentation/cruise/CruiseMeterPresenter;->b:Lcom/autonavi/gbl/guide/observer/ICruiseObserver;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviController;->unregisterCruiseObserver(Lcom/autonavi/gbl/guide/observer/ICruiseObserver;)V

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v0, :cond_1

    check-cast v0, Lg/a/b/d;

    invoke-virtual {v0}, Lg/a/b/d;->h()V

    :cond_1
    return-void
.end method



.method public setMapMode(I)V
    .locals 3

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "CruiseMeterPresenter"

    const-string v2, "setMapModeForCurise()====== "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/MapviewModeParam;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->bChangeCenter:Z

    # 获取中控配置的map mode
    invoke-static {}, Le/e/c/j0/h0;->b()Le/e/c/j0/h0;

    move-result-object v1

    invoke-virtual {v1}, Le/e/c/j0/h0;->getConfigKeyMapviewMode()I

    move-result v1

    const/4 v2, 0x2

    iput v2, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    if-eq v1, v2, :cond_else

    const/high16 v1, 0x41800000    # 16.0f

    goto :cond_end

    :cond_else

    const/high16 v1, 0x41880000    # 17.0f

    :cond_end

    #const/high16 v1, 0x41800000    # 16.0f

    # 仪表缩放取悬浮面板参数
    const-string v2, "zoom"

    invoke-static {v2}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v2, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {v1, v2, v0, p1}, Lcom/autosdk/bussiness/map/MapController;->setMapMode(ILcom/autonavi/gbl/map/model/MapviewModeParam;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    iget v0, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object p1

    # 车道级下俯仰角交给引擎，普通模式取悬浮面板参数
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->isInLane()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pitch"

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/map/OperatorPosture;->setPitchAngle(F)V

    :cond_0
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->reapply()V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V
    return-void
.end method