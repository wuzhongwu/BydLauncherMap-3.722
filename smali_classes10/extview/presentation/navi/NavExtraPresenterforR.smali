.class public Lextview/presentation/navi/NavExtraPresenterforR;
.super Lg/a/a/a/a;
.source "SourceFile"

# interfaces
.implements Lg/a/a/a/f;
.implements Lcom/autonavi/gbl/guide/observer/INaviObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/a/a/a/a<",
        "Lg/a/c/p;",
        ">;",
        "Lg/a/a/a/f;",
        "Lcom/autonavi/gbl/guide/observer/INaviObserver;"
    }
.end annotation


# static fields
.field public static final MSG_DRAW_PATH:I = 0x2

.field public static final MSG_UPDATE_CAR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NavExtraPresenterforR"

.field public static final WHAT_UPDATE_CROSS_BASE:I = 0x5

.field private static final WHAT_UPDATE_SHOW_CROSS_UI:I = 0x4


# instance fields
.field public bydAutoSpeed:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

.field public crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

.field private final extraRoutePoints:Lg/a/e/a;

.field private firstDrawTime:J

.field private handlerThread:Landroid/os/HandlerThread;

.field public lastNightExtra:Z

.field public lastRequestManeuverID:J

.field public lastRequestPathID:J

.field public lastRequestSegmentIdx:J

.field private mBydConfigKeyDayNightMode:I

.field private mapviewModeParam:Lcom/autonavi/gbl/map/model/MapviewModeParam;


.field public mCrossImageInfo:Lcom/autonavi/gbl/guide/model/CrossImageInfo;

.field public volatile mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

.field public mCurNaviInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mCurPathID:J

.field public mCurSegIdx:I

.field public mDirectionCache:Landroid/graphics/Bitmap;

.field private mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

.field private mEndPointID:Ljava/lang/String;

.field private mKeyWordTaskId:I

.field public mNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

.field public mNextThumRoundNum:I

.field public mPathResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/common/path/option/PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviousNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

.field public mRoundNum:I

.field public mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

.field public maneuverRequestTime:J

.field public nextThumDirectionCache:Landroid/graphics/Bitmap;

.field public offLineManeuverSetTime:J

.field private final refreshRouteOnNetworkChangedRunnable:Ljava/lang/Runnable;

.field private workHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lg/a/a/a/a;-><init>(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurPathID:J

    const/4 p1, -0x1

    iput p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurSegIdx:I

    const/4 p1, 0x0

    iput p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRoundNum:I

    iput p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mNextThumRoundNum:I

    new-instance v0, Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    invoke-direct {v0}, Lcom/autonavi/gbl/guide/model/ManeuverInfo;-><init>()V

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    new-instance v0, Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    invoke-direct {v0}, Lcom/autonavi/gbl/guide/model/ManeuverInfo;-><init>()V

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mPreviousNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    const-string v0, ""

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mEndPointID:Ljava/lang/String;

    new-instance v0, Lg/a/e/a;

    invoke-direct {v0}, Lg/a/e/a;-><init>()V

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->extraRoutePoints:Lg/a/e/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestPathID:J

    iput-wide v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestSegmentIdx:J

    iput-wide v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestManeuverID:J

    iput-boolean p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->lastNightExtra:Z

    new-instance p1, Lextview/presentation/navi/NavExtraPresenterforR$c;

    invoke-direct {p1, p0}, Lextview/presentation/navi/NavExtraPresenterforR$c;-><init>(Lextview/presentation/navi/NavExtraPresenterforR;)V

    iput-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->refreshRouteOnNetworkChangedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lextview/presentation/navi/NavExtraPresenterforR;)Lcom/autosdk/bussiness/layer/MapLayer;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    return-object p0
.end method

.method public static synthetic access$100(Lextview/presentation/navi/NavExtraPresenterforR;)Lcom/autosdk/bussiness/layer/MapLayer;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    return-object p0
.end method

.method public static synthetic access$1000(Lextview/presentation/navi/NavExtraPresenterforR;)I
    .locals 0

    iget p0, p0, Lg/a/a/a/a;->surfaceId:I

    return p0
.end method

.method public static synthetic access$1100(Lextview/presentation/navi/NavExtraPresenterforR;)I
    .locals 0

    iget p0, p0, Lg/a/a/a/a;->surfaceId:I

    return p0
.end method

.method public static synthetic access$1200(Lextview/presentation/navi/NavExtraPresenterforR;Ljava/util/ArrayList;DDDD)Z
    .locals 0

    invoke-direct/range {p0 .. p9}, Lextview/presentation/navi/NavExtraPresenterforR;->shouldShowAllPaths(Ljava/util/ArrayList;DDDD)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lextview/presentation/navi/NavExtraPresenterforR;)I
    .locals 0

    iget p0, p0, Lg/a/a/a/a;->surfaceId:I

    return p0
.end method

.method public static synthetic access$1400(Lextview/presentation/navi/NavExtraPresenterforR;Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;Ljava/util/ArrayList;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lextview/presentation/navi/NavExtraPresenterforR;->getFocusIndex(Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lextview/presentation/navi/NavExtraPresenterforR;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic access$300(Lextview/presentation/navi/NavExtraPresenterforR;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic access$400(Lextview/presentation/navi/NavExtraPresenterforR;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic access$500(Lextview/presentation/navi/NavExtraPresenterforR;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic access$600(Lextview/presentation/navi/NavExtraPresenterforR;)I
    .locals 0

    iget p0, p0, Lg/a/a/a/a;->surfaceId:I

    return p0
.end method

.method public static synthetic access$700(Lextview/presentation/navi/NavExtraPresenterforR;)Lg/a/a/a/e;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    return-object p0
.end method

.method public static synthetic access$800(Lextview/presentation/navi/NavExtraPresenterforR;)Lg/a/e/a;
    .locals 0

    iget-object p0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->extraRoutePoints:Lg/a/e/a;

    return-object p0
.end method

.method public static synthetic access$900(Lextview/presentation/navi/NavExtraPresenterforR;)Lcom/autosdk/bussiness/layer/DrivingLayer;
    .locals 0

    iget-object p0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    return-object p0
.end method

.method private getFocusIndex(Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/common/path/option/PathInfo;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getPathInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getFocusIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/common/path/option/PathInfo;

    invoke-static {p1}, Lcom/autosdk/bussiness/navi/NaviController;->getPathId(Lcom/autonavi/gbl/common/path/option/PathInfo;)J

    move-result-wide v0

    const/4 p1, -0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/gbl/common/path/option/PathInfo;

    invoke-static {v3}, Lcom/autosdk/bussiness/navi/NaviController;->getPathId(Lcom/autonavi/gbl/common/path/option/PathInfo;)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    move p1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private initHandler()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "update_navi_speed"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->setUiLooper(ILandroid/os/Looper;)Z

    new-instance v0, Lextview/presentation/navi/NavExtraPresenterforR$a;

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lextview/presentation/navi/NavExtraPresenterforR$a;-><init>(Lextview/presentation/navi/NavExtraPresenterforR;Landroid/os/Looper;)V

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$startNav$0()V
    .locals 8

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v3, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget v3, p0, Lg/a/a/a/a;->surfaceId:I


    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v4

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget v3, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {v0, v3, v2, v1, v2}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    :goto_1
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget v3, p0, Lg/a/a/a/a;->surfaceId:I


    # 获取中控配置的map mode
    #invoke-static {}, Le/e/c/j0/h0;->b()Le/e/c/j0/h0;

    #move-result-object v6

    #invoke-virtual {v6}, Le/e/c/j0/h0;->getConfigKeyMapviewMode()I
    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v6

    invoke-virtual {v6}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    move-result v6

    #iput v1, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_else

    const/high16 v4, 0x41800000    # 16.0f

    goto :cond_end

    :cond_else

    const/high16 v4, 0x41880000    # 17.0f

    :cond_end

    invoke-virtual {v0, v3, v4}, Lcom/autosdk/bussiness/map/MapController;->setZoomLevel(IF)V

    invoke-virtual {p0, v6}, Lextview/presentation/navi/NavExtraPresenterforR;->setMapModeForStartNavi(I)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(IZ)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const/16 v4, 0x232d

    invoke-virtual {v0, v1, v4, v3}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapIconVisible(IIZ)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const v4, 0x30d41

    invoke-virtual {v0, v1, v4, v3}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapIconVisible(IIZ)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget v4, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {v0, v4, v2}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapSample3DVisible(IZ)V

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    iget v4, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {v0, v4}, Lcom/autosdk/bussiness/layer/LayerController;->getUserLayer(I)Lcom/autosdk/bussiness/layer/UserLayer;

    move-result-object v0

    if-eqz v0, :cond_4

    const-wide/16 v4, 0x1f45

    invoke-virtual {v0, v4, v5}, Lcom/autosdk/bussiness/layer/UserLayer;->clearAllItems(J)V

    const-wide/16 v4, 0x1f43

    invoke-virtual {v0, v4, v5}, Lcom/autosdk/bussiness/layer/UserLayer;->clearAllItems(J)V

    :cond_4
    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setGuideRouteControlVisible(Z)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    const-wide/16 v4, 0x1790

    invoke-virtual {v0, v4, v5, v3}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setGuideRouteControlVisible(JZ)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setAreaControlVisible(Z)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setRoadFacilityControlVisible(Z)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setLabelControlVisible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setBizRouteTypeStartEndLineVisible(Z)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    const/16 v3, 0x7d1

    invoke-virtual {v0, v3}, Lcom/autosdk/bussiness/layer/DrivingLayer;->updateCarStyle(I)V

    iget-object v0, p0, Lg/a/a/a/a;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarVisible(Z)V

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lextview/presentation/navi/NavExtraPresenterforR;->firstDrawTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2bc

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method

.method private synthetic lambda$stopNav$1()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NavExtraPresenterforR"

    const-string v3, "stopNav"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/search/SearchController;->getInstance()Lcom/autosdk/bussiness/search/SearchController;

    move-result-object v1

    iget v2, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mKeyWordTaskId:I

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/search/SearchController;->abort(I)I

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v1

    sget v3, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v3, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v4

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v3, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {v1, v3, v2, v0, v2}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    :goto_1
    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setGuideRouteControlVisible(Z)V

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setAreaControlVisible(Z)V

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setRoadFacilityControlVisible(Z)V

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setGuideEagleEyeControlVisible(Z)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/layer/DrivingLayer;->clearAllItems()V

    # 获取中控配置的map mode
    #invoke-static {}, Le/e/c/j0/h0;->b()Le/e/c/j0/h0;

    #move-result-object v1

    #invoke-virtual {v1}, Le/e/c/j0/h0;->getConfigKeyMapviewMode()I
    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->setMapModeForStartNavi(I)V


    return-void
.end method

.method private shouldShowAllPaths(Ljava/util/ArrayList;DDDD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/common/POI;",
            ">;DDDD)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lcom/autonavi/gbl/common/model/Coord2DDouble;

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/autonavi/gbl/common/model/Coord2DDouble;-><init>(DD)V

    new-instance p2, Lcom/autonavi/gbl/common/model/Coord2DDouble;

    invoke-direct {p2, p6, p7, p8, p9}, Lcom/autonavi/gbl/common/model/Coord2DDouble;-><init>(DD)V

    invoke-static {p1, p2}, Lcom/autonavi/gbl/layer/model/BizLayerUtil;->calcDistanceBetweenPoints(Lcom/autonavi/gbl/common/model/Coord2DDouble;Lcom/autonavi/gbl/common/model/Coord2DDouble;)D

    move-result-wide p1

    const-wide p3, 0x40e86a0000000000L    # 50000.0

    cmpl-double p1, p1, p3

    if-lez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private showCrossImageInBiz(Lcom/autonavi/gbl/guide/model/CrossImageInfo;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NavExtraPresenterforR"

    const-string v3, "showCrossImageInBiz IN"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    invoke-virtual {v1}, Lextview/presentation/presenter/CrossImageExtraController;->c()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    invoke-virtual {v1}, Lextview/presentation/presenter/CrossImageExtraController;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "showCrossImageInBiz OUT. isShowCrossImage={?}"

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    invoke-virtual {v1, p1}, Lextview/presentation/presenter/CrossImageExtraController;->h(Lcom/autonavi/gbl/guide/model/CrossImageInfo;)Z

    move-result v1

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v4

    iget v5, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {v4, v5}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "showCrossImageInBiz updated={?}"

    invoke-static {v2, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_2

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "showCrossImageInBiz OUT updated = false"

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    invoke-virtual {p1}, Lextview/presentation/presenter/CrossImageExtraController;->g()V

    iget-object p1, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz p1, :cond_1

    check-cast p1, Lg/a/c/p;

    invoke-virtual {p1}, Lg/a/c/p;->v()V

    :cond_1
    return-void

    :cond_2
    iget p1, p1, Lcom/autonavi/gbl/guide/model/CrossImageInfo;->type:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "showCrossImageInBiz type4 return"

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p1, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz p1, :cond_4

    check-cast p1, Lg/a/c/p;

    invoke-virtual {p1}, Lg/a/c/p;->L()V

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "showCrossImageInBiz OUT"

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateNextCrossInfo()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NavExtraPresenterforR"

    const-string v3, "updateNextCrossInfo"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "updateNextCrossInfo mCurNaviInfo null"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    invoke-static {v1}, Lf/h/f/b2/t/r4/b/k;->g(Lcom/autonavi/gbl/guide/model/NaviInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget-object v1, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->nextCrossInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/gbl/guide/model/CrossNaviInfo;

    iget-short v3, v1, Lcom/autonavi/gbl/guide/model/CrossNaviInfo;->outCnt:S

    iput v3, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mNextThumRoundNum:I

    iget-object v3, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    iget v4, v1, Lcom/autonavi/gbl/guide/model/CrossNaviInfo;->crossManeuverID:I

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->maneuverID:J

    iget v1, v1, Lcom/autonavi/gbl/guide/model/CrossNaviInfo;->segIdx:I

    int-to-long v4, v1

    iput-wide v4, v3, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->segmentIndex:J

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget-wide v4, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->pathID:J

    iput-wide v4, v3, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->pathID:J

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "updateNextCrossInfo hasNextThumTip"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mPreviousNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    iget-object v3, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    invoke-static {v1, v3}, Lf/h/f/b2/t/r4/b/k;->j(Lcom/autonavi/gbl/guide/model/ManeuverInfo;Lcom/autonavi/gbl/guide/model/ManeuverInfo;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "updateNextCrossInfo isSameNextThumManeuverInfo"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    invoke-virtual {p0, v0, v3}, Lextview/presentation/navi/NavExtraPresenterforR;->updateNaviInfo(Lcom/autonavi/gbl/guide/model/NaviInfo;Z)V

    goto :goto_0

    :cond_1
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mPreviousNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    aput-object v3, v1, v0

    const-string v0, "updateNextCrossInfo mPreviousNextThumManeuverInfo:{?}"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mPreviousNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->requestNextThumTurnIcon(Lcom/autonavi/gbl/guide/model/ManeuverInfo;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mPreviousNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mNextThumManeuverInfo:Lcom/autonavi/gbl/guide/model/ManeuverInfo;

    iget-wide v2, v1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->maneuverID:J

    iput-wide v2, v0, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->maneuverID:J

    iget-wide v2, v1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->pathID:J

    iput-wide v2, v0, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->pathID:J

    iget v2, v1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->type:I

    iput v2, v0, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->type:I

    iget-wide v1, v1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->segmentIndex:J

    iput-wide v1, v0, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->segmentIndex:J

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->lambda$startNav$0()V

    return-void
.end method

.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->lambda$stopNav$1()V

    return-void
.end method

.method public changeMainNaviPath(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "NavExtraPresenterforR"

    const-string v1, "changeMainNaviPath()====== mainIndex:{?}"

    invoke-static {p1, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autosdk/bussiness/layer/DrivingLayer;->clearBizRouteTypeGuidePathBoardLayer()V

    :cond_0
    invoke-virtual {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->updatePaths()V

    return-void
.end method

.method public changeNaviPath(J)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "NavExtraPresenterforR"

    const-string v3, "changeNaviPath pathId: {?}"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getPathInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    move v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getPathInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/gbl/common/path/option/PathInfo;

    invoke-virtual {v4}, Lcom/autonavi/gbl/common/path/option/PathInfo;->getPathID()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    move v3, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v1, :cond_3

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {p1, v3}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setSelectedPathIndex(I)V

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {p1}, Lcom/autosdk/bussiness/layer/DrivingLayer;->clearBizRouteTypeArrowLayer()V

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-virtual {p1}, Lcom/autosdk/bussiness/layer/DrivingLayer;->updatePaths()V

    :cond_3
    return-void
.end method

.method public detachView()V
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/search/SearchController;->getInstance()Lcom/autosdk/bussiness/search/SearchController;

    move-result-object v0

    iget v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mKeyWordTaskId:I

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/search/SearchController;->abort(I)I

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    invoke-super {p0}, Lg/a/a/a/a;->detachView()V

    return-void
.end method

.method public getEndFloorNum()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getToPOI()Lcom/autosdk/bussiness/common/POI;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getToPOI()Lcom/autosdk/bussiness/common/POI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/POI;->getFloorNo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getListenerBizHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hideLaneInfo()V
    .locals 1

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v0, :cond_0

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->x()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getLayerController()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    iget v1, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/LayerController;->getDrivingLayer(I)Lcom/autosdk/bussiness/layer/DrivingLayer;

    move-result-object v0

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-static {}, Lf/h/f/b2/m;->e()Lf/h/f/b2/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/h/f/b2/m;->a(Lg/a/a/a/f;)V

    new-instance v0, Lextview/presentation/presenter/CrossImageExtraController;

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    invoke-direct {v0, v1}, Lextview/presentation/presenter/CrossImageExtraController;-><init>(Lcom/autosdk/bussiness/layer/DrivingLayer;)V

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    invoke-direct {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->initHandler()V

    new-instance v0, Lcom/autonavi/gbl/map/model/MapParameter;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/MapParameter;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapParameter;->value1:I

    const/16 v1, 0xf

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapParameter;->value2:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapParameter;->value3:I

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapParameter;->value4:I

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v2, p0, Lg/a/a/a/a;->surfaceId:I

    const/16 v3, 0x42

    invoke-virtual {v1, v2, v3, v0}, Lcom/autosdk/bussiness/map/MapController;->setMapBusinessDataPara(IILcom/autonavi/gbl/map/model/MapParameter;)V

    return-void
.end method

.method public onBydSettingChanged(Ljava/lang/String;Lcom/autonavi/gbl/user/behavior/model/ConfigValue;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lg/a/a/a/a;->onBydSettingChanged(Ljava/lang/String;Lcom/autonavi/gbl/user/behavior/model/ConfigValue;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBydSettingChanged, bydKeyString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value.intValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;->intValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBydConfigKeyDayNightMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mBydConfigKeyDayNightMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "NavExtraPresenterforR"

    invoke-static {v3, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "BydConfigKeyDayNightMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mBydConfigKeyDayNightMode:I

    iget p2, p2, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;->intValue:I

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->onUpdateDirectionInfo(Ljava/util/ArrayList;Z)V

    invoke-direct {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->updateNextCrossInfo()V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/k0;->getBydConfigKeyDayNightMode()I

    move-result p1

    iput p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mBydConfigKeyDayNightMode:I

    :cond_0
    return-void
.end method

.method public onCarOnRouteAgain()V
    .locals 0

    return-void
.end method

.method public onChangeNaviPath(JJ)V
    .locals 0

    return-void
.end method

.method public onCurrentRoadSpeed(I)V
    .locals 0

    return-void
.end method

.method public onDeletePath(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDriveReport(Lcom/autonavi/gbl/guide/model/DriveReport;)V
    .locals 0

    return-void
.end method

.method public onFileOperationNotify(Lcom/autonavi/gbl/guide/model/FileOperationEvent;)V
    .locals 0

    return-void
.end method

.method public onHideCrossImage(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHideCrossImage i={?}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraPresenterforR"

    invoke-static {v1, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onHideNaviLaneInfo()V
    .locals 0

    invoke-virtual {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->hideLaneInfo()V

    return-void
.end method

.method public onHideTMCIncidentReport(I)V
    .locals 0

    return-void
.end method

.method public onMainNaviPath(Lcom/autonavi/gbl/common/path/option/PathInfo;)V
    .locals 0

    return-void
.end method

.method public onNaviArrive(JI)V
    .locals 0

    return-void
.end method

.method public onNaviStop(JI)V
    .locals 0

    return-void
.end method

.method public onNetChange()V
    .locals 4

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->refreshRouteOnNetworkChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->refreshRouteOnNetworkChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onObtainAdvancedManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;)V
    .locals 0

    return-void
.end method

.method public onObtainExitDirectionInfo(Lcom/autonavi/gbl/guide/model/ExitDirectionResponseData;)V
    .locals 0

    return-void
.end method

.method public onObtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;)V
    .locals 10

    const/4 v0, 0x0

    const-string v1, "NavExtraPresenterforR"

    if-eqz p1, :cond_6

    iget-object v2, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p1, Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;->requestConfig:Lcom/autonavi/gbl/guide/model/ManeuverConfig;

    if-nez v2, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onObtainManeuverIconData()  config == null"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget-wide v4, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->maneuverID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-wide v6, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->pathID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    iget v4, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const/4 v4, 0x4

    iget v8, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const/4 v4, 0x5

    sget v8, Lf/h/f/b2/s/s;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    const-string v4, "onObtainManeuverIconData()  config.arrowColor={?}, maneuverID={?}, pathID={?}  width:{?} height:{?},extraTurnIconSize:{?}"

    invoke-static {v1, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->width:I

    sget v4, Lf/h/f/b2/s/s;->g:I

    if-ne v3, v4, :cond_4

    iget v3, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->height:I

    if-ne v3, v4, :cond_4

    iget v3, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    sget v4, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_arrow_day_color:I

    invoke-static {v4}, Lf/h/f/b2/s/w;->f(I)I

    move-result v4

    if-eq v3, v4, :cond_2

    iget v3, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    sget v4, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_arrow_night_color:I

    invoke-static {v4}, Lf/h/f/b2/s/w;->f(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    :cond_2
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "onObtainManeuverIconData() getExtraRoadSignBitmap "

    invoke-static {v1, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v3, p0, Lextview/presentation/navi/NavExtraPresenterforR;->maneuverRequestTime:J

    iget-wide v8, p0, Lextview/presentation/navi/NavExtraPresenterforR;->offLineManeuverSetTime:J

    cmp-long v3, v3, v8

    if-gez v3, :cond_3

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p1, Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;->requestID:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v0

    iget-wide v3, p0, Lextview/presentation/navi/NavExtraPresenterforR;->maneuverRequestTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v5

    iget-wide v3, p0, Lextview/presentation/navi/NavExtraPresenterforR;->offLineManeuverSetTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v6

    const-string p1, "onObtainManeuverIconData() OffLine Intercept\uff1arequestID={?}, maneuverRequestTime={?}, offLineManeuverSetTime={?}"

    invoke-static {v1, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v3, p1, Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;->data:[B

    iget v4, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->width:I

    iget v5, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->height:I

    iget-wide v6, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->maneuverID:J

    long-to-int v6, v6

    iget v7, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRoundNum:I

    invoke-static {v3, v4, v5, v6, v7}, Lf/h/f/b2/s/s;->m([BIIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lextview/presentation/navi/NavExtraPresenterforR;->updateTurnIcon(Landroid/graphics/Bitmap;)V

    :cond_4
    iget v3, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->width:I

    sget v4, Lf/h/f/b2/s/s;->i:I

    if-ne v3, v4, :cond_5

    iget v3, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->height:I

    if-ne v3, v4, :cond_5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "onObtainManeuverIconData() getNextRoadSignBitmap"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v0, Lf/h/f/b2/s/s;->i:I

    iget-object p1, p1, Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;->data:[B

    iget-wide v1, v2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->maneuverID:J

    long-to-int v1, v1

    iget v2, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mNextThumRoundNum:I

    invoke-static {p1, v0, v0, v1, v2}, Lf/h/f/b2/s/s;->i([BIIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lextview/presentation/navi/NavExtraPresenterforR;->updateNextThumTurnIcon(Landroid/graphics/Bitmap;)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onObtainManeuverIconData() maneuverIconResponseData extraView == null"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onObtainSAPAInfo(Lcom/autonavi/gbl/guide/model/SAPAInquireResponseData;)V
    .locals 0

    return-void
.end method

.method public onPassLast3DSegment()V
    .locals 0

    return-void
.end method

.method public onQueryAppointLanesInfo(JLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/LaneInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReroute(Lcom/autonavi/gbl/common/path/option/RouteOption;)V
    .locals 0

    return-void
.end method

.method public onSelectMainPathStatus(JI)V
    .locals 0

    return-void
.end method

.method public onSettingChanged(ILcom/autonavi/gbl/user/behavior/model/ConfigValue;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lg/a/a/a/a;->onSettingChanged(ILcom/autonavi/gbl/user/behavior/model/ConfigValue;)V

    return-void
.end method

.method public declared-synchronized onShowCrossImage(Lcom/autonavi/gbl/guide/model/CrossImageInfo;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    invoke-virtual {v0}, Lextview/presentation/presenter/CrossImageExtraController;->d()V

    const-string v0, "NavExtraPresenterforR"

    const-string v1, "onShowCrossImage OUT. info is {?}"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v4, "NULL"

    goto :goto_0

    :cond_0
    iget-wide v4, p1, Lcom/autonavi/gbl/guide/model/CrossImageInfo;->distance:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-wide v0, p1, Lcom/autonavi/gbl/guide/model/CrossImageInfo;->distance:J

    const-wide/16 v3, 0x3e8

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Lg/a/c/p;

    iget-boolean v1, v1, Lg/a/c/p;->n:Z

    if-eqz v1, :cond_2

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/a/a/b;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/a/a/b;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v1, v3, v4, v0}, Lf/h/c/n0/p1;->l(IIII)Lf/h/c/n0/p1;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/n0/p1;->h()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "NavExtraPresenterforR"

    const-string v3, "onShowCrossImage SET updateViewRect={?}"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lextview/presentation/navi/NavExtraPresenterforR;->showCrossImageInBiz(Lcom/autonavi/gbl/guide/model/CrossImageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    :try_start_1
    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    invoke-virtual {p1}, Lextview/presentation/presenter/CrossImageExtraController;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onShowDriveEventTip(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/DriveEventTip;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onShowLockScreenTip(Lcom/autonavi/gbl/guide/model/LockScreenTip;)V
    .locals 0

    return-void
.end method

.method public onShowNaviCameraExt(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviCameraExt;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onShowNaviCrossTMC(Lcom/autonavi/gbl/util/model/BinaryStream;)V
    .locals 0

    return-void
.end method

.method public onShowNaviFacility(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviRoadFacility;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onShowNaviLaneInfo(Lcom/autonavi/gbl/guide/model/LaneInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/autonavi/gbl/guide/model/LaneInfo;->backLane:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/autonavi/gbl/guide/model/LaneInfo;->frontLane:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/autonavi/gbl/guide/model/LaneInfo;->backExtenLane:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/autonavi/gbl/guide/model/LaneInfo;->frontExtenLane:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1, v2, p1}, Lextview/presentation/navi/NavExtraPresenterforR;->showLaneInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onShowNaviManeuver(Lcom/autonavi/gbl/guide/model/ManeuverInfo;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v1, Lextview/presentation/navi/NavExtraPresenterforR$b;

    invoke-direct {v1, p0, p1}, Lextview/presentation/navi/NavExtraPresenterforR$b;-><init>(Lextview/presentation/navi/NavExtraPresenterforR;Lcom/autonavi/gbl/guide/model/ManeuverInfo;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "NavExtraPresenterforR"

    const-string v1, "onShowNaviManeuver info is null"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowNaviWeather(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviWeatherInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onShowSameDirectionMixForkInfo(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/MixForkInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "NavExtraPresenterforR"

    const-string v1, "onShowSameDirectionMixForkInfo1 list.size() = {?}"

    invoke-static {p1, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onShowTMCIncidentReport(Lcom/autonavi/gbl/guide/model/TMCIncidentReport;)V
    .locals 0

    return-void
.end method

.method public onShowTollGateLane(Lcom/autonavi/gbl/common/path/model/TollGateInfo;)V
    .locals 0

    return-void
.end method

.method public onSizeToFull()V
    .locals 2

    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/e/b;->g()Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->onObtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;)V

    :cond_0
    invoke-virtual {v0}, Lg/a/e/b;->k()Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->onObtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;)V

    :cond_1
    const v0,0x0
    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->setMapModeForStartNavi(I)V

    return-void
.end method

.method public onSizeToSmall()V
    .locals 1

    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/e/b;->g()Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->onObtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;)V

    :cond_0

    const v0,0x0
    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->setMapModeForStartNavi(I)V

    return-void
.end method

.method public onSuggestChangePath(JJLcom/autonavi/gbl/guide/model/SuggestChangePathReason;)V
    .locals 0

    return-void
.end method

.method public onSwitchParallelRoad()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraPresenterforR"

    const-string v2, "onSwitchParallelRoad()=====: "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;

    invoke-direct {v0}, Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;-><init>()V

    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->onUpdateExitDirectionInfo(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V

    return-void
.end method

.method public onUpdateChargeStationPass(J)V
    .locals 0

    return-void
.end method

.method public onUpdateDirectionInfo(Lcom/autonavi/gbl/guide/model/ManeuverInfo;Z)V
    .locals 13

    iget-wide v0, p1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->maneuverID:J

    long-to-int v0, v0

    if-lez v0, :cond_6

    iget-wide v1, p1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->pathID:J

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v4

    invoke-virtual {v4}, Lf/h/c/j0/k0;->getBydConfigKeyDayNightMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-string v4, "NavExtraPresenterforR"

    const-string v9, "onUpdateDirectionInfo maneuverID =:{?},isNightExtra=:{?}, getBydConfigKeyDayNightMode=:{?}, isForceUpdate:{?}"

    invoke-static {v4, v9, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v9, p0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestPathID:J

    cmp-long v3, v9, v1

    if-nez v3, :cond_0

    iget-wide v9, p0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestSegmentIdx:J

    iget-wide v11, p1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->segmentIndex:J

    cmp-long v3, v9, v11

    if-nez v3, :cond_0

    iget-wide v9, p0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestManeuverID:J

    int-to-long v11, v0

    cmp-long v3, v9, v11

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    new-array p1, v5, [Ljava/lang/Object;

    const-string p2, "onUpdateDirectionInfo return"

    invoke-static {v4, p2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;

    invoke-direct {p2}, Lcom/autonavi/gbl/guide/model/ManeuverConfig;-><init>()V

    sget v3, Lf/h/f/b2/s/s;->g:I

    iput v3, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->width:I

    iput v3, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->height:I

    sget v3, Lcom/autosdk/drive/R$color;->auto_ui_direction_back_color:I

    invoke-static {v3}, Lf/h/f/b2/s/w;->f(I)I

    move-result v3

    iput v3, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->backColor:I

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v3

    if-nez v3, :cond_4

    sget v3, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_road_day_color:I

    invoke-static {v3}, Lf/h/f/b2/s/w;->f(I)I

    move-result v9

    iput v9, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->roadColor:I

    sget v9, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_arrow_day_color:I

    invoke-static {v9}, Lf/h/f/b2/s/w;->f(I)I

    move-result v10

    iput v10, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_1
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v10

    sget v11, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-eq v10, v11, :cond_2

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v10

    sget v11, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v10, v11, :cond_3

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v10

    invoke-virtual {v10}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v10

    if-ne v10, v8, :cond_3

    sget v3, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_road_night_color:I

    invoke-static {v3}, Lf/h/f/b2/s/w;->f(I)I

    move-result v3

    iput v3, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->roadColor:I

    sget v3, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_arrow_night_color:I

    invoke-static {v3}, Lf/h/f/b2/s/w;->f(I)I

    move-result v3

    iput v3, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    new-array v3, v5, [Ljava/lang/Object;

    const-string v8, "onUpdateDirectionInfo SMALL_DISPLAY snowThemeID=:"

    invoke-static {v4, v8, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lf/h/f/b2/s/w;->f(I)I

    move-result v3

    iput v3, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->roadColor:I

    invoke-static {v9}, Lf/h/f/b2/s/w;->f(I)I

    move-result v3

    iput v3, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    new-array v3, v5, [Ljava/lang/Object;

    const-string v8, "onUpdateDirectionInfo snowThemeID=:"

    invoke-static {v4, v8, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget v3, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_road_night_color:I

    invoke-static {v3}, Lf/h/f/b2/s/w;->f(I)I

    move-result v3

    iput v3, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->roadColor:I

    sget v3, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_arrow_night_color:I

    invoke-static {v3}, Lf/h/f/b2/s/w;->f(I)I

    move-result v3

    iput v3, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    :cond_5
    :goto_0
    iput-wide v1, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->pathID:J

    iget-wide v8, p1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->segmentIndex:J

    iput-wide v8, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->segmentIdx:J

    int-to-long v10, v0

    iput-wide v10, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->maneuverID:J

    iput-wide v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestPathID:J

    iput-wide v8, p0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestSegmentIdx:J

    iput-wide v10, p0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestManeuverID:J

    new-array p1, v7, [Ljava/lang/Object;

    iget v0, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    iget-wide v0, p2, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->segmentIdx:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v6

    const-string v0, "onUpdateDirectionInfo info config.arrowColor=:{?},mSegmentIndex:{?}"

    invoke-static {v4, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autosdk/bussiness/navi/NaviController;->obtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverConfig;)J

    :cond_6
    return-void
.end method

.method public onUpdateDirectionInfo(Ljava/util/ArrayList;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "NavExtraPresenterforR"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "onUpdateDirectionInfo naviInfoList is null"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget-object v4, v4, Lcom/autonavi/gbl/guide/model/NaviInfo;->NaviInfoData:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget v5, v5, Lcom/autonavi/gbl/guide/model/NaviInfo;->NaviInfoFlag:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/gbl/guide/model/NaviInfoPanel;

    iget v5, v4, Lcom/autonavi/gbl/guide/model/NaviInfoPanel;->maneuverID:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4}, Lf/h/c/n0/u2;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lf/h/c/n0/u2;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v10, 0x3

    aput-object v7, v6, v10

    const-string v7, "onUpdateDirectionInfo maneuverID = {?},naviInfoPanel = {?} NaviInfo = {?} isForceUpdate = {?}"

    invoke-static {v2, v7, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v5, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget-wide v6, v6, Lcom/autonavi/gbl/guide/model/NaviInfo;->pathID:J

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget v11, v11, Lcom/autonavi/gbl/guide/model/NaviInfo;->curSegIdx:I

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v3

    const-string v13, "onUpdateDirectionInfo isNightExtra = {?}"

    invoke-static {v2, v13, v12}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v12, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestPathID:J

    cmp-long v12, v12, v6

    if-nez v12, :cond_1

    iget-wide v12, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestSegmentIdx:J

    int-to-long v14, v11

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    iget-wide v12, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestManeuverID:J

    int-to-long v14, v5

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    iget-boolean v12, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastNightExtra:Z

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v13

    if-ne v12, v13, :cond_1

    if-nez p2, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "onUpdateDirectionInfo return"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;

    invoke-direct {v12}, Lcom/autonavi/gbl/guide/model/ManeuverConfig;-><init>()V

    sget v13, Lf/h/f/b2/s/s;->g:I

    iput v13, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->width:I

    iput v13, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->height:I

    iget-object v13, v4, Lcom/autonavi/gbl/guide/model/NaviInfoPanel;->maneuverInfo:Lcom/autonavi/gbl/guide/model/NaviManeuverInfo;

    if-eqz v13, :cond_2

    new-array v14, v8, [Ljava/lang/Object;

    iget-boolean v13, v13, Lcom/autonavi/gbl/guide/model/NaviManeuverInfo;->isObtainSupported:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v14, v3

    const-string v13, "onUpdateDirectionInfo isObtainSupported: {?}"

    invoke-static {v2, v13, v14}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v4, Lcom/autonavi/gbl/guide/model/NaviInfoPanel;->maneuverInfo:Lcom/autonavi/gbl/guide/model/NaviManeuverInfo;

    iget-boolean v4, v4, Lcom/autonavi/gbl/guide/model/NaviManeuverInfo;->isObtainSupported:Z

    if-nez v4, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "onUpdateDirectionInfo isObtainSupported is false!"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-wide v6, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestPathID:J

    int-to-long v6, v11

    iput-wide v6, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestSegmentIdx:J

    int-to-long v6, v5

    iput-wide v6, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestManeuverID:J

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v1

    iput-boolean v1, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastNightExtra:Z

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lextview/presentation/navi/NavExtraPresenterforR;->offLineManeuverSetTime:J

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "onUpdateDirectionInfo isObtainSupported offLineManeuverSetTime={?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, Lextview/presentation/navi/NavExtraPresenterforR;->mRoundNum:I

    invoke-static {v5, v1}, Lf/h/f/b2/s/s;->k(II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->updateTurnIcon(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    sget v4, Lcom/autosdk/drive/R$color;->auto_ui_direction_back_color:I

    invoke-static {v4}, Lf/h/f/b2/s/w;->f(I)I

    move-result v4

    iput v4, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->backColor:I

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v4

    if-nez v4, :cond_6

    sget v4, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_road_day_color:I

    invoke-static {v4}, Lf/h/f/b2/s/w;->f(I)I

    move-result v13

    iput v13, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->roadColor:I

    sget v13, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_arrow_day_color:I

    invoke-static {v13}, Lf/h/f/b2/s/w;->f(I)I

    move-result v14

    iput v14, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_3
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v14

    sget v15, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-eq v14, v15, :cond_4

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v14

    sget v15, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v14, v15, :cond_5

    :cond_4
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v14

    if-ne v14, v10, :cond_5

    sget v4, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_road_night_color:I

    invoke-static {v4}, Lf/h/f/b2/s/w;->f(I)I

    move-result v4

    iput v4, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->roadColor:I

    sget v4, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_arrow_night_color:I

    invoke-static {v4}, Lf/h/f/b2/s/w;->f(I)I

    move-result v4

    iput v4, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    new-array v4, v3, [Ljava/lang/Object;

    const-string v13, "onUpdateDirectionInfo SMALL_DISPLAY snowThemeID=:"

    invoke-static {v2, v13, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {v4}, Lf/h/f/b2/s/w;->f(I)I

    move-result v4

    iput v4, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->roadColor:I

    invoke-static {v13}, Lf/h/f/b2/s/w;->f(I)I

    move-result v4

    iput v4, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    new-array v4, v3, [Ljava/lang/Object;

    const-string v13, "onUpdateDirectionInfo snowThemeID=:"

    invoke-static {v2, v13, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    sget v4, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_road_night_color:I

    invoke-static {v4}, Lf/h/f/b2/s/w;->f(I)I

    move-result v4

    iput v4, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->roadColor:I

    sget v4, Lcom/autosdk/drive/R$color;->auto_ui_direction_extra_arrow_night_color:I

    invoke-static {v4}, Lf/h/f/b2/s/w;->f(I)I

    move-result v4

    iput v4, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    :cond_7
    :goto_0
    iput-wide v6, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestPathID:J

    int-to-long v13, v11

    iput-wide v13, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestSegmentIdx:J

    int-to-long v4, v5

    iput-wide v4, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastRequestManeuverID:J

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v11

    iput-boolean v11, v0, Lextview/presentation/navi/NavExtraPresenterforR;->lastNightExtra:Z

    iput-wide v6, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->pathID:J

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget v1, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->curSegIdx:I

    int-to-long v6, v1

    iput-wide v6, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->segmentIdx:J

    iput-wide v4, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->maneuverID:J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lextview/presentation/navi/NavExtraPresenterforR;->maneuverRequestTime:J

    new-array v1, v10, [Ljava/lang/Object;

    iget v4, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-wide v3, v12, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->segmentIdx:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v8

    iget-wide v3, v0, Lextview/presentation/navi/NavExtraPresenterforR;->maneuverRequestTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v9

    const-string v3, "onUpdateDirectionInfo config.arrowColor=:{?},mSegmentIndex:{?},maneuverRequestTime:{?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/autosdk/bussiness/navi/NaviController;->obtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverConfig;)J

    :cond_8
    return-void
.end method

.method public onUpdateDynamicOperationDisplayEvent(Lcom/autonavi/gbl/guide/model/DynamicOperationDisplayEvent;)V
    .locals 0

    return-void
.end method

.method public onUpdateElecVehicleETAInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/common/path/model/ElecVehicleETAInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateExitDirectionInfo(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "NavExtraPresenterforR"

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;->directionInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurPathID:J

    iput v2, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurSegIdx:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;->disToCurrentPos:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurSegIdx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "onUpdateExitDirectionInfo \u51fa\u53e3\u4fe1\u606f\uff1a\u663e\u793a\u51fa\u53e3\u4fe1\u606f distance:{?}, mCurSegIdx:{?}"

    invoke-static {v1, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iput v2, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurSegIdx:I

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "onUpdateExitDirectionInfo \u51fa\u53e3\u4fe1\u606f\uff1a\u9690\u85cf\u51fa\u53e3\u4fe1\u606f"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p0, p1}, Lextview/presentation/navi/NavExtraPresenterforR;->updateExitDirectionInfo(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V

    return-void
.end method

.method public onUpdateIntervalCameraDynamicInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviIntervalCameraDynamicInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateIsSupportSimple3D(Z)V
    .locals 0

    return-void
.end method

.method public onUpdateNaviInfo(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "NavExtraPresenterforR"

    const-string v4, "onUpdateNaviInfo naviInfoList:{?}"

    invoke-static {v3, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iput-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/gbl/guide/model/NaviInfo;

    iput-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget v1, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->ringOutCnt:I

    iput v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRoundNum:I

    invoke-virtual {p0, p1, v2}, Lextview/presentation/navi/NavExtraPresenterforR;->onUpdateDirectionInfo(Ljava/util/ArrayList;Z)V

    invoke-direct {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->updateNextCrossInfo()V

    iget-wide v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurPathID:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget-wide v1, p1, Lcom/autonavi/gbl/guide/model/NaviInfo;->pathID:J

    iput-wide v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurPathID:J

    :cond_1
    iget p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurSegIdx:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget p1, p1, Lcom/autonavi/gbl/guide/model/NaviInfo;->curSegIdx:I

    iput p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurSegIdx:I

    :cond_2
    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget p1, p1, Lcom/autonavi/gbl/guide/model/NaviInfo;->curSegIdx:I

    iget v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurSegIdx:I

    if-ne p1, v1, :cond_3

    iget-wide v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurPathID:J

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget-wide v3, p1, Lcom/autonavi/gbl/guide/model/NaviInfo;->pathID:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget p1, p1, Lcom/autonavi/gbl/guide/model/NaviInfo;->curSegIdx:I

    iput p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurSegIdx:I

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget-wide v1, p1, Lcom/autonavi/gbl/guide/model/NaviInfo;->pathID:J

    iput-wide v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurPathID:J

    new-instance p1, Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;

    invoke-direct {p1}, Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;-><init>()V

    invoke-virtual {p0, p1}, Lextview/presentation/navi/NavExtraPresenterforR;->updateExitDirectionInfo(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V

    :cond_4
    invoke-virtual {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->getEndFloorNum()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lextview/presentation/navi/NavExtraPresenterforR;->setStrEndFloorNum(Ljava/lang/String;)V

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    invoke-virtual {p0, p1, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->updateNaviInfo(Lcom/autonavi/gbl/guide/model/NaviInfo;Z)V

    iget-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getPathResult()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mPathResult:Ljava/util/ArrayList;

    :cond_6
    :goto_0
    return-void
.end method

.method public onUpdateNaviSocolEvent(Lcom/autonavi/gbl/guide/model/SocolEventInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdateSAPA(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviFacility;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateSocolText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateTMCCongestionInfo(Lcom/autonavi/gbl/guide/model/NaviCongestionInfo;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/autonavi/gbl/guide/model/NaviCongestionInfo;->totalRemainDist:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p1, Lcom/autonavi/gbl/guide/model/NaviCongestionInfo;->totalTimeOfSeconds:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "NavExtraPresenterforR"

    const-string v1, "onUpdateTMCCongestionInfo totalRemainDist=:{?}, totalTimeOfSeconds=:{?}"

    invoke-static {p1, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onUpdateTMCLightBar(Ljava/util/ArrayList;Lcom/autonavi/gbl/guide/model/LightBarDetail;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/LightBarInfo;",
            ">;",
            "Lcom/autonavi/gbl/guide/model/LightBarDetail;",
            "JZ)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateTREvent(Ljava/util/ArrayList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/PathTrafficEventInfo;",
            ">;J)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateTRPlayView(Lcom/autonavi/gbl/guide/model/RouteTrafficEventInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdateTrafficSignalInfo(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/TrafficSignal;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateViaPass(J)V
    .locals 0

    return-void
.end method

.method public requestNextThumTurnIcon(Lcom/autonavi/gbl/guide/model/ManeuverInfo;)V
    .locals 4

    sget v0, Lf/h/f/b2/s/s;->i:I

    new-instance v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;

    invoke-direct {v1}, Lcom/autonavi/gbl/guide/model/ManeuverConfig;-><init>()V

    iput v0, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->width:I

    iput v0, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->height:I

    sget v0, Lcom/autosdk/drive/R$color;->auto_ui_direction_back_color:I

    invoke-static {v0}, Lf/h/f/b2/s/w;->f(I)I

    move-result v0

    iput v0, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->backColor:I

    sget v0, Lcom/autosdk/drive/R$color;->auto_ui_direction_road_color:I

    invoke-static {v0}, Lf/h/f/b2/s/w;->f(I)I

    move-result v0

    iput v0, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->roadColor:I

    sget v0, Lcom/autosdk/drive/R$color;->auto_ui_direction_next_arrow_color:I

    invoke-static {v0}, Lf/h/f/b2/s/w;->f(I)I

    move-result v0

    iput v0, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    iget-wide v2, p1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->maneuverID:J

    iput-wide v2, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->maneuverID:J

    iget-wide v2, p1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->segmentIndex:J

    iput-wide v2, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->segmentIdx:J

    iget-wide v2, p1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->pathID:J

    iput-wide v2, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->pathID:J

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v2, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->backColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget v2, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->roadColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget v2, v1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->arrowColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    iget-wide v2, p1, Lcom/autonavi/gbl/guide/model/ManeuverInfo;->segmentIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v0, v2

    const-string p1, "NavExtraPresenterforR"

    const-string v2, "obtainNextManeuverIconData backColor:{?},roadColor:{?},arrowColor:{?},segmentIndex:{?}"

    invoke-static {p1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/autosdk/bussiness/navi/NaviController;->obtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverConfig;)J

    return-void
.end method

.method public setDeletePath(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/common/path/option/PathInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "NavExtraPresenterforR"

    const-string v0, "setDeletePath()====== curSelectedPathIndex:{?}"

    invoke-static {p2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->updatePaths()V

    return-void
.end method

.method public setHightlightBuilding(Lcom/autonavi/gbl/map/model/MsgDataBuildingFocus;)V
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget v1, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/OperatorBusiness;->setHightlightBuilding(Lcom/autonavi/gbl/map/model/MsgDataBuildingFocus;)V

    return-void
.end method

.method public setMapModeForStartNavi(I)V
    .locals 4

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "NavExtraPresenterforR"

    const-string v2, "setMapModeForStartNavi()====== "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/MapviewModeParam;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->bChangeCenter:Z

    const/4 v1, 0x2

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    # 获取中控配置的map mode
    #invoke-static {}, Le/e/c/j0/h0;->b()Le/e/c/j0/h0;

    #move-result-object v1

    #invoke-virtual {v1}, Le/e/c/j0/h0;->getConfigKeyMapviewMode()I
    #invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    #move-result-object v1

    #invoke-virtual {v1}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    #move-result v1

    const/4 v2, 0x2

    iput v2, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_else

   #const/high16 v1, 0x41800000    # 16.0f
    #const/high16 v1, 0x41700000    # 15.0f
    #const/high16 v1, 0x41880000    # 17.0f
   invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getInstrumentSmallZoomLevel()F

    move-result v1

    goto :cond_end

    :cond_else

    #const/high16 v1, 0x41880000    # 17.0f
    invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getInstrumentSmallZoomLevel()F

    move-result v1
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

    #const/high16 v0, 0x42340000    # 45.0f
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
    return-void
.end method

.method public setRoute(Lcom/autonavi/gbl/common/path/model/RoutePoints;Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;IZZ)V
    .locals 14

    move-object v1, p0

    move-object/from16 v0, p2

    iput-object v0, v1, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    const-string v2, "NavExtraPresenterforR"

    const-string v3, "setRoute()====== mRouteCarResultData:{?}"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lextview/presentation/navi/NavExtraPresenterforR;->extraRoutePoints:Lg/a/e/a;

    monitor-enter v2

    :try_start_0
    const-string v3, "NavExtraPresenterforR"

    const-string v5, "setRoute()====== pathResult:{?}"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getPathInfos()Ljava/util/ArrayList;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, v1, Lextview/presentation/navi/NavExtraPresenterforR;->extraRoutePoints:Lg/a/e/a;

    invoke-virtual/range {p2 .. p2}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getPathInfos()Ljava/util/ArrayList;

    move-result-object v10

    move-object v9, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v8 .. v13}, Lg/a/e/a;->g(Lcom/autonavi/gbl/common/path/model/RoutePoints;Ljava/util/ArrayList;IZZ)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lextview/presentation/navi/NavExtraPresenterforR;->firstDrawTime:J

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setStrEndFloorNum(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v0, :cond_0

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0, p1}, Lg/a/c/p;->J(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTbtData()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraPresenterforR"

    const-string v2, "setTbtData"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/e/b;->j()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->onUpdateNaviInfo(Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lg/a/e/b;->c()Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->onUpdateExitDirectionInfo(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V

    invoke-virtual {v0}, Lg/a/e/b;->e()Lcom/autonavi/gbl/guide/model/LaneInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->onShowNaviLaneInfo(Lcom/autonavi/gbl/guide/model/LaneInfo;)V

    invoke-virtual {v0}, Lg/a/e/b;->g()Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->onObtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;)V

    :cond_0
    invoke-virtual {v0}, Lg/a/e/b;->k()Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->onObtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;)V

    :cond_1
    return-void
.end method

.method public showLaneInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const-string v1, "NavExtraPresenterforR"

    const-string v2, "showLaneInfo: {?}  {?}  {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v0, :cond_0

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lg/a/c/p;->N(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public startNav(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NavExtraPresenterforR"

    const-string v3, "startNav isNaviSim:{?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v2, Lg/a/c/a;

    invoke-direct {v2, p0}, Lg/a/c/a;-><init>(Lextview/presentation/navi/NavExtraPresenterforR;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v1, :cond_1

    check-cast v1, Lg/a/c/p;

    invoke-virtual {v1}, Lg/a/c/p;->O()V

    :cond_1
    invoke-virtual {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->setTbtData()V

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/autosdk/bussiness/navi/NaviController;->registerNaviObserver(Lcom/autonavi/gbl/guide/observer/INaviObserver;)V

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/autosdk/bussiness/layer/DrivingLayer;->enableTrafficSignalLight(Z)V

    return-void
.end method

.method public startSearchEndArea(Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "NavExtraPresenterforR"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getToPOI()Lcom/autosdk/bussiness/common/POI;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getToPOI()Lcom/autosdk/bussiness/common/POI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/common/POI;->getPoiAoiBounds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/autosdk/bussiness/logic/BaseLogic;->isNullList(Ljava/util/List;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mEndPointID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/common/POI;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/autosdk/bussiness/common/POI;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lf/h/c/n0/u2;->d(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v5

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/common/POI;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lf/h/c/n0/u2;->d(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v5

    :cond_2
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/common/POI;->getParent()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "===startSearchEndArea toPOI.getParent:{?}"

    invoke-static {v1, v0, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/autosdk/bussiness/search/request/SearchRequestInfo$Builder;

    invoke-direct {v0}, Lcom/autosdk/bussiness/search/request/SearchRequestInfo$Builder;-><init>()V

    const-string v1, "IDQ"

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/search/request/SearchRequestInfo$Builder;->setQueryType(Ljava/lang/String;)Lcom/autosdk/bussiness/search/request/SearchRequestInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autosdk/bussiness/search/request/SearchRequestInfo$Builder;->setParent(Z)Lcom/autosdk/bussiness/search/request/SearchRequestInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/search/request/SearchRequestInfo$Builder;->setPoi(Lcom/autosdk/bussiness/common/POI;)Lcom/autosdk/bussiness/search/request/SearchRequestInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/search/request/SearchRequestInfo$Builder;->build()Lcom/autosdk/bussiness/search/request/SearchRequestInfo;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/bussiness/search/SearchControllerV2;->getInstance()Lcom/autosdk/bussiness/search/SearchControllerV2;

    move-result-object v1

    new-instance v3, Lextview/presentation/navi/NavExtraPresenterforR$d;

    invoke-direct {v3, p0, p1, v2}, Lextview/presentation/navi/NavExtraPresenterforR$d;-><init>(Lextview/presentation/navi/NavExtraPresenterforR;Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;Lcom/autosdk/bussiness/common/POI;)V

    iget p1, p0, Lg/a/a/a/a;->surfaceId:I

    invoke-virtual {v1, v0, v3, p1}, Lcom/autosdk/bussiness/search/SearchControllerV2;->startSearch(Lcom/autosdk/bussiness/search/request/SearchRequestInfo;Lcom/autosdk/bussiness/search/SearchCallback;I)I

    move-result p1

    iput p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mKeyWordTaskId:I

    invoke-virtual {v2}, Lcom/autosdk/bussiness/common/POI;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mEndPointID:Ljava/lang/String;

    return-void

    :cond_3
    :goto_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "===startSearchEndArea poiAoiBounds.size:{?}"

    invoke-static {v1, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getToPOI()Lcom/autosdk/bussiness/common/POI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lextview/presentation/navi/NavExtraPresenterforR;->updateRouteEndAreaAndParentPoint(Lcom/autosdk/bussiness/common/POI;)V

    return-void

    :cond_4
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "===startSearchEndArea toPOI is null return"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stop(Z)V
    .locals 3

    invoke-virtual {p0}, Lextview/presentation/navi/NavExtraPresenterforR;->stopNav()V

    const/4 v0, 0x0

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->extraRoutePoints:Lg/a/e/a;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lextview/presentation/navi/NavExtraPresenterforR;->extraRoutePoints:Lg/a/e/a;

    invoke-virtual {v2}, Lg/a/e/a;->a()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v1, :cond_0

    check-cast v1, Lg/a/c/p;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lg/a/c/p;->o:Z

    iget-object v1, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    check-cast v1, Lg/a/c/p;

    invoke-virtual {v1, v0, v2, v2, v2}, Lg/a/c/p;->I(Ljava/util/ArrayList;III)Z

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->P()V

    :cond_0
    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lextview/presentation/presenter/CrossImageExtraController;->a()V

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autosdk/bussiness/navi/NaviController;->unregisterNaviObserver(Lcom/autonavi/gbl/guide/observer/INaviObserver;)V

    if-nez p1, :cond_2

    invoke-static {}, Lf/h/f/b2/m;->e()Lf/h/f/b2/m;

    move-result-object p1

    invoke-virtual {p1, p0}, Lf/h/f/b2/m;->k(Lg/a/a/a/f;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopNav()V
    .locals 2

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->refreshRouteOnNetworkChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    new-instance v1, Lg/a/c/b;

    invoke-direct {v1, p0}, Lg/a/c/b;-><init>(Lextview/presentation/navi/NavExtraPresenterforR;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateCarBySpeedChange()V
    .locals 2

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateCrossCardInfo()V
    .locals 6

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    const-string v1, "NavExtraPresenterforR"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/e/b;->b()Lcom/autonavi/gbl/guide/model/CrossImageInfo;

    move-result-object v3

    iput-object v3, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCrossImageInfo:Lcom/autonavi/gbl/guide/model/CrossImageInfo;

    invoke-virtual {v0}, Lg/a/e/b;->l()I

    move-result v3

    iget-object v4, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCrossImageInfo:Lcom/autonavi/gbl/guide/model/CrossImageInfo;

    if-eqz v4, :cond_0

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "updateCrossCardInfo()==== isShowCrossImage=true"

    invoke-static {v1, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    check-cast v1, Lg/a/c/p;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lg/a/c/p;->o:Z

    iget-object v1, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    check-cast v1, Lg/a/c/p;

    iget-object v4, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCrossImageInfo:Lcom/autonavi/gbl/guide/model/CrossImageInfo;

    iget-object v4, v4, Lcom/autonavi/gbl/guide/model/CrossImageInfo;->cardChangeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v2, v2, v3}, Lg/a/c/p;->I(Ljava/util/ArrayList;III)Z

    invoke-virtual {v0}, Lg/a/e/b;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->onUpdateNaviInfo(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    check-cast v0, Lg/a/c/p;

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDirectionCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lg/a/c/p;->T(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "updateCrossCardInfo()==== isShowCrossImage=false"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    check-cast v0, Lg/a/c/p;

    iput-boolean v2, v0, Lg/a/c/p;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCrossImageInfo:Lcom/autonavi/gbl/guide/model/CrossImageInfo;

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->v()V

    goto :goto_0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "extraView == null"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public updateExitDirectionInfo(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V
    .locals 1

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v0, :cond_0

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0, p1}, Lg/a/c/p;->Q(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V

    :cond_0
    return-void
.end method

.method public updateNaviInfo(Lcom/autonavi/gbl/guide/model/NaviInfo;Z)V
    .locals 1

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v0, :cond_0

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0, p1, p2}, Lg/a/c/p;->R(Lcom/autonavi/gbl/guide/model/NaviInfo;Z)V

    :cond_0
    return-void
.end method

.method public updateNaviInfoAndDirection()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraPresenterforR"

    const-string v2, "updateNaviInfoAndDirection()===="

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mCurNaviInfo:Lcom/autonavi/gbl/guide/model/NaviInfo;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->updateNaviInfo(Lcom/autonavi/gbl/guide/model/NaviInfo;Z)V

    :cond_0
    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDirectionCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->updateTurnIcon(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/e/b;->c()Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->updateExitDirectionInfo(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->nextThumDirectionCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->updateNextThumTurnIcon(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method public updateNextThumTurnIcon(Landroid/graphics/Bitmap;)V
    .locals 3

    iput-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->nextThumDirectionCache:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraPresenterforR"

    const-string v2, "updateNextThumTurnIcon()====="

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0, p1}, Lg/a/c/p;->S(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public updatePaths()V
    .locals 8

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    if-eqz v0, :cond_1

    const-string v1, "NavExtraPresenterforR"

    const-string v2, "updatePaths()====== mRouteCarResultData:{?}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->extraRoutePoints:Lg/a/e/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lextview/presentation/navi/NavExtraPresenterforR;->extraRoutePoints:Lg/a/e/a;

    invoke-virtual {v2}, Lg/a/e/a;->c()Lcom/autonavi/gbl/common/path/model/RoutePoints;

    move-result-object v3

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getPathInfos()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getFocusIndex()I

    move-result v5

    const/4 v6, 0x0

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->extraRoutePoints:Lg/a/e/a;

    invoke-virtual {v1}, Lg/a/e/a;->e()Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lg/a/e/a;->g(Lcom/autonavi/gbl/common/path/model/RoutePoints;Ljava/util/ArrayList;IZZ)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->workHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->firstDrawTime:J

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public updateRouteEndAreaAndParentPoint(Lcom/autonavi/gbl/search/model/KeywordSearchResultV2;Lcom/autosdk/bussiness/common/POI;)V
    .locals 4

    new-instance v0, Lcom/autonavi/gbl/common/model/RectInt;

    const/16 v1, 0x64

    const/16 v2, 0x44c

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/autonavi/gbl/common/model/RectInt;-><init>(IIII)V

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->updateRouteEndAreaAndParentPoint(ZLcom/autonavi/gbl/search/model/KeywordSearchResultV2;Lcom/autonavi/gbl/common/model/RectInt;Lcom/autosdk/bussiness/common/POI;)V

    return-void
.end method

.method public updateRouteEndAreaAndParentPoint(Lcom/autosdk/bussiness/common/POI;)V
    .locals 4

    new-instance v0, Lcom/autonavi/gbl/common/model/RectInt;

    const/16 v1, 0x64

    const/16 v2, 0x44c

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/autonavi/gbl/common/model/RectInt;-><init>(IIII)V

    iget-object v1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v0}, Lcom/autosdk/bussiness/layer/DrivingLayer;->updateRouteEndAreaAndParentPoint(ZLcom/autosdk/bussiness/common/POI;Lcom/autonavi/gbl/common/model/RectInt;)V

    return-void
.end method

.method public updateTurnIcon(Landroid/graphics/Bitmap;)V
    .locals 3

    iput-object p1, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDirectionCache:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraPresenterforR"

    const-string v2, "updateTurnIcon()====="

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/a/a/a;->extraView:Lg/a/a/a/e;

    check-cast v0, Lg/a/c/p;

    invoke-virtual {v0, p1}, Lg/a/c/p;->T(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public updateViaPass(I)V
    .locals 5

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    const/16 v1, 0x1773

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/DrivingLayer;->getRouteLayer(I)Lcom/autonavi/gbl/map/layer/BaseLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/layer/BaseLayer;->getAllItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "NavExtraPresenterforR"

    const-string v4, "onUpdateViaPass index=:{?}, allItems2.size = {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/map/layer/LayerItem;

    invoke-virtual {v0, v3}, Lcom/autonavi/gbl/map/layer/LayerItem;->setVisible(Z)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->updateViaPass(J)V

    :cond_0
    return-void
.end method

.method public updateViewPostureCrossInfo()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraPresenterforR"

    const-string v2, "updateViewPostureCrossInfo()===="

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lextview/presentation/navi/NavExtraPresenterforR;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setViewPostureEvent(II)V

    return-void
.end method
