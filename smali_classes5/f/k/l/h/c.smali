.class public Lf/k/l/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/k/l/g/b/b;


# instance fields
.field public final a:I

.field public final b:I

.field public c:Lcom/autonavi/gbl/lane/LaneRenderService;

.field public d:Lcom/autonavi/gbl/lane/LaneService;

.field public e:Lcom/autonavi/gbl/lane/LaneNaviService;

.field public volatile f:Z

.field public volatile g:Z

.field public final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/k/l/h/c$a;

    invoke-direct {v0, p0}, Lf/k/l/h/c$a;-><init>(Lf/k/l/h/c;)V

    iput-object v0, p0, Lf/k/l/h/c;->h:Ljava/lang/Runnable;

    iput p1, p0, Lf/k/l/h/c;->a:I

    invoke-virtual {p0}, Lf/k/l/h/c;->y()I

    move-result v0

    iput v0, p0, Lf/k/l/h/c;->b:I

    invoke-virtual {p0}, Lf/k/l/h/c;->m()Lcom/autonavi/gbl/lane/LaneService;

    move-result-object v0

    iput-object v0, p0, Lf/k/l/h/c;->d:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {p0}, Lf/k/l/h/c;->l()Lcom/autonavi/gbl/lane/LaneRenderService;

    move-result-object v0

    iput-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    invoke-virtual {p0}, Lf/k/l/h/c;->k()Lcom/autonavi/gbl/lane/LaneNaviService;

    move-result-object v0

    iput-object v0, p0, Lf/k/l/h/c;->e:Lcom/autonavi/gbl/lane/LaneNaviService;

    invoke-virtual {p0, p1}, Lf/k/l/h/c;->n(I)V

    return-void
.end method

.method public static synthetic d(Lf/k/l/h/c;)Z
    .locals 0

    iget-boolean p0, p0, Lf/k/l/h/c;->f:Z

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lf/k/l/h/c;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "LaneLayerController"

    const-string v5, "doGestureAction:{?}  isEnterLane:{?}"

    invoke-static {v2, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lf/k/l/h/c;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lf/k/l/h/c;->h:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/autosdk/bussiness/common/task/TaskManager;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v5, p0, Lf/k/l/h/c;->a:I

    invoke-virtual {v1, v5}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-nez p1, :cond_0

    iget-object p1, p0, Lf/k/l/h/c;->h:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2742

    invoke-static {p1, v0, v1}, Lcom/autosdk/bussiness/common/task/TaskManager;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lcom/autosdk/bussiness/map/MapController;->lockMapRollAngle(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lcom/autosdk/bussiness/map/MapController;->lockMapPitchAngle(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-virtual {p0, v3}, Lf/k/l/h/c;->r(Z)Z

    move-result p1

    invoke-virtual {p0, v3}, Lf/k/l/h/c;->q(Z)Z

    move-result v1

    invoke-virtual {p0, v3}, Lf/k/l/h/c;->s(Z)Z

    move-result v5

    invoke-virtual {p0, v3}, Lf/k/l/h/c;->p(Z)Z

    move-result v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v7, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v7, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v7, v0

    const/4 p1, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, p1

    const/4 p1, 0x4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, p1

    const-string p1, "GestureAction set:{?} DynamicAngle:{?} DynamicLevel:{?} FollowMode:{?} CarUpModel:{?}"

    invoke-static {v2, p1, v7}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "LaneLayerController"

    const-string v4, "setTMCShowStatus: {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/autonavi/gbl/lane/LaneRenderService;->isInit()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    if-nez p1, :cond_0

    :goto_0
    iget-object p1, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    invoke-virtual {p1, v3}, Lcom/autonavi/gbl/lane/LaneRenderService;->setTMCShowStatus(I)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lf/k/r/f/b;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_3

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    invoke-virtual {p1, v1}, Lcom/autonavi/gbl/lane/LaneRenderService;->setTMCShowStatus(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public backToCar()V
    .locals 9

    iget-object v0, p0, Lf/k/l/h/c;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/autosdk/bussiness/common/task/TaskManager;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget v1, p0, Lf/k/l/h/c;->a:I

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    invoke-static {}, Lf/k/l/g/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v2, p0, Lf/k/l/h/c;->a:I

    invoke-virtual {p0}, Lf/k/l/h/c;->j()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/autosdk/bussiness/map/MapController;->setZoomLevel(IF)V

    :cond_0
    invoke-static {}, Lf/k/l/g/a/b;->a()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0, v2}, Lf/k/l/h/c;->r(Z)Z

    move-result v3

    invoke-virtual {p0, v1}, Lf/k/l/h/c;->q(Z)Z

    move-result v1

    invoke-virtual {p0, v2}, Lf/k/l/h/c;->s(Z)Z

    move-result v4

    invoke-virtual {p0, v2}, Lf/k/l/h/c;->p(Z)Z

    move-result v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v1, "LaneLayerController"

    const-string v3, "backToCar set:{?} DynamicAngle:{?} DynamicLevel:{?} FollowMode:{?} CarUpModel:{?}"

    invoke-static {v1, v3, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/autosdk/bussiness/map/MapController;->lockMapRollAngle(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/autosdk/bussiness/map/MapController;->lockMapPitchAngle(Lcom/autonavi/gbl/map/MapView;Z)V

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    return-void
.end method

.method public c(Lcom/autonavi/gbl/lane/observer/ILaneRenderStatusObserver;)V
    .locals 2

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "LaneLayerController"

    const-string v1, "addRenderObserver==null"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->removeObserver(Lcom/autonavi/gbl/lane/observer/ILaneRenderStatusObserver;)I

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->addObserver(Lcom/autonavi/gbl/lane/observer/ILaneRenderStatusObserver;)I

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    iput-object v0, p0, Lf/k/l/h/c;->d:Lcom/autonavi/gbl/lane/LaneService;

    iput-object v0, p0, Lf/k/l/h/c;->e:Lcom/autonavi/gbl/lane/LaneNaviService;

    iget-object v0, p0, Lf/k/l/h/c;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/autosdk/bussiness/common/task/TaskManager;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Z)V
    .locals 11

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget v1, p0, Lf/k/l/h/c;->a:I

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    const/16 v1, 0x6a

    const/16 v2, 0x1c

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "entLaneSetting:{?} FollowMode:{?} CarUpModel:{?}"

    const-string v6, "LaneLayerController"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lf/k/l/g/a/b;->a()Z

    move-result p1

    xor-int/2addr p1, v8

    invoke-virtual {p0, p1}, Lf/k/l/h/c;->q(Z)Z

    move-result p1

    invoke-virtual {p0, v8}, Lf/k/l/h/c;->s(Z)Z

    move-result v9

    invoke-virtual {p0, v8}, Lf/k/l/h/c;->p(Z)Z

    move-result v10

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v6, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lf/k/l/h/c;->u(Z)Z

    invoke-virtual {p0}, Lf/k/l/h/c;->x()V

    invoke-virtual {v0, v2, v8}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    invoke-virtual {v0, v1, v8}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    const/16 v3, 0x69

    invoke-virtual {v0, v3, v8}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    invoke-virtual {v0, v8, v7, v8}, Lcom/autonavi/gbl/map/MapView;->setControllerStatesOperator(IIZ)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v7}, Lf/k/l/h/c;->p(Z)Z

    move-result p1

    invoke-virtual {p0, v7}, Lf/k/l/h/c;->s(Z)Z

    move-result v9

    invoke-virtual {p0, v7}, Lf/k/l/h/c;->q(Z)Z

    move-result v10

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v6, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v8}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    invoke-virtual {v0, v1, v8}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    const/16 v3, 0x69

    invoke-virtual {v0, v3, v8}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/l0;->getConfigKeyRoadEvent()I

    move-result p1

    if-ne p1, v8, :cond_1

    invoke-virtual {v0, v8, v8, v8}, Lcom/autonavi/gbl/map/MapView;->setControllerStatesOperator(IIZ)Z

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    invoke-virtual {p1, v0, v8}, Lcom/autosdk/bussiness/map/MapController;->lockMapRollAngle(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    invoke-virtual {p1, v0, v8}, Lcom/autosdk/bussiness/map/MapController;->lockMapPitchAngle(Lcom/autonavi/gbl/map/MapView;Z)V

    :goto_0
    return-void
.end method

.method public final aa()V
    .locals 3

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget v1, p0, Lf/k/l/h/c;->a:I

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    const/16 v1, 0x69

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/gbl/map/MapView;->setMapViewStatesOperator(II)Z

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "LaneLayerController"

    const-string v3, "enterLane:{?}"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "use enterLane(EnterLaneParam param)"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lf/k/l/h/c;->f(Z)V

    iput-boolean v2, p0, Lf/k/l/h/c;->f:Z

    iget-object p1, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lcom/autonavi/gbl/lane/LaneRenderService;->enterLane(Z)Z

    :cond_1
    iget-object p1, p0, Lf/k/l/h/c;->e:Lcom/autonavi/gbl/lane/LaneNaviService;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Lcom/autonavi/gbl/lane/LaneNaviService;->enterLane(Z)Z

    invoke-static {}, Lcom/autosdk/bussiness/navi/GuideStateMonitor;->getInstance()Lcom/autosdk/bussiness/navi/GuideStateMonitor;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/autosdk/bussiness/navi/GuideStateMonitor;->sRState(Z)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "enterLane:false, sRState:false"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lf/k/l/h/c;->aa()V

    return-void
.end method

.method public h(Lcom/autonavi/gbl/lane/model/EnterLaneParam;)Z
    .locals 8

    iget-boolean v0, p1, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->enter:Z

    invoke-virtual {p0, v0}, Lf/k/l/h/c;->f(Z)V

    iput-boolean v0, p0, Lf/k/l/h/c;->f:Z

    const-string v1, "LaneLayerController"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/k/l/h/c;->e:Lcom/autonavi/gbl/lane/LaneNaviService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/autonavi/gbl/lane/LaneNaviService;->enterLane(Z)Z

    move-result v0

    invoke-static {}, Lcom/autosdk/bussiness/navi/GuideStateMonitor;->getInstance()Lcom/autosdk/bussiness/navi/GuideStateMonitor;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/autosdk/bussiness/navi/GuideStateMonitor;->sRState(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "enterLane, sRState:true"

    invoke-static {v1, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->enterLane(Lcom/autonavi/gbl/lane/model/EnterLaneParam;)J

    move-result-wide v4

    invoke-virtual {p0}, Lf/k/l/h/c;->aa()V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    iget v6, p0, Lf/k/l/h/c;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, p1, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, p1, v2

    const/4 v6, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, p1, v6

    const-string v6, "enterLane surfaceId:{?} NaviResult:{?} RenderResult:{?}"

    invoke-static {v1, v6, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, v4, v0

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    move v0, v2

    :cond_2
    return v0
.end method

.method public i(Lcom/autonavi/gbl/lane/model/ExitLaneParam;)Z
    .locals 8

    iget-boolean v0, p1, Lcom/autonavi/gbl/lane/model/EnterLaneBaseParam;->enter:Z

    invoke-virtual {p0, v0}, Lf/k/l/h/c;->f(Z)V

    iput-boolean v0, p0, Lf/k/l/h/c;->f:Z

    const-string v1, "LaneLayerController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lf/k/l/h/c;->a:I

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->shouldKeepLaneNavi(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/k/l/h/c;->e:Lcom/autonavi/gbl/lane/LaneNaviService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/autonavi/gbl/lane/LaneNaviService;->enterLane(Z)Z

    move-result v0

    invoke-static {}, Lcom/autosdk/bussiness/navi/GuideStateMonitor;->getInstance()Lcom/autosdk/bussiness/navi/GuideStateMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autosdk/bussiness/navi/GuideStateMonitor;->sRState(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "exitLane, sRState:false"

    invoke-static {v1, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->enterLane(Lcom/autonavi/gbl/lane/model/ExitLaneParam;)J

    move-result-wide v3

    invoke-virtual {p0}, Lf/k/l/h/c;->aa()V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    iget v5, p0, Lf/k/l/h/c;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, p1, v6

    const/4 v5, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, p1, v5

    const-string v5, "exitLane surfaceId:{?} NaviResult:{?} RenderResult:{?}"

    invoke-static {v1, v5, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, v3, v0

    if-ltz p1, :cond_1

    move v2, v6

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method public j()F
    .locals 4

    sget v0, Lf/k/l/g/a/b;->b:I

    const/high16 v1, 0x41980000    # 19.0f

    const v2, 0x419acccd    # 19.35f

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget v0, p0, Lf/k/l/h/c;->a:I

    move v1, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lf/k/l/h/c;->a:I

    :goto_0
    return v1
.end method

.method public final k()Lcom/autonavi/gbl/lane/LaneNaviService;
    .locals 1

    invoke-virtual {p0}, Lf/k/l/h/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/k/l/h/c;->d:Lcom/autonavi/gbl/lane/LaneService;

    invoke-virtual {v0}, Lcom/autonavi/gbl/lane/LaneService;->getLaneNaviService()Lcom/autonavi/gbl/lane/LaneNaviService;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lcom/autonavi/gbl/lane/LaneRenderService;
    .locals 2

    invoke-virtual {p0}, Lf/k/l/h/c;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lf/k/l/h/c;->d:Lcom/autonavi/gbl/lane/LaneService;

    iget v1, p0, Lf/k/l/h/c;->b:I

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/lane/LaneService;->getLaneRenderService(I)Lcom/autonavi/gbl/lane/LaneRenderService;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Lcom/autonavi/gbl/lane/LaneService;
    .locals 2

    iget-object v0, p0, Lf/k/l/h/c;->d:Lcom/autonavi/gbl/lane/LaneService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/lane/LaneService;

    iput-object v0, p0, Lf/k/l/h/c;->d:Lcom/autonavi/gbl/lane/LaneService;

    :cond_0
    iget-object v0, p0, Lf/k/l/h/c;->d:Lcom/autonavi/gbl/lane/LaneService;

    return-object v0
.end method

.method public n(I)V
    .locals 9

    new-instance v3, Lcom/autonavi/gbl/layer/model/InnerStyleParam;

    invoke-direct {v3}, Lcom/autonavi/gbl/layer/model/InnerStyleParam;-><init>()V

    const-string v0, "/android_assets/blRes/LaneLayerAsset/"

    iput-object v0, v3, Lcom/autonavi/gbl/layer/model/InnerStyleParam;->layerAssetPath:Ljava/lang/String;

    iget-object v1, v3, Lcom/autonavi/gbl/layer/model/InnerStyleParam;->cardCmbPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/layer/LayerController;->getBizControlService()Lcom/autonavi/gbl/layer/BizControlService;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizLaneControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizLaneControl;

    move-result-object v7

    new-instance v4, Lcom/autosdk/layerstyle/PrepareLayerParamImpl;

    iget v0, p0, Lf/k/l/h/c;->a:I

    invoke-static {v0}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v0

    iget v5, p0, Lf/k/l/h/c;->a:I

    invoke-direct {v4, v2, v0, v5}, Lcom/autosdk/layerstyle/PrepareLayerParamImpl;-><init>(III)V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "blRes/HmiLayerAsset/style_1.json"

    invoke-static {v0, v2}, Lcom/autosdk/bussiness/common/utils/FileUtils;->getFileStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lf/h/k/f/e;

    invoke-direct {v5, v0}, Lf/h/k/f/e;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/autosdk/layerstyle/PrepareLayerStyleMapImpl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, v4

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/autosdk/layerstyle/PrepareLayerStyleMapImpl;-><init>(Lcom/autonavi/gbl/map/MapView;Lcom/autonavi/gbl/layer/observer/PrepareLayerParam;Lcom/autonavi/gbl/layer/model/InnerStyleParam;Ljava/lang/Integer;Lf/h/k/f/e;I)V

    invoke-virtual {v7, v8}, Lcom/autonavi/gbl/layer/BizControl;->setStyle(Lcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;)V

    return-void

    :cond_1
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "LaneLayerController"

    const-string v1, "initLaneLayer null"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lf/k/l/h/c;->d:Lcom/autonavi/gbl/lane/LaneService;

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/gbl/lane/LaneService;->isInit()I

    move-result v0

    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public p(Z)Z
    .locals 1

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->openCarUpMode(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public q(Z)Z
    .locals 1

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->openDynamicLevel(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public r(Z)Z
    .locals 4

    iget-boolean v0, p0, Lf/k/l/h/c;->g:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iput-boolean p1, p0, Lf/k/l/h/c;->g:Z

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    invoke-static {}, Lf/k/l/g/a/b;->a()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "LaneLayerController"

    const-string v3, "openDynamicViewAngle:{?} mode:{?}"

    invoke-static {v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/lane/LaneRenderService;->setDynamicViewMode(I)Z

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->openDynamicViewAngle(Z)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public s(Z)Z
    .locals 1

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->openFollowMode(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Z)V
    .locals 0

    iget-object p1, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz p1, :cond_0

    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object p1

    invoke-virtual {p1}, Lf/k/l/i/b;->a()Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/k/l/h/c;->z(Lcom/autonavi/gbl/lane/model/CarStyleInfo;)V

    :cond_0
    return-void
.end method

.method public u(Z)Z
    .locals 1

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->openLaneChangeFocusing(Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public v(Z)V
    .locals 1

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->openShowRoadPolygon(Z)Z

    :cond_0
    return-void
.end method

.method public w(Lcom/autonavi/gbl/lane/observer/ILaneRenderStatusObserver;)V
    .locals 2

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "LaneLayerController"

    const-string v1, "removeRenderObserver==null"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->removeObserver(Lcom/autonavi/gbl/lane/observer/ILaneRenderStatusObserver;)I

    return-void
.end method

.method public final x()V
    .locals 2

    invoke-static {}, Lf/k/l/i/c;->c()Lf/k/l/i/c;

    move-result-object v0

    sget v1, Lf/k/l/g/a/b;->b:I

    invoke-virtual {v0, v1}, Lf/k/l/i/c;->l(I)V

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lf/k/l/h/c;->b(I)V

    return-void
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lf/k/l/h/c;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final z(Lcom/autonavi/gbl/lane/model/CarStyleInfo;)V
    .locals 1

    iget-object v0, p0, Lf/k/l/h/c;->c:Lcom/autonavi/gbl/lane/LaneRenderService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/lane/LaneRenderService;->setCarStyleInfo(Lcom/autonavi/gbl/lane/model/CarStyleInfo;)Z

    :cond_0
    return-void
.end method
