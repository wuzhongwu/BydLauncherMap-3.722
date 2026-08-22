.class public Lcom/autosdk/bussiness/navi/NaviController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/gbl/route/observer/IRouteResultObserver;
.implements Lcom/autonavi/gbl/guide/observer/ICruiseObserver;
.implements Lcom/autonavi/gbl/guide/observer/INaviObserver;
.implements Lcom/autonavi/gbl/guide/observer/ISoundPlayObserver;
.implements Lcom/autonavi/gbl/route/observer/IRouteWeatherObserver;
.implements Lcom/autonavi/gbl/route/observer/IRouteConsisAdditionObserver;
.implements Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autosdk/bussiness/navi/NaviController$TBTManagerHolder;
    }
.end annotation


# static fields
.field private static final DELAY_MILLIS:J = 0x1f4L

.field public static final GUIDE_TYPE_CRUISE:I = 0x2

.field public static final GUIDE_TYPE_GPS_NAVI:I = 0x0

.field public static final GUIDE_TYPE_INVALID:I = -0x1

.field public static final GUIDE_TYPE_SIM_NAVI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NaviController"


# instance fields
.field private crossImageMonitor:J

.field private cruiseObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/gbl/guide/observer/ICruiseObserver;",
            ">;"
        }
    .end annotation
.end field

.field private guide:I

.field public isDestinationPush:Z

.field private isInNaviTask:Z

.field private isNaving:Z

.field private isRouteConsAddServiceObsAdd:Z

.field private isShowingCrossImage:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/autosdk/bussiness/navi/NavStopForEHPListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCruiseObserver:Lcom/autonavi/gbl/guide/observer/ICruiseObserver;

.field private mEnterLane:Z

.field private mGDateTime:Lcom/autonavi/gbl/util/model/DateTime;

.field private mGuideService:Lcom/autonavi/gbl/guide/GuideService;

.field private mGuideType:I

.field private mManeuverID:I

.field public final mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

.field private final mNaviFloatWindowPos:Landroid/graphics/Point;

.field private mNaviId:J

.field private mNaviObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/gbl/guide/observer/INaviObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mNaviRerouteObserver:Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;

.field private mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

.field private mRouteConsisAdditionService:Lcom/autonavi/gbl/route/RouteConsisAdditionService;

.field private mRouteObserver:Lcom/autonavi/gbl/route/observer/IRouteResultObserver;

.field private final mRouteReqId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mRouteService:Lcom/autonavi/gbl/route/RouteService;

.field private mRouteWeatherObserver:Lcom/autonavi/gbl/route/observer/IRouteWeatherObserver;

.field private mSegRemainDis:I

.field private mTtsExtraStr:Ljava/lang/String;

.field private nextViaPoiTimeAndDist:Lcom/autonavi/gbl/guide/model/TimeAndDist;

.field private offlineRouteOption:Lcom/autonavi/gbl/common/path/option/RouteOption;

.field private route:J

.field private final soundPlayObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/gbl/guide/observer/ISoundPlayObserver;",
            ">;"
        }
    .end annotation
.end field

.field private trafficTimeLeft:I

.field public vehicleChargeLefts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final viaPoints:Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet<",
            "Lcom/autonavi/gbl/guide/model/TimeAndDist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->soundPlayObserverList:Ljava/util/List;

    const/16 v0, -0x270f

    iput v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->guide:I

    const-wide/16 v0, -0x270f

    iput-wide v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->route:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    iput-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isInNaviTask:Z

    iput-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isDestinationPush:Z

    new-instance v2, Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;

    invoke-direct {v2}, Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;-><init>()V

    iput-object v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->viaPoints:Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->vehicleChargeLefts:Ljava/util/ArrayList;

    iput v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mManeuverID:I

    iput v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mSegRemainDis:I

    iput v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->trafficTimeLeft:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteReqId:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, ""

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mTtsExtraStr:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->crossImageMonitor:J

    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x12

    const/16 v2, 0x10e

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviFloatWindowPos:Landroid/graphics/Point;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->listeners:Ljava/util/Set;

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviMessenger;->getInstance()Lcom/autosdk/bussiness/navi/NaviMessenger;

    move-result-object v0

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviObserverList:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->cruiseObservers:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autosdk/bussiness/navi/NaviController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/bussiness/navi/NaviController;-><init>()V

    return-void
.end method

.method private destroyGuide()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyGuide:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/guide/GuideService;->removeCruiseObserver(Lcom/autonavi/gbl/guide/observer/ICruiseObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/guide/GuideService;->removeNaviObserver(Lcom/autonavi/gbl/guide/observer/INaviObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/guide/GuideService;->removeSoundPlayObserver(Lcom/autonavi/gbl/guide/observer/ISoundPlayObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    :cond_0
    return-void
.end method

.method private destroyRoute()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyRoute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/route/RouteService;->removeRouteResultObserver(Lcom/autonavi/gbl/route/observer/IRouteResultObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/route/RouteService;->removeRouteWeatherObserver(Lcom/autonavi/gbl/route/observer/IRouteWeatherObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/autosdk/bussiness/navi/NaviController;
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController$TBTManagerHolder;->access$100()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v0

    return-object v0
.end method

.method public static getPathId(Lcom/autonavi/gbl/common/path/option/PathInfo;)J
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/gbl/common/path/option/PathInfo;->getPathID()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x2537

    :goto_0
    return-wide v0
.end method

.method private initGuide()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/guide/GuideService;

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    const/4 v1, 0x0

    const-string v2, "NaviController"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "===initGuide error:mGuideService is null."

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/gbl/guide/GuideService;->init()I

    move-result v0

    iput v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->guide:I

    new-instance v0, Lcom/autonavi/gbl/guide/model/guidecontrol/GuideConsisParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/guide/model/guidecontrol/GuideConsisParam;-><init>()V

    const/4 v3, 0x1

    iput v3, v0, Lcom/autonavi/gbl/guide/model/guidecontrol/GuideConsisParam;->mode:I

    iget-object v4, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v4, v0}, Lcom/autonavi/gbl/guide/GuideService;->setParam(Lcom/autonavi/gbl/guide/model/guidecontrol/BaseParam;)I

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    new-instance v4, Lcom/autosdk/bussiness/kld/observer/MultiChannelMsgTransfer;

    invoke-direct {v4}, Lcom/autosdk/bussiness/kld/observer/MultiChannelMsgTransfer;-><init>()V

    invoke-virtual {v0, v4}, Lcom/autonavi/gbl/guide/GuideService;->setAdapter(Lcom/autonavi/gbl/guide/observer/IGuideConsisAdapter;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/guide/GuideService;->addCruiseObserver(Lcom/autonavi/gbl/guide/observer/ICruiseObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/guide/GuideService;->addNaviObserver(Lcom/autonavi/gbl/guide/observer/INaviObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/guide/GuideService;->addSoundPlayObserver(Lcom/autonavi/gbl/guide/observer/ISoundPlayObserver;)V

    new-array v0, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/autosdk/bussiness/navi/NaviController;->guide:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "===initGuide TBT guide{?}"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private initRoute(Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/route/RouteService;

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    const-string v1, "NaviController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "===initRoute error:mRouteService is null."

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object p1, v4, v0

    const-string p1, "===initRoute TBT mRouteService {?},deviceId {?}"

    invoke-static {v1, p1, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/autonavi/gbl/route/model/RouteInitParam;

    invoke-direct {p1}, Lcom/autonavi/gbl/route/model/RouteInitParam;-><init>()V

    iget-object v4, p1, Lcom/autonavi/gbl/route/model/RouteInitParam;->rerouteParam:Lcom/autonavi/gbl/route/model/RerouteParam;

    iput-boolean v0, v4, Lcom/autonavi/gbl/route/model/RerouteParam;->enableAutoReroute:Z

    iput-boolean v0, v4, Lcom/autonavi/gbl/route/model/RerouteParam;->enableAutoSwitchParallelReroute:Z

    iget-object v4, p1, Lcom/autonavi/gbl/route/model/RouteInitParam;->collisionParam:Lcom/autonavi/gbl/route/model/RouteCollisionParam;

    iput v0, v4, Lcom/autonavi/gbl/route/model/RouteCollisionParam;->state:I

    iget-object v4, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {v4, p1}, Lcom/autonavi/gbl/route/RouteService;->init(Lcom/autonavi/gbl/route/model/RouteInitParam;)I

    move-result p1

    int-to-long v4, p1

    iput-wide v4, p0, Lcom/autosdk/bussiness/navi/NaviController;->route:J

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    const/16 v4, 0x175

    const-string v5, "15000"

    invoke-virtual {p1, v4, v5}, Lcom/autonavi/gbl/route/RouteService;->control(ILjava/lang/String;)Z

    move-result p1

    iget-object v4, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    const/16 v5, 0x170

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Lcom/autonavi/gbl/route/RouteService;->control(ILjava/lang/String;)Z

    move-result v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "===initRoute TBT ret3:{?} ret5:{?}"

    invoke-static {v1, p1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/route/RouteService;->addRouteResultObserver(Lcom/autonavi/gbl/route/observer/IRouteResultObserver;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/route/RouteService;->addRerouteObserver(Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {p1}, Lcom/autonavi/gbl/route/RouteService;->getRouteConsisAdditionService()Lcom/autonavi/gbl/route/RouteConsisAdditionService;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {p1}, Lcom/autonavi/gbl/route/RouteService;->getRouteConsisAdditionService()Lcom/autonavi/gbl/route/RouteConsisAdditionService;

    move-result-object p1

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteConsisAdditionService:Lcom/autonavi/gbl/route/RouteConsisAdditionService;

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/route/RouteConsisAdditionService;->addRouteConsisAdditionObserver(Lcom/autonavi/gbl/route/observer/IRouteConsisAdditionObserver;)V

    iput-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isRouteConsAddServiceObsAdd:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->isRouteConsAddServiceObsAdd:Z

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "===initRoute mRouteConsisAdditionService is null"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/route/RouteService;->addRouteWeatherObserver(Lcom/autonavi/gbl/route/observer/IRouteWeatherObserver;)V

    return-void
.end method

.method private initTBT(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/autosdk/bussiness/navi/NaviController;->initGuide()V

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/navi/NaviController;->initRoute(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->guide:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-wide v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->route:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "NaviController"

    const-string v1, "initRoute guide:{?} route:{?}"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object p1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/location/LocationController;->bindPosServiceToGuide(Lcom/autonavi/gbl/guide/GuideService;)V

    return-void
.end method

.method public static synthetic lambda$setRouteReqId$0(JJ)J
    .locals 0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private setNavState()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.autosdk.map.util.NavState"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setIsNav"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "NaviController"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->listeners:Ljava/util/Set;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autosdk/bussiness/navi/NavStopForEHPListener;

    iget-boolean v4, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    if-eqz v4, :cond_2

    if-eq v4, v0, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Lcom/autosdk/bussiness/navi/NavStopForEHPListener;->onCruiseStart()V

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lcom/autosdk/bussiness/navi/NavStopForEHPListener;->onNaviSimStart()V

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/autosdk/bussiness/navi/NavStopForEHPListener;->onNavStart()V

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lcom/autosdk/bussiness/navi/NavStopForEHPListener;->onNavStop()V

    goto :goto_1

    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setNavType(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.autosdk.map.util.NavState"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setNavType"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "NaviController"

    const-string v0, "setNavType:{?}"

    invoke-static {p1, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private startNaviType(I)Z
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NaviController"

    const-string v3, "isNaving--startNavi"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/phoneConnect/PhoneConnectManager;->getInstance()Lcom/autosdk/bussiness/phoneConnect/PhoneConnectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/phoneConnect/PhoneConnectManager;->updateState()V

    :cond_0
    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    iget-wide v3, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviId:J

    invoke-virtual {v1, v3, v4, p1}, Lcom/autonavi/gbl/guide/GuideService;->startNavi(JI)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "startNavi success!"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isInNaviTask:Z

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/navi/NaviController;->setNavType(I)V

    return v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNavi failure\uff1a"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "startNavi failure!"

    invoke-static {v2, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private updateCarInfo()V
    .locals 11

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/CarParamUtil;->getVehicleParam()Lcom/autonavi/gbl/common/model/TbtVehicleParam;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/CarParamUtil;->getTruckParam()Lcom/autonavi/gbl/common/model/TbtTruckParam;

    move-result-object v1

    invoke-static {}, Lcom/autosdk/bussiness/user/utils/CarUtils;->isTruck()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/navi/route/BydCarInfoCache;->getInstance()Lcom/autosdk/bussiness/navi/route/BydCarInfoCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/navi/route/BydCarInfoCache;->getHeight()D

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {}, Lcom/autosdk/bussiness/user/utils/CarUtils;->getVehicleConfigInfo()Lcom/autosdk/bussiness/vehicle/VehicleConfigInfo;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/autosdk/bussiness/vehicle/VehicleConfigInfo;->getWidth()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/autosdk/bussiness/navi/route/utils/NumberUnitUtils;->convertCmToM(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v5}, Lcom/autosdk/bussiness/vehicle/VehicleConfigInfo;->getLength()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/autosdk/bussiness/navi/route/utils/NumberUnitUtils;->convertCmToM(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v5}, Lcom/autosdk/bussiness/vehicle/VehicleConfigInfo;->getAxles()I

    move-result v7

    invoke-virtual {v5}, Lcom/autosdk/bussiness/vehicle/VehicleConfigInfo;->getVehicleLoad()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autosdk/bussiness/navi/route/utils/NumberUnitUtils;->convertKgToT(Ljava/lang/String;)F

    move-result v5

    move v10, v5

    move v5, v4

    move v4, v7

    move v7, v10

    goto :goto_0

    :cond_0
    move v5, v6

    move v7, v5

    :goto_0
    invoke-static {}, Lcom/autosdk/bussiness/navi/route/BydCarInfoCache;->getInstance()Lcom/autosdk/bussiness/navi/route/BydCarInfoCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autosdk/bussiness/navi/route/BydCarInfoCache;->getWeight()D

    move-result-wide v8

    double-to-float v2, v2

    iput v2, v0, Lcom/autonavi/gbl/common/model/TbtVehicleParam;->height:F

    iput v6, v0, Lcom/autonavi/gbl/common/model/TbtVehicleParam;->width:F

    iput v5, v0, Lcom/autonavi/gbl/common/model/TbtVehicleParam;->length:F

    double-to-float v2, v8

    iput v2, v1, Lcom/autonavi/gbl/common/model/TbtTruckParam;->weight:F

    iput v7, v1, Lcom/autonavi/gbl/common/model/TbtTruckParam;->load:F

    invoke-static {}, Lcom/autosdk/bussiness/user/utils/CarUtils;->getVehicleSize()I

    move-result v2

    iput v2, v1, Lcom/autonavi/gbl/common/model/TbtTruckParam;->size:I

    iput v4, v1, Lcom/autonavi/gbl/common/model/TbtTruckParam;->axis:I

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/user/utils/CarUtils;->getCarType()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/autosdk/bussiness/common/utils/CarParamUtil;->updatePlateAndType(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/autosdk/bussiness/common/utils/CarParamUtil;->setVehicleParam(Lcom/autonavi/gbl/common/model/TbtVehicleParam;)V

    invoke-static {v1}, Lcom/autosdk/bussiness/common/utils/CarParamUtil;->setTruckParam(Lcom/autonavi/gbl/common/model/TbtTruckParam;)V

    return-void
.end method


# virtual methods
.method public abortPathWeatherRequest(J)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/gbl/route/RouteService;->abortPathWeatherRequest(J)V

    :cond_0
    return-void
.end method

.method public abortRoutePlan(J)Z
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "NaviController"

    const-string v2, "abortRoutePlan:"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/gbl/route/RouteService;->abortRequest(J)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public abortRouteRestorationRequest(I)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/route/RouteService;->abortRouteRestorationRequest(I)V

    :cond_0
    return-void
.end method

.method public clearVehicleChargeLeftList()V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->vehicleChargeLefts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public geSoundPlayObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/gbl/guide/observer/ISoundPlayObserver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->soundPlayObserverList:Ljava/util/List;

    return-object v0
.end method

.method public getAndCheckRouteConsisAdditionService()Lcom/autonavi/gbl/route/RouteConsisAdditionService;
    .locals 4

    iget-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isRouteConsAddServiceObsAdd:Z

    const/4 v1, 0x0

    const-string v2, "NaviController"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/gbl/route/RouteService;->getRouteConsisAdditionService()Lcom/autonavi/gbl/route/RouteConsisAdditionService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {v0}, Lcom/autonavi/gbl/route/RouteService;->getRouteConsisAdditionService()Lcom/autonavi/gbl/route/RouteConsisAdditionService;

    move-result-object v0

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteConsisAdditionService:Lcom/autonavi/gbl/route/RouteConsisAdditionService;

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/route/RouteConsisAdditionService;->addRouteConsisAdditionObserver(Lcom/autonavi/gbl/route/observer/IRouteConsisAdditionObserver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isRouteConsAddServiceObsAdd:Z

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "addRouteConsisAdditionObserver..."

    invoke-static {v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteConsisAdditionService:Lcom/autonavi/gbl/route/RouteConsisAdditionService;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getAndCheckRouteConsisAdditionService is null..."

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCruiseObserver()Lcom/autonavi/gbl/guide/observer/ICruiseObserver;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mCruiseObserver:Lcom/autonavi/gbl/guide/observer/ICruiseObserver;

    return-object v0
.end method

.method public getCruiseObservers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/gbl/guide/observer/ICruiseObserver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->cruiseObservers:Ljava/util/List;

    return-object v0
.end method

.method public getGuideService()Lcom/autonavi/gbl/guide/GuideService;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    return-object v0
.end method

.method public getGuideType()I
    .locals 1

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    return v0
.end method

.method public getManeuverID()I
    .locals 1

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mManeuverID:I

    return v0
.end method

.method public getNaviFloatWindowPos()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviFloatWindowPos:Landroid/graphics/Point;

    return-object v0
.end method

.method public getNaviObserverList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/gbl/guide/observer/INaviObserver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviObserverList:Ljava/util/List;

    return-object v0
.end method

.method public getNaviRerouteObserver()Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviRerouteObserver:Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;

    return-object v0
.end method

.method public getNextRouteReqId()J
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteReqId:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextViaPoiTimeAndDist()Lcom/autonavi/gbl/guide/model/TimeAndDist;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->nextViaPoiTimeAndDist:Lcom/autonavi/gbl/guide/model/TimeAndDist;

    return-object v0
.end method

.method public getOfflineRouteOption()Lcom/autonavi/gbl/common/path/option/RouteOption;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->offlineRouteOption:Lcom/autonavi/gbl/common/path/option/RouteOption;

    return-object v0
.end method

.method public getRouteObservers()Lcom/autonavi/gbl/route/observer/IRouteResultObserver;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteObserver:Lcom/autonavi/gbl/route/observer/IRouteResultObserver;

    return-object v0
.end method

.method public getRouteResultData()Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRouteService()Lcom/autonavi/gbl/route/RouteService;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRouteWeatherObserver()Lcom/autonavi/gbl/route/observer/IRouteWeatherObserver;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteWeatherObserver:Lcom/autonavi/gbl/route/observer/IRouteWeatherObserver;

    return-object v0
.end method

.method public getSegRemainDis()I
    .locals 1

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mSegRemainDis:I

    return v0
.end method

.method public getTmcItemsInfo(JILjava/util/ArrayList;Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/LightBarInfo;",
            ">;",
            "Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;",
            ")",
            "Ljava/util/List<",
            "Lcom/autonavi/gbl/common/path/model/LightBarItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/gbl/guide/model/LightBarInfo;

    iget-wide v3, v3, Lcom/autonavi/gbl/guide/model/LightBarInfo;->pathID:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_1

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/guide/model/LightBarInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/guide/model/LightBarInfo;->itemList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_4

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getPathInfos()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p5}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getFocusIndex()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p5}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getFocusIndex()I

    move-result p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autonavi/gbl/common/path/option/PathInfo;

    invoke-static {p2}, Lcom/autosdk/bussiness/navi/NaviController;->getPathId(Lcom/autonavi/gbl/common/path/option/PathInfo;)J

    move-result-wide v2

    move p2, v1

    :goto_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p2, p5, :cond_4

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/autonavi/gbl/guide/model/LightBarInfo;

    iget-wide v4, p5, Lcom/autonavi/gbl/guide/model/LightBarInfo;->pathID:J

    cmp-long p5, v2, v4

    if-nez p5, :cond_3

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/guide/model/LightBarInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/guide/model/LightBarInfo;->itemList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-nez p1, :cond_5

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/guide/model/LightBarInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/guide/model/LightBarInfo;->itemList:Ljava/util/ArrayList;

    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    if-ge v1, p2, :cond_6

    add-int p4, p3, v1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/autonavi/gbl/common/path/model/LightBarItem;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    return-object v0
.end method

.method public getTotalDistance(Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;)J
    .locals 7

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "NaviController"

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "getTotalDistance, mRouteCarResultData is null, return 1."

    invoke-static {v3, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getPathResult()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getFocusIndex()I

    move-result v6

    if-gt v5, v6, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "getTotalDistance, pathResult.size == mRouteCarResultData.getFocusIndex, return 1."

    invoke-static {v3, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0

    :cond_2
    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;->getFocusIndex()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/common/path/option/PathInfo;

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "getTotalDistance, pathAccessor is null, return 1."

    invoke-static {v3, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0

    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/gbl/common/path/option/PathInfo;->getLength()J

    move-result-wide v0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p1, v2

    const-string v2, "getTotalDistance accessorLength={?}"

    invoke-static {v3, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0

    :cond_4
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, "getTotalDistance, mRouteCarResultData.getPathResult() is null, return 1."

    invoke-static {v3, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0
.end method

.method public getTrafficTimeLeft()I
    .locals 1

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->trafficTimeLeft:I

    return v0
.end method

.method public getViaPointRemainList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/gbl/guide/model/TimeAndDist;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->viaPoints:Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getvehicleChargeLeftList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->vehicleChargeLefts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public init(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/navi/NaviController;->initTBT(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autosdk/bussiness/navi/NaviController;->isInitSuccess()Z

    move-result p1

    return p1
.end method

.method public initGuideNaviParam()V
    .locals 3

    new-instance v0, Lcom/autonavi/gbl/guide/model/guidecontrol/NaviParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/guide/model/guidecontrol/NaviParam;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/gbl/guide/model/guidecontrol/NaviParam;->model:I

    iget-object v2, v0, Lcom/autonavi/gbl/guide/model/guidecontrol/NaviParam;->v2x:Lcom/autonavi/gbl/guide/model/guidecontrol/V2xParam;

    iput-boolean v1, v2, Lcom/autonavi/gbl/guide/model/guidecontrol/V2xParam;->enableCurveMeet:Z

    iput-boolean v1, v2, Lcom/autonavi/gbl/guide/model/guidecontrol/V2xParam;->enableCrossMeet:Z

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v1, v0}, Lcom/autonavi/gbl/guide/GuideService;->setParam(Lcom/autonavi/gbl/guide/model/guidecontrol/BaseParam;)I

    return-void
.end method

.method public isCruising()Z
    .locals 2

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInNaviStatus()Z
    .locals 2

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isInNaviStatusOrCruising()Z
    .locals 3

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isInNaviTask()Z
    .locals 1

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitSuccess()Z
    .locals 4

    iget-wide v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->route:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->guide:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNaving()Z
    .locals 1

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnNaving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->soundPlayObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/gbl/guide/observer/ISoundPlayObserver;

    invoke-interface {v1}, Lcom/autonavi/gbl/guide/observer/ISoundPlayObserver;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSimulateNavi()Z
    .locals 2

    iget v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public obtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverConfig;)J
    .locals 8

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Lcom/autosdk/bussiness/common/utils/LazyString;->listString([Ljava/lang/Object;)Lcom/autosdk/bussiness/common/utils/LazyString$LazyProxyObj;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NaviController"

    const-string v4, "====maneuverID:{?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v1, p1}, Lcom/autonavi/gbl/guide/GuideService;->obtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverConfig;)J

    move-result-wide v4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v6, p1, Lcom/autonavi/gbl/guide/model/ManeuverConfig;->maneuverID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "obtainManeuverIconData:maneuverID = {?},requestId={?}"

    invoke-static {v2, p1, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v4

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public obtainSAPAInfo(Z)J
    .locals 4

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/guide/GuideService;->obtainSAPAInfo(Z)J

    move-result-wide v0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p1, v3

    const-string v2, "NaviController"

    const-string v3, "obtainSAPAInfo:reqId={?}"

    invoke-static {v2, v3, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v0
.end method

.method public onCarOnRouteAgain()V
    .locals 0

    return-void
.end method

.method public onChangeNaviPath(JJ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeNaviPath, pathID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186d5

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pathID"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "oldPathID"

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onCurrentRoadSpeed(I)V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186c1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "speed"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onDeletePath(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NaviController"

    const-string v2, "onDeletePath"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186d4

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onDriveReport(Lcom/autonavi/gbl/guide/model/DriveReport;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NaviController"

    const-string v2, "onDriveReport:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x1adb1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onHideCrossImage(I)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NaviController"

    const-string v3, "NaviController onHideCrossImage start"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    if-nez v1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onHideCrossImage mMessenger is null"

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isShowingCrossImage:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->crossImageMonitor:J

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186ab

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onHideCruiseLaneInfo()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NaviController"

    const-string v2, "onHideCruiseLaneInfo"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186b7

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onHideNaviLaneInfo()V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186bf

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

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

.method public onModifyRerouteOption(Lcom/autonavi/gbl/common/path/option/RouteOption;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviRerouteObserver:Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;->onModifyRerouteOption(Lcom/autonavi/gbl/common/path/option/RouteOption;)V

    :cond_0
    return-void
.end method

.method public onNaviArrive(JI)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "NaviController"

    const-string v2, "onNaviArrive:{?},{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186d8

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "id"

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onNaviStop(JI)V
    .locals 3

    invoke-static {}, Lcom/byd/weather/DynamicWeather;->onNaviStop()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "NaviController"

    const-string v2, "onNaviStop:{?},{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186b9

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "id"

    invoke-virtual {v1, p3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onNewRoute(Lcom/autonavi/gbl/route/model/PathResultData;Ljava/util/ArrayList;Lcom/autonavi/gbl/common/path/model/RouteLimitInfo;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/gbl/route/model/PathResultData;",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/common/path/option/PathInfo;",
            ">;",
            "Lcom/autonavi/gbl/common/path/model/RouteLimitInfo;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NaviController"

    const-string v3, "onNewRoute"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x0

    if-nez p1, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    iget-wide v5, p1, Lcom/autonavi/gbl/route/model/PathResultData;->requestId:J

    :goto_0
    invoke-virtual {p0, v5, v6}, Lcom/autosdk/bussiness/navi/NaviController;->setRouteReqId(J)V

    if-nez p2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "onNewRoute pathIds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/autosdk/bussiness/navi/route/utils/PathInfoUtils;->copyPathInfos(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    move v7, v0

    :goto_2
    if-ge v7, v1, :cond_3

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/gbl/common/path/option/PathInfo;

    invoke-virtual {v8}, Lcom/autonavi/gbl/common/path/option/PathInfo;->getPathID()J

    move-result-wide v9

    const-string v11, "id: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x63

    invoke-virtual {v8, v3, v4, v9, v10}, Lcom/autonavi/gbl/common/path/option/PathInfo;->getRestAreas(JJ)Ljava/util/ArrayList;

    move-result-object v8

    const-string v9, ",rest areas size: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_2

    move v8, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_3
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const-string p2, ",requestId="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    iget-wide v3, p1, Lcom/autonavi/gbl/route/model/PathResultData;->requestId:J

    :goto_4
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",mainThreadId="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->getMainThreadId()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",curThreadId="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->getcurrentThreadId()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",routeType="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    move p2, v0

    goto :goto_5

    :cond_5
    iget p2, p1, Lcom/autonavi/gbl/route/model/PathResultData;->type:I

    :goto_5
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",planChannelId="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/autonavi/gbl/route/model/PathResultData;->planChannelId:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v2, p2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p2, 0x186a0

    iget-object v1, p1, Lcom/autonavi/gbl/route/model/PathResultData;->planChannelId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/autonavi/gbl/route/model/PathResultData;->planChannelId:Ljava/lang/String;

    invoke-static {}, Lcom/autosdk/bussiness/kld/KldDisplayController;->getInstance()Lcom/autosdk/bussiness/kld/KldDisplayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/kld/KldDisplayController;->getKldDisplayParam()Lcom/autosdk/bussiness/kld/KldDisplayParam;

    move-result-object v2

    iget-object v2, v2, Lcom/autosdk/bussiness/kld/KldDisplayParam;->sdkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const p2, 0x186de

    :cond_6
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object v6, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, p2}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p2, p1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onNewRouteError(Lcom/autonavi/gbl/route/model/PathResultData;Lcom/autonavi/gbl/common/path/model/RouteLimitInfo;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewRouteError: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/autonavi/gbl/route/model/PathResultData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/autonavi/gbl/route/model/PathResultData;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isLocal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/autonavi/gbl/route/model/PathResultData;->isLocal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/autonavi/gbl/route/model/PathResultData;->requestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mainThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->getMainThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",curThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->getcurrentThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->getcurrentThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",planChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/autonavi/gbl/route/model/PathResultData;->planChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "NaviController"

    invoke-static {v3, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v2, p1, Lcom/autonavi/gbl/route/model/PathResultData;->requestId:J

    invoke-virtual {p0, v2, v3}, Lcom/autosdk/bussiness/navi/NaviController;->setRouteReqId(J)V

    iget v0, p1, Lcom/autonavi/gbl/route/model/PathResultData;->errorCode:I

    const v2, 0x31000011

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/autonavi/gbl/route/model/PathResultData;->planChannelId:Ljava/lang/String;

    const-string v2, "MainSdk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->offlineRouteOption:Lcom/autonavi/gbl/common/path/option/RouteOption;

    :cond_0
    const v0, 0x186a1

    iget-object v2, p1, Lcom/autonavi/gbl/route/model/PathResultData;->planChannelId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/autonavi/gbl/route/model/PathResultData;->planChannelId:Ljava/lang/String;

    invoke-static {}, Lcom/autosdk/bussiness/kld/KldDisplayController;->getInstance()Lcom/autosdk/bussiness/kld/KldDisplayController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/kld/KldDisplayController;->getKldDisplayParam()Lcom/autosdk/bussiness/kld/KldDisplayParam;

    move-result-object v3

    iget-object v3, v3, Lcom/autosdk/bussiness/kld/KldDisplayParam;->sdkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v0, 0x186df

    :cond_1
    iget-object v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {v2, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onObtainAdvancedManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;)V
    .locals 0

    return-void
.end method

.method public onObtainExitDirectionInfo(Lcom/autonavi/gbl/guide/model/ExitDirectionResponseData;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186da

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onObtainManeuverIconData(Lcom/autonavi/gbl/guide/model/ManeuverIconResponseData;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186d9

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onObtainSAPAInfo(Lcom/autonavi/gbl/guide/model/SAPAInquireResponseData;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186db

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onPassLast3DSegment()V
    .locals 0

    return-void
.end method

.method public onPlayRing(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "NaviController"

    const-string v2, "onPlayRing, type:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186d2

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onPlayTTS(Lcom/autonavi/gbl/guide/model/SoundInfo;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "NaviController"

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "NaviManager-onPlayTTS: SoundInfo==null"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p1, Lcom/autonavi/gbl/guide/model/SoundInfo;->text:Ljava/lang/String;

    iget v3, p1, Lcom/autonavi/gbl/guide/model/SoundInfo;->ringType:I

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    return-void

    :cond_1
    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-lez v3, :cond_2

    iput-object v5, p1, Lcom/autonavi/gbl/guide/model/SoundInfo;->text:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/autosdk/bussiness/navi/NaviController;->mTtsExtraStr:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/autonavi/gbl/guide/model/SoundInfo;->text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/autonavi/gbl/guide/model/SoundInfo;->text:Ljava/lang/String;

    iput-object v5, p0, Lcom/autosdk/bussiness/navi/NaviController;->mTtsExtraStr:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, p1, Lcom/autonavi/gbl/guide/model/SoundInfo;->naviType:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->soundPlayObserverList:Ljava/util/List;

    aput-object v2, v5, v0

    const-string v0, "NaviManager-onPlayTTS: str={?}\uff0cringType={?}--{?}"

    invoke-static {v1, v0, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186d1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onQueryAppointLanesInfo(JLjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/LaneInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186e1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "requestId"

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onReroute(Lcom/autonavi/gbl/common/path/option/RouteOption;)V
    .locals 7

    invoke-static {}, Lcom/autosdk/bussiness/navi/route/RouteRequestController;->getInstance()Lcom/autosdk/bussiness/navi/route/RouteRequestController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/navi/route/RouteRequestController;->isHighPriorityRequesting()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "NaviController"

    if-lez v0, :cond_0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p1}, Lcom/autonavi/gbl/common/path/option/RouteOption;->getRouteType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "onReroute isHighPriorityRequesting={?}:rerouteOption.getRouteType()={?}"

    invoke-static {v4, v0, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/gbl/common/path/option/RouteOption;->getPOIForRequest()Lcom/autonavi/gbl/common/path/option/POIForRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v3, v5, v6}, Lcom/autonavi/gbl/common/path/option/POIForRequest;->getPoint(IJ)Lcom/autonavi/gbl/common/path/model/POIInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/autonavi/gbl/common/path/model/POIInfo;->realPos:Lcom/autonavi/gbl/common/model/Coord2DDouble;

    iget-wide v5, v5, Lcom/autonavi/gbl/common/model/Coord2DDouble;->lon:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object v0, v0, Lcom/autonavi/gbl/common/path/model/POIInfo;->realPos:Lcom/autonavi/gbl/common/model/Coord2DDouble;

    iget-wide v5, v0, Lcom/autonavi/gbl/common/model/Coord2DDouble;->lat:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "===routes onReroute, lon:{?},lat:{?}"

    invoke-static {v4, v0, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===routes onReroute, rerouteOption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/gbl/common/path/option/RouteOption;

    invoke-direct {v0, p1}, Lcom/autonavi/gbl/common/path/option/RouteOption;-><init>(Lcom/autonavi/gbl/common/path/option/RouteOption;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186b3

    invoke-virtual {p1, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onRerouteInfo(Lcom/autonavi/gbl/route/model/BLRerouteRequestInfo;)V
    .locals 3

    iget-wide v0, p1, Lcom/autonavi/gbl/route/model/BLRerouteRequestInfo;->requestId:J

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string v0, "NaviController"

    const-string v1, "onRerouteInfo:requestId={?}"

    invoke-static {v0, v1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviRerouteObserver:Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;->onRerouteInfo(Lcom/autonavi/gbl/route/model/BLRerouteRequestInfo;)V

    :cond_0
    return-void
.end method

.method public onSelectMainPathStatus(JI)V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186cd

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pathID"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "result"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onShowCrossImage(Lcom/autonavi/gbl/guide/model/CrossImageInfo;)V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NaviController"

    const-string v3, "NaviController onShowCrossImage start"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    if-nez v1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onShowCrossImage mMessenger is null"

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/autosdk/bussiness/navi/NaviController;->isShowingCrossImage:Z

    const v3, 0x186a7

    invoke-virtual {v1, v3}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/autosdk/bussiness/navi/NaviController;->crossImageMonitor:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1f4

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "NaviController onShowCrossImage DELAY"

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendEmptyMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public onShowCruiseCameraExt(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviCameraExt;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowCruiseCameraExt cameraInfoList ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186cf

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onShowCruiseLaneInfo(Lcom/autonavi/gbl/guide/model/LaneInfo;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NaviController"

    const-string v2, "onShowCruiseLaneInfo"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186cc

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviCameraExt;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186a3

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onShowNaviCrossTMC(Lcom/autonavi/gbl/util/model/BinaryStream;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186c8

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onShowNaviFacility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviRoadFacility;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186bc

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onShowNaviLaneInfo(Lcom/autonavi/gbl/guide/model/LaneInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShowNaviLaneInfo, info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186be

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onShowNaviManeuver(Lcom/autonavi/gbl/guide/model/ManeuverInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186ac

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onShowNaviWeather(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviWeatherInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/byd/weather/DynamicWeather;->onNaviWeather(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186bb

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

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

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186b6

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onShowTMCIncidentReport(Lcom/autonavi/gbl/guide/model/TMCIncidentReport;)V
    .locals 0

    return-void
.end method

.method public onShowTollGateLane(Lcom/autonavi/gbl/common/path/model/TollGateInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186bd

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onSuggestChangePath(JJLcom/autonavi/gbl/guide/model/SuggestChangePathReason;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuggestChangePath, newPathID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " oldPathID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " reason.saveTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p5, Lcom/autonavi/gbl/guide/model/SuggestChangePathReason;->saveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/autosdk/bussiness/navi/SuggestChangePathData;

    move-object v3, v0

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/autosdk/bussiness/navi/SuggestChangePathData;-><init>(JJLcom/autonavi/gbl/guide/model/SuggestChangePathReason;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const p2, 0x186d6

    invoke-virtual {p1, p2}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p2, p1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onSwitchParallelRoadRerouteInfo(Lcom/autonavi/gbl/route/model/BLRerouteRequestInfo;)V
    .locals 3

    iget-wide v0, p1, Lcom/autonavi/gbl/route/model/BLRerouteRequestInfo;->requestId:J

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string v0, "NaviController"

    const-string v1, "onSwitchParallelRoadRerouteInfo:requestId={?}"

    invoke-static {v0, v1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviRerouteObserver:Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;->onSwitchParallelRoadRerouteInfo(Lcom/autonavi/gbl/route/model/BLRerouteRequestInfo;)V

    :cond_0
    return-void
.end method

.method public onSyncRouteOption(Lcom/autonavi/gbl/common/path/option/RouteOption;)V
    .locals 2

    new-instance v0, Lcom/autonavi/gbl/common/path/option/RouteOption;

    invoke-direct {v0}, Lcom/autonavi/gbl/common/path/option/RouteOption;-><init>()V

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/common/path/option/RouteOption;->copy(Lcom/autonavi/gbl/common/path/option/RouteOption;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186dd

    invoke-virtual {p1, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateChargeStationPass(J)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186c9

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateCruiseCongestionInfo(Lcom/autonavi/gbl/guide/model/CruiseCongestionInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186af

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateCruiseEvent(Lcom/autonavi/gbl/guide/model/CruiseEventInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186c3

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateCruiseFacility(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/CruiseFacilityInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateCruiseFacility facilityInfoList ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186aa

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateCruiseInfo(Lcom/autonavi/gbl/guide/model/CruiseInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateCruiseInfo roadName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/autonavi/gbl/guide/model/CruiseInfo;->roadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186ce

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateCruiseSocolEvent(Lcom/autonavi/gbl/guide/model/SocolEventInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186c4

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateCruiseTimeAndDist(Lcom/autonavi/gbl/guide/model/CruiseTimeAndDist;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5de1\u822a\u8fde\u7eed\u884c\u9a76\u4fe1\u606f:\n\u65f6\u95f4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/autonavi/gbl/guide/model/CruiseTimeAndDist;->driveTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\u8ddd\u79bb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/autonavi/gbl/guide/model/CruiseTimeAndDist;->driveDist:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186d0

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateElecVehicleETAInfo(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/common/path/model/ElecVehicleETAInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186c6

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateExitDirectionInfo(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186a6

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateGreenWaveCarSpeed(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviGreenWaveCarSpeed;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NaviController"

    const-string v2, "[onUpdateGreenWaveCarSpeed] {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186e0

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateIntervalCameraDynamicInfo(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviIntervalCameraDynamicInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186b2

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

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

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NaviController"

    const-string v3, "onUpdateNaviInfo "

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/gbl/guide/model/NaviInfo;

    iget-boolean v3, p0, Lcom/autosdk/bussiness/navi/NaviController;->isShowingCrossImage:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/autosdk/bussiness/navi/NaviController;->mEnterLane:Z

    if-nez v3, :cond_0

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "onUpdateNaviInfo change NaviInfoFlag to 0"

    invoke-static {v2, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v0, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->NaviInfoFlag:I

    :cond_0
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/autosdk/bussiness/kld/KldNaviComponent;->getInstance()Lcom/autosdk/bussiness/kld/KldNaviComponent;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/autosdk/bussiness/kld/KldNaviComponent;->setCurrNaviInfo(Lcom/autonavi/gbl/guide/model/NaviInfo;)V

    iget-object v3, p0, Lcom/autosdk/bussiness/navi/NaviController;->viaPoints:Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;

    invoke-virtual {v3}, Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;->clear()V

    iget-object v3, p0, Lcom/autosdk/bussiness/navi/NaviController;->viaPoints:Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;

    iget-object v4, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->viaRemain:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;->addAll(Ljava/util/Collection;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->viaRemain:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/autosdk/bussiness/common/utils/LazyString;->lazyObj(Ljava/lang/Object;)Lcom/autosdk/bussiness/common/utils/LazyString$LazyProxyObj;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "onUpdateNaviInfo viaPoints.addAll\uff1a{?} "

    invoke-static {v2, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->viaRemain:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->viaRemain:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/gbl/guide/model/TimeAndDist;

    iget v2, v2, Lcom/autonavi/gbl/guide/model/TimeAndDist;->dist:I

    if-lez v2, :cond_1

    iget-object v2, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->viaRemain:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/guide/model/TimeAndDist;

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->nextViaPoiTimeAndDist:Lcom/autonavi/gbl/guide/model/TimeAndDist;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->NaviInfoData:Ljava/util/ArrayList;

    iget v2, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->NaviInfoFlag:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/guide/model/NaviInfoPanel;

    iget v0, v0, Lcom/autonavi/gbl/guide/model/NaviInfoPanel;->maneuverID:I

    iput v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mManeuverID:I

    iget-object v0, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->NaviInfoData:Ljava/util/ArrayList;

    iget v1, v1, Lcom/autonavi/gbl/guide/model/NaviInfo;->NaviInfoFlag:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/guide/model/NaviInfoPanel;

    iget-object v0, v0, Lcom/autonavi/gbl/guide/model/NaviInfoPanel;->segmentRemain:Lcom/autonavi/gbl/guide/model/TimeAndDist;

    iget v0, v0, Lcom/autonavi/gbl/guide/model/TimeAndDist;->dist:I

    iput v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mSegRemainDis:I

    :cond_3
    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186a5

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateNaviSocolEvent(Lcom/autonavi/gbl/guide/model/SocolEventInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186c5

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateSAPA(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/NaviFacility;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186b8

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateSocolText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186a8

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateTMCCongestionInfo(Lcom/autonavi/gbl/guide/model/NaviCongestionInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186b4

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateTMCLightBar(Ljava/util/ArrayList;Lcom/autonavi/gbl/guide/model/LightBarDetail;JZ)V
    .locals 3
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

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186b0

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "passedIdx"

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "dataStatus"

    invoke-virtual {p1, p2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateTREvent(Ljava/util/ArrayList;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/PathTrafficEventInfo;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186a9

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "act"

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateTRPlayView(Lcom/autonavi/gbl/guide/model/RouteTrafficEventInfo;)V
    .locals 0

    return-void
.end method

.method public onUpdateTrafficLightCountdown(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/TrafficLightCountdown;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0xf43c7

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUpdateViaPass(J)V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186d3

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "viaIndex"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onWeatherUpdated(JLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/route/model/WeatherLabelItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWeatherUpdated  requestId\uff1a== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c weatherLabelItemList.size\uff1a== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    const v1, 0x186d7

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->newMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public pauseNavi()Z
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviId:J

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/gbl/guide/GuideService;->pauseNavi(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public registerCruiseObserver(Lcom/autonavi/gbl/guide/observer/ICruiseObserver;)V
    .locals 1

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mCruiseObserver:Lcom/autonavi/gbl/guide/observer/ICruiseObserver;

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->cruiseObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->cruiseObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerNavStopListener(Lcom/autosdk/bussiness/navi/NavStopForEHPListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->listeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerNaviObserver(Lcom/autonavi/gbl/guide/observer/INaviObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviObserverList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerNaviRerouteObserver(Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviRerouteObserver:Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;

    return-void
.end method

.method public registerRouteObserver(Lcom/autonavi/gbl/route/observer/IRouteResultObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteObserver:Lcom/autonavi/gbl/route/observer/IRouteResultObserver;

    return-void
.end method

.method public registerTbtSoundPlayObserver(Lcom/autonavi/gbl/guide/observer/ISoundPlayObserver;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerTbtSoundPlayObserver. l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->soundPlayObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->soundPlayObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerWeatherObserver(Lcom/autonavi/gbl/route/observer/IRouteWeatherObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteWeatherObserver:Lcom/autonavi/gbl/route/observer/IRouteWeatherObserver;

    return-void
.end method

.method public requestPathWeather(Lcom/autonavi/gbl/common/path/option/PathInfo;)J
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/route/RouteService;->requestPathWeather(Lcom/autonavi/gbl/common/path/option/PathInfo;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public requestRouteRestoration(Lcom/autonavi/gbl/route/model/RouteRestorationOption;)I
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autosdk/bussiness/navi/NaviController;->getNextRouteReqId()J

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/route/RouteService;->requestRouteRestoration(Lcom/autonavi/gbl/route/model/RouteRestorationOption;)I

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "NaviController"

    const-string v2, "requestRouteRestoration:requestId:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public requestTbtRoute(Lcom/autonavi/gbl/common/path/option/RouteOption;ZZ)J
    .locals 8

    invoke-static {}, Lcom/autosdk/bussiness/user/utils/CarUtils;->isNewEnergyVehicle()Z

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "NaviController"

    const-string v5, "[requestTbtRoute] isElecCar:"

    invoke-static {v3, v5, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/autosdk/bussiness/navi/NaviController;->initGuideNaviParam()V

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/gbl/common/path/option/RouteOption;->getConstrainCode()I

    move-result v5

    and-int/lit16 v5, v5, 0x4000

    if-lez v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "[requestTbtRoute] isCharging:"

    invoke-static {v3, v7, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    invoke-virtual {p1}, Lcom/autonavi/gbl/common/path/option/RouteOption;->getVehicleCharge()F

    move-result v5

    invoke-static {v0, v5}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->generateElecConfig(ZF)Lcom/autonavi/gbl/common/model/ElecInfoConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/autosdk/bussiness/common/utils/CarParamUtil;->setTbtElecInfoConfig(Lcom/autonavi/gbl/common/model/ElecInfoConfig;)V

    const-string v0, "2"

    invoke-static {v2, v0}, Lcom/autosdk/bussiness/common/utils/CarParamUtil;->updatePlateAndType(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/autosdk/bussiness/common/utils/CarParamUtil;->setElecVehicleCharge(F)V

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lcom/autosdk/bussiness/common/utils/CarParamUtil;->setTbtElecInfoConfig(Lcom/autonavi/gbl/common/model/ElecInfoConfig;)V

    :goto_2
    invoke-direct {p0}, Lcom/autosdk/bussiness/navi/NaviController;->updateCarInfo()V

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/autonavi/gbl/common/path/option/RouteOption;->getRouteReqId()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/autosdk/bussiness/navi/NaviController;->getNextRouteReqId()J

    move-result-wide v5

    :goto_3
    new-instance p3, Lcom/autosdk/bussiness/kld/bean/ConsisExternDataBean;

    invoke-direct {p3, p2, v5, v6}, Lcom/autosdk/bussiness/kld/bean/ConsisExternDataBean;-><init>(ZJ)V

    invoke-virtual {p3, v5, v6}, Lcom/autosdk/bussiness/kld/bean/ConsisExternDataBean;->setRouteReqId(J)V

    invoke-static {}, Lcom/autosdk/bussiness/kld/KldNaviComponent;->getInstance()Lcom/autosdk/bussiness/kld/KldNaviComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autosdk/bussiness/kld/KldNaviComponent;->isNavi()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/autosdk/bussiness/kld/KldNaviComponent;->getInstance()Lcom/autosdk/bussiness/kld/KldNaviComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autosdk/bussiness/kld/KldNaviComponent;->getOriginalFromPoi()Lcom/autosdk/bussiness/common/GeoPoint;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/autosdk/bussiness/kld/bean/ConsisExternDataBean;->setOriginalFromPoi(Lcom/autosdk/bussiness/common/GeoPoint;)V

    :cond_4
    invoke-virtual {p1, v5, v6}, Lcom/autonavi/gbl/common/path/option/RouteOption;->setRouteReqId(J)V

    invoke-static {p3}, Lcom/autosdk/bussiness/common/utils/GsonUtils;->objectToJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/common/path/option/RouteOption;->setConsisExternData(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/autonavi/gbl/common/path/option/RouteOption;->getConstrainCode()I

    move-result p2

    const/16 p3, 0x100

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_5

    new-instance p2, Lcom/autonavi/gbl/common/path/option/RouteOption;

    invoke-direct {p2}, Lcom/autonavi/gbl/common/path/option/RouteOption;-><init>()V

    invoke-virtual {p2, p1}, Lcom/autonavi/gbl/common/path/option/RouteOption;->copy(Lcom/autonavi/gbl/common/path/option/RouteOption;)V

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/autosdk/bussiness/navi/NaviController;->setRoutePlanTime(Lcom/autonavi/gbl/common/path/option/RouteOption;)V

    :cond_5
    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object p2

    const/16 p3, 0x139

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/navi/NaviController;->isNaving()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "navi"

    goto :goto_4

    :cond_6
    const-string v0, "plan"

    :goto_4
    invoke-virtual {p2, p3, v0}, Lcom/autosdk/bussiness/navi/NaviController;->routeControl(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {p2, p1}, Lcom/autonavi/gbl/route/RouteService;->requestRoute(Lcom/autonavi/gbl/common/path/option/RouteOption;)J

    move-result-wide p2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {p1}, Lcom/autonavi/gbl/common/path/option/RouteOption;->getConstrainCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/navi/NaviController;->isNaving()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "requestTbtRoute:requestId:{?}, routeOption constrainCode = {?}, isNavi = {?}"

    invoke-static {v3, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    const-wide/16 p2, 0x0

    :goto_5
    return-wide p2
.end method

.method public resumeNavi()Z
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviId:J

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/gbl/guide/GuideService;->resumeNavi(J)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public retryRequestRoute(J)I
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/gbl/route/RouteService;->retryRequestRoute(J)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x80000000

    :goto_0
    return p1
.end method

.method public routeControl(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/autosdk/bussiness/navi/NaviController;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteService:Lcom/autonavi/gbl/route/RouteService;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/gbl/route/RouteService;->control(ILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "NaviController"

    const-string v0, "[routeControl] RouteService not init, set value ignore: {?}"

    invoke-static {p2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public selectMainPathID(J)V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectMainPathID, pathID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/gbl/guide/GuideService;->selectMainPathID(J)V

    return-void
.end method

.method public setEnterLane(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mEnterLane:Z

    return-void
.end method

.method public setGuideParam(Lcom/autonavi/gbl/guide/model/guidecontrol/BaseParam;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGuideParam, mGuideService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "NaviController"

    invoke-static {v3, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/guide/GuideService;->setParam(Lcom/autonavi/gbl/guide/model/guidecontrol/BaseParam;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setNaviFloatWindowPos(II)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviFloatWindowPos:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public setNaviPath(Lcom/autonavi/gbl/guide/model/NaviPath;I)V
    .locals 9

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/autonavi/gbl/guide/model/NaviPath;->vecPaths:Ljava/util/ArrayList;

    const/4 v1, 0x2

    const-string v2, "NaviController"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autonavi/gbl/common/path/option/PathInfo;

    invoke-virtual {v7}, Lcom/autonavi/gbl/common/path/option/PathInfo;->getPathID()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "setNaviPath:PathID={?},mainIndex={?}"

    invoke-static {v2, v7, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    int-to-long v5, p2

    iput-wide v5, p1, Lcom/autonavi/gbl/guide/model/NaviPath;->mainIdx:J

    iget-object p2, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    invoke-virtual {p2, p1}, Lcom/autonavi/gbl/guide/GuideService;->setNaviPath(Lcom/autonavi/gbl/guide/model/NaviPath;)Z

    move-result p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v4

    iget p1, p1, Lcom/autonavi/gbl/guide/model/NaviPath;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "setNaviPath:result={?},getType={?}"

    invoke-static {v2, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setNextViaPoiTimeAndDist(Lcom/autonavi/gbl/guide/model/TimeAndDist;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->nextViaPoiTimeAndDist:Lcom/autonavi/gbl/guide/model/TimeAndDist;

    return-void
.end method

.method public setRoutePlanTime(Lcom/autonavi/gbl/common/path/option/RouteOption;)V
    .locals 7

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteConsisAdditionService:Lcom/autonavi/gbl/route/RouteConsisAdditionService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "NaviController"

    const-string v1, "setRoutePlanTime mRouteConsisAdditionService is null"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    new-instance v2, Lcom/autonavi/gbl/util/model/Date;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-short v3, v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/autonavi/gbl/util/model/Date;-><init>(SBBB)V

    new-instance v3, Lcom/autonavi/gbl/util/model/Time;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-byte v4, v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-byte v5, v5

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/autonavi/gbl/util/model/Time;-><init>(BBBB)V

    new-instance v0, Lcom/autonavi/gbl/util/model/DateTime;

    invoke-direct {v0, v2, v3}, Lcom/autonavi/gbl/util/model/DateTime;-><init>(Lcom/autonavi/gbl/util/model/Date;Lcom/autonavi/gbl/util/model/Time;)V

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGDateTime:Lcom/autonavi/gbl/util/model/DateTime;

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteConsisAdditionService:Lcom/autonavi/gbl/route/RouteConsisAdditionService;

    invoke-virtual {v1, v0}, Lcom/autonavi/gbl/route/RouteConsisAdditionService;->setRoutePlanTime(Lcom/autonavi/gbl/util/model/DateTime;)V

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->offlineRouteOption:Lcom/autonavi/gbl/common/path/option/RouteOption;

    return-void
.end method

.method public setRouteReqId(J)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteReqId:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lf/h/b/j/a;

    invoke-direct {v1, p1, p2}, Lf/h/b/j/a;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndUpdate(Ljava/util/function/LongUnaryOperator;)J

    return-void
.end method

.method public setRouteResultData(Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteCarResultData:Lcom/autosdk/bussiness/navi/route/model/RouteCarResultData;

    return-void
.end method

.method public setTrafficTimeLeft(I)V
    .locals 0

    iput p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->trafficTimeLeft:I

    return-void
.end method

.method public setTtsExtraStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mTtsExtraStr:Ljava/lang/String;

    return-void
.end method

.method public setViaPointRemainList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/TimeAndDist;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->viaPoints:Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;->clear()V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->viaPoints:Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method public setvehicleChargeLeftList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->vehicleChargeLefts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->vehicleChargeLefts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public startNavi(JI)Z
    .locals 3

    iput p3, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    iput-wide p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviId:J

    iget-boolean p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isInNaviTask:Z

    const-string p2, "NaviController"

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/autosdk/bussiness/navi/NaviController;->startNaviType(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    :goto_0
    invoke-direct {p0}, Lcom/autosdk/bussiness/navi/NaviController;->setNavState()V

    new-array p1, p1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, v1

    const-string p3, "startNavi()== naviState==:{?},type==:{?}"

    invoke-static {p2, p3, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    return p1

    :cond_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string p3, "\u4e0d\u8981\u91cd\u590d\u5bfc\u822a"

    invoke-static {p2, p3, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public stopCruise(J)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopCruise isNaving: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isInNaviTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isInNaviTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNaviId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "NaviController"

    invoke-static {v3, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    iget-wide v4, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviId:J

    cmp-long v0, p1, v4

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    iput-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isInNaviTask:Z

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/navi/NaviMessenger;->clearAllMessages()V

    invoke-direct {p0}, Lcom/autosdk/bussiness/navi/NaviController;->setNavState()V

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/autonavi/gbl/guide/GuideService;->stopNavi(J)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopCruise\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public stopNavi()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autosdk/bussiness/navi/NaviController;->stopNavi(Z)Z

    move-result v0

    return v0
.end method

.method public stopNavi(Z)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NaviController"

    const-string v3, "isNaving--stopNavi"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isInNaviTask:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-eqz p1, :cond_2

    iget-wide v3, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviId:J

    invoke-virtual {p1, v3, v4}, Lcom/autonavi/gbl/guide/GuideService;->stopNavi(J)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "stopNaviState Success!"

    invoke-static {v2, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    iput-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    iput-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isInNaviTask:Z

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->viaPoints:Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;

    invoke-virtual {p1}, Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;->clear()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/autosdk/bussiness/navi/NaviController;->setNextViaPoiTimeAndDist(Lcom/autonavi/gbl/guide/model/TimeAndDist;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->clearAllMessages()V

    invoke-direct {p0}, Lcom/autosdk/bussiness/navi/NaviController;->setNavState()V

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopNaviState\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "stopNavi : \u5df2\u9000\u51fa\u5bfc\u822a/\u5f53\u524d\u4e0d\u5728\u5bfc\u822a\u6001!"

    invoke-static {v2, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public stopNaviOnArrive()Z
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NaviController"

    const-string v3, "stopNaviOnArrive"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->isInNaviTask:Z

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideService:Lcom/autonavi/gbl/guide/GuideService;

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviId:J

    invoke-virtual {v1, v3, v4}, Lcom/autonavi/gbl/guide/GuideService;->stopNavi(J)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "stopNaviState Success!"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mGuideType:I

    iput-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isNaving:Z

    iput-boolean v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->isInNaviTask:Z

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->viaPoints:Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autosdk/bussiness/navi/NaviController;->setNextViaPoiTimeAndDist(Lcom/autonavi/gbl/guide/model/TimeAndDist;)V

    invoke-direct {p0}, Lcom/autosdk/bussiness/navi/NaviController;->setNavState()V

    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopNaviOnArrive\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "stopNavi : \u5df2\u9000\u51fa\u5bfc\u822a/\u5f53\u524d\u4e0d\u5728\u5bfc\u822a\u6001!"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public unRegisterWeatherObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteWeatherObserver:Lcom/autonavi/gbl/route/observer/IRouteWeatherObserver;

    return-void
.end method

.method public uninit()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NaviController"

    const-string v2, "naviManager uninit start..."

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->viaPoints:Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/CheckedSet;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autosdk/bussiness/navi/NaviController;->setNextViaPoiTimeAndDist(Lcom/autonavi/gbl/guide/model/TimeAndDist;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mMessenger:Lcom/autosdk/bussiness/navi/NaviMessenger;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/navi/NaviMessenger;->clearAllMessages()V

    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviObserverList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviObserverList:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->cruiseObservers:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->cruiseObservers:Ljava/util/List;

    :cond_1
    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteObserver:Lcom/autonavi/gbl/route/observer/IRouteResultObserver;

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mCruiseObserver:Lcom/autonavi/gbl/guide/observer/ICruiseObserver;

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviRerouteObserver:Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->soundPlayObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/autosdk/bussiness/navi/NaviController;->destroyGuide()V

    invoke-direct {p0}, Lcom/autosdk/bussiness/navi/NaviController;->destroyRoute()V

    const-wide/16 v0, -0x270f

    iput-wide v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->route:J

    const/16 v0, -0x270f

    iput v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->guide:I

    return-void
.end method

.method public unregisterCruiseObserver(Lcom/autonavi/gbl/guide/observer/ICruiseObserver;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mCruiseObserver:Lcom/autonavi/gbl/guide/observer/ICruiseObserver;

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->cruiseObservers:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterNavStopListener(Lcom/autosdk/bussiness/navi/NavStopForEHPListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->listeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/navi/NaviController;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterNaviObserver(Lcom/autonavi/gbl/guide/observer/INaviObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviObserverList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterNaviRerouteObserver(Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mNaviRerouteObserver:Lcom/autonavi/gbl/route/observer/INaviRerouteObserver;

    return-void
.end method

.method public unregisterRouteObserver(Lcom/autonavi/gbl/route/observer/IRouteResultObserver;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/autosdk/bussiness/navi/NaviController;->mRouteObserver:Lcom/autonavi/gbl/route/observer/IRouteResultObserver;

    return-void
.end method

.method public unregisterTbtSoundPlayObserver(Lcom/autonavi/gbl/guide/observer/ISoundPlayObserver;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterTbtSoundPlayObserver. l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NaviController"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/navi/NaviController;->soundPlayObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
