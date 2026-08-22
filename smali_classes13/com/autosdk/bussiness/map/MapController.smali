.class public Lcom/autosdk/bussiness/map/MapController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autosdk/bussiness/map/MapController$EMapStyleStateType;,
        Lcom/autosdk/bussiness/map/MapController$MapCtrlHolder;
    }
.end annotation


# static fields
.field private static final EXTRA_MAP_STYLE_NAVI_DAY:Ljava/lang/String; = "style_209_s"

.field private static final EXTRA_MAP_STYLE_NAVI_NIGHT:Ljava/lang/String; = "style_210_s"

.field private static final EXTRA_MAP_STYLE_NORMAL_DAY:Ljava/lang/String; = "style_201_s"

.field private static final EXTRA_MAP_STYLE_NORMAL_NIGHT:Ljava/lang/String; = "style_202_s"

.field private static final EXTRA_MAP_STYLE_PLAN_DAY:Ljava/lang/String; = "style_203_s"

.field private static final EXTRA_MAP_STYLE_PLAN_NIGHT:Ljava/lang/String; = "style_204_s"

.field public static SURFACEVIEW_MAX_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MapController"

.field public static isVSEagleEyeDrawPath:Z = false

.field public static stringStyles:[Ljava/lang/String;


# instance fields
.field private deviceExtObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

.field private deviceObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

.field private final deviceObserverArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/map/observer/DeviceObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final initMapResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

.field private mContext:Landroid/content/Context;

.field private mExtraBizManager:Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;

.field private mainMapView:Lcom/autonavi/gbl/map/MapView;

.field private mapDevice:Lcom/autonavi/gbl/map/MapDevice;

.field private mapExtraCreateObserver:Lcom/autosdk/bussiness/map/observer/MapExtraCreateObserver;

.field private mapExtraDevice:Lcom/autonavi/gbl/map/MapDevice;

.field private mapExtraStyleObserver:Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

.field private mapExtraView:Lcom/autonavi/gbl/map/MapView;

.field private final mapGestureObserverArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/map/observer/MapGestureObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mapService:Lcom/autonavi/gbl/map/MapService;

.field private final mapSurfaceViewArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/map/adapter/MapSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private final mapViewObserverArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/map/observer/MapViewObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mapviewModeParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/gbl/map/model/MapviewModeParam;",
            ">;"
        }
    .end annotation
.end field

.field public volatile styleString:Ljava/lang/String;

.field private final textTextureObserverArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/autosdk/bussiness/map/observer/TextTextureObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "style"

    const-string v1, "shamo"

    const-string v2, "snow"

    const-string v3, "gold"

    const-string v4, "pifu"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autosdk/bussiness/map/MapController;->stringStyles:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapViewObserverArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapGestureObserverArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->textTextureObserverArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserverArrayList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapDevice:Lcom/autonavi/gbl/map/MapDevice;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapviewModeParams:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->initMapResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/autosdk/bussiness/map/MapController;->stringStyles:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->styleString:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autosdk/bussiness/map/MapController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/bussiness/map/MapController;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/autosdk/bussiness/map/MapController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/autosdk/bussiness/map/MapController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addKldSurfaceView(Lcom/autosdk/bussiness/map/SurfaceViewParam;)I
    .locals 7

    const-string v0, "MapController"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "addKldSurfaceView input param is null"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v2, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    if-nez v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "addKldSurfaceView input param glMapSurface is null"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/autosdk/bussiness/map/MapController;->SURFACEVIEW_MAX_COUNT:I

    if-gt v3, v2, :cond_2

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "mapSurfaceView count is full"

    invoke-static {v0, v3, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/kld/KldDisplayController;->getInstance()Lcom/autosdk/bussiness/kld/KldDisplayController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v3}, Lcom/autosdk/bussiness/kld/KldDisplayController;->createKldDisplay(Lcom/autosdk/bussiness/map/SurfaceViewParam;ZI)Lcom/autonavi/gbl/multi/display/Display;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/autonavi/gbl/multi/display/Display;->getMapDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v4, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    check-cast v4, Lcom/autosdk/bussiness/kld/view/KldMapSurfaceView;

    invoke-virtual {v4, v2}, Lcom/autosdk/bussiness/kld/view/KldMapSurfaceView;->setMapViewInfo(Lcom/autonavi/gbl/multi/display/Display;)V

    invoke-virtual {v2}, Lcom/autonavi/gbl/multi/display/Display;->getMapDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v4

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    if-nez v5, :cond_4

    new-instance v5, Lcom/autosdk/bussiness/map/observer/DeviceObserver;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Lcom/autosdk/bussiness/map/observer/DeviceObserver;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    iput-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    :cond_4
    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    check-cast v5, Lcom/autosdk/bussiness/map/observer/DeviceObserver;

    invoke-virtual {v5, v4}, Lcom/autosdk/bussiness/map/observer/DeviceObserver;->setMapDevice(Lcom/autonavi/gbl/map/MapDevice;)V

    invoke-virtual {v2}, Lcom/autonavi/gbl/multi/display/Display;->getMapView()Lcom/autonavi/gbl/map/MapView;

    move-result-object v2

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    check-cast v5, Lcom/autosdk/bussiness/map/observer/DeviceObserver;

    invoke-virtual {v5, v2}, Lcom/autosdk/bussiness/map/observer/DeviceObserver;->setmMapView(Lcom/autonavi/gbl/map/MapView;)V

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    invoke-virtual {v4, v5}, Lcom/autonavi/gbl/map/MapDevice;->addDeviceObserver(Lcom/autonavi/gbl/map/observer/IDeviceObserver;)V

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserverArrayList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    check-cast v6, Lcom/autosdk/bussiness/map/observer/DeviceObserver;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_5

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "createMapView is failed"

    invoke-static {v0, v3, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1

    :cond_5
    invoke-static {v4}, Lf/k/c/x/j1;->b(Lcom/autonavi/gbl/map/MapDevice;)V

    iget-object v5, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    iget-object v6, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-virtual {v5, v6}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->setMapService(Lcom/autonavi/gbl/map/MapService;)V

    iget-object v5, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v5, v4}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->setDefaultDevice(Lcom/autonavi/gbl/map/MapDevice;)V

    iget-object v4, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v4, v2}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->setDefaultMapView(Lcom/autonavi/gbl/map/MapView;)V

    iget-object v4, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v1, [Ljava/lang/Object;

    const-string v4, "initKld mainMapView"

    invoke-static {v0, v4, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    new-instance p1, Lcom/autonavi/gbl/map/model/GestureConfigure;

    invoke-direct {p1}, Lcom/autonavi/gbl/map/model/GestureConfigure;-><init>()V

    iget-object v4, p0, Lcom/autosdk/bussiness/map/MapController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v1, "initKld mainMapView scaledTouchSlop:{?}"

    invoke-static {v0, v1, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x28

    iput v0, p1, Lcom/autonavi/gbl/map/model/GestureConfigure;->enterMoveThreshold:I

    iput v0, p1, Lcom/autonavi/gbl/map/model/GestureConfigure;->clickedThreshold:I

    const-wide/16 v0, 0x15e

    iput-wide v0, p1, Lcom/autonavi/gbl/map/model/GestureConfigure;->nSinglePressTimeOut:J

    invoke-virtual {v2}, Lcom/autonavi/gbl/map/MapView;->getOperatorGesture()Lcom/autonavi/gbl/map/OperatorGesture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/OperatorGesture;->setGestureConfigure(Lcom/autonavi/gbl/map/model/GestureConfigure;)V

    return v3

    :cond_6
    :goto_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "addKldSurfaceView kldDisplay is null or kldDisplay.getMapDevice is null"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method private addSurfaceExtraView(Lcom/autosdk/bussiness/map/SurfaceViewParam;)I
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "MapController"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "addSurfaceExtraView input param is null"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v2, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    if-nez v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "addSurfaceExtraView input param glMapSurface is null"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "mapSurfaceView count is {?}"

    invoke-static {v0, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v4, Lcom/autosdk/bussiness/map/MapController;->SURFACEVIEW_MAX_COUNT:I

    if-gt v4, v2, :cond_2

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "mapSurfaceView count is full"

    invoke-static {v0, v3, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1

    :cond_2
    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraDevice:Lcom/autonavi/gbl/map/MapDevice;

    if-nez v2, :cond_3

    invoke-direct {p0, v3}, Lcom/autosdk/bussiness/map/MapController;->createExtDevice(I)Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraDevice:Lcom/autonavi/gbl/map/MapDevice;

    :cond_3
    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraDevice:Lcom/autonavi/gbl/map/MapDevice;

    if-nez v2, :cond_4

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "createDevice is failed"

    invoke-static {v0, v3, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1

    :cond_4
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraView:Lcom/autonavi/gbl/map/MapView;

    if-nez v4, :cond_5

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/autosdk/bussiness/map/MapController;->createExtraMapView(Lcom/autonavi/gbl/map/MapDevice;JLcom/autosdk/bussiness/map/SurfaceViewParam;)Lcom/autonavi/gbl/map/MapView;

    move-result-object v2

    iput-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraView:Lcom/autonavi/gbl/map/MapView;

    :cond_5
    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraView:Lcom/autonavi/gbl/map/MapView;

    if-nez v2, :cond_6

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "createMapView is failed"

    invoke-static {v0, v3, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1

    :cond_6
    iget-object v1, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->setMapService(Lcom/autonavi/gbl/map/MapService;)V

    iget-object v1, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraDevice:Lcom/autonavi/gbl/map/MapDevice;

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->setDefaultDevice(Lcom/autonavi/gbl/map/MapDevice;)V

    iget-object v1, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraView:Lcom/autonavi/gbl/map/MapView;

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->setDefaultMapView(Lcom/autonavi/gbl/map/MapView;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSurfaceExtraView: extra"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->getDefaultDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapDevice;->getDeviceId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/byd/lane/aos/LaneAosManager;->getInstance()Lcom/byd/lane/aos/LaneAosManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byd/lane/aos/LaneAosManager;->initLaneServiceForCluster()V

    const/4 p1, 0x2

    return p1
.end method

.method private addSurfaceView(Lcom/autosdk/bussiness/map/SurfaceViewParam;)I
    .locals 7

    const-string v0, "MapController"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "addSurfaceView input param is null"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v2, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    if-nez v2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "addSurfaceView input param glMapSurface is null"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/autosdk/bussiness/map/MapController;->SURFACEVIEW_MAX_COUNT:I

    if-gt v3, v2, :cond_2

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "mapSurfaceView count is full"

    invoke-static {v0, v3, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1

    :cond_2
    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapDevice:Lcom/autonavi/gbl/map/MapDevice;

    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/autosdk/bussiness/map/MapController;->createDevice(I)Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapDevice:Lcom/autonavi/gbl/map/MapDevice;

    :cond_3
    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapDevice:Lcom/autonavi/gbl/map/MapDevice;

    if-nez v2, :cond_4

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "createDevice is failed"

    invoke-static {v0, v3, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1

    :cond_4
    const/4 v3, 0x1

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/autosdk/bussiness/map/MapController;->createMapView(Lcom/autonavi/gbl/map/MapDevice;JLcom/autosdk/bussiness/map/SurfaceViewParam;)Lcom/autonavi/gbl/map/MapView;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "createMapView is failed"

    invoke-static {v0, v3, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1

    :cond_5
    new-instance v4, Lcom/autonavi/gbl/map/model/TextureLoaderInitParam;

    invoke-direct {v4}, Lcom/autonavi/gbl/map/model/TextureLoaderInitParam;-><init>()V

    const-string v5, "libcmb_LayerImages.so"

    iput-object v5, v4, Lcom/autonavi/gbl/map/model/TextureLoaderInitParam;->strPkgName:Ljava/lang/String;

    iput-boolean v3, v4, Lcom/autonavi/gbl/map/model/TextureLoaderInitParam;->isMergeRes:Z

    iget-object v5, v4, Lcom/autonavi/gbl/map/model/TextureLoaderInitParam;->vecResPath:Ljava/util/ArrayList;

    const-string v6, "blRes/LayerAsset/"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Lcom/autonavi/gbl/map/MapView;->addTextureLoader(Lcom/autonavi/gbl/map/model/TextureLoaderInitParam;)I

    iget-object v4, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserverArrayList:Ljava/util/ArrayList;

    sub-int/2addr v4, v3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autosdk/bussiness/map/observer/DeviceObserver;

    invoke-virtual {v5, v2}, Lcom/autosdk/bussiness/map/observer/DeviceObserver;->setmMapView(Lcom/autonavi/gbl/map/MapView;)V

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autosdk/bussiness/map/observer/DeviceObserver;

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->mapDevice:Lcom/autonavi/gbl/map/MapDevice;

    invoke-virtual {v4, v5}, Lcom/autosdk/bussiness/map/observer/DeviceObserver;->setMapDevice(Lcom/autonavi/gbl/map/MapDevice;)V

    :cond_6
    iget-object v4, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-virtual {v4, v5}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->setMapService(Lcom/autonavi/gbl/map/MapService;)V

    iget-object v4, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->mapDevice:Lcom/autonavi/gbl/map/MapDevice;

    invoke-virtual {v4, v5}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->setDefaultDevice(Lcom/autonavi/gbl/map/MapDevice;)V

    iget-object v4, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v4, v2}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->setDefaultMapView(Lcom/autonavi/gbl/map/MapView;)V

    iget-object v4, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p1, v1, [Ljava/lang/Object;

    const-string v4, "Init mainMapView"

    invoke-static {v0, v4, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    new-instance p1, Lcom/autonavi/gbl/map/model/GestureConfigure;

    invoke-direct {p1}, Lcom/autonavi/gbl/map/model/GestureConfigure;-><init>()V

    iget-object v4, p0, Lcom/autosdk/bussiness/map/MapController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    const-string v1, "initKld mainMapView scaledTouchSlop:{?}"

    invoke-static {v0, v1, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x28

    iput v0, p1, Lcom/autonavi/gbl/map/model/GestureConfigure;->enterMoveThreshold:I

    iput v0, p1, Lcom/autonavi/gbl/map/model/GestureConfigure;->clickedThreshold:I

    const-wide/16 v0, 0x15e

    iput-wide v0, p1, Lcom/autonavi/gbl/map/model/GestureConfigure;->nSinglePressTimeOut:J

    invoke-virtual {v2}, Lcom/autonavi/gbl/map/MapView;->getOperatorGesture()Lcom/autonavi/gbl/map/OperatorGesture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/OperatorGesture;->setGestureConfigure(Lcom/autonavi/gbl/map/model/GestureConfigure;)V

    return v3
.end method

.method private clearDeviceObservers()V
    .locals 4

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autosdk/bussiness/map/observer/DeviceObserver;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/map/observer/DeviceObserver;->getMapDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/autonavi/gbl/map/MapDevice;->removeDeviceObserver(Lcom/autonavi/gbl/map/observer/IDeviceObserver;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private clearMapGestureObservers()V
    .locals 4

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapGestureObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapGestureObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autosdk/bussiness/map/observer/MapGestureObserver;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/map/observer/MapGestureObserver;->getMapView()Lcom/autonavi/gbl/map/MapView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/autonavi/gbl/map/MapView;->removeGestureObserver(Lcom/autonavi/gbl/map/observer/IMapGestureObserver;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapGestureObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private clearMapViewObservers()V
    .locals 4

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapViewObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapViewObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autosdk/bussiness/map/observer/MapViewObserver;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/map/observer/MapViewObserver;->getMapView()Lcom/autonavi/gbl/map/MapView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/autonavi/gbl/map/MapView;->removeMapviewObserver(Lcom/autonavi/gbl/map/observer/IMapviewObserver;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapViewObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private clearTextTextureObservers()V
    .locals 4

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->textTextureObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->textTextureObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autosdk/bussiness/map/observer/TextTextureObserver;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/map/observer/TextTextureObserver;->getMapView()Lcom/autonavi/gbl/map/MapView;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/autonavi/gbl/map/MapView;->setTextTextureObserver(Lcom/autonavi/gbl/map/observer/ITextTextureObserver;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->textTextureObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private declared-synchronized createDevice(I)Lcom/autonavi/gbl/map/MapDevice;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "MapController"

    const-string v0, "createDevice SDK mapService is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/DeviceAttribute;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->isNeedAntialias:Z

    const/4 v4, 0x4

    iput v4, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->samples:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    iput v5, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->uiTaskDeviceId:I

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    iput v3, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->uiTaskDeviceId:I

    goto :goto_0

    :cond_2
    if-ne p1, v4, :cond_3

    iput v4, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->uiTaskDeviceId:I

    goto :goto_0

    :cond_3
    iput v1, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->uiTaskDeviceId:I

    :goto_0
    iput v1, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->deviceWorkMode:I

    iput-boolean v3, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->isRecordeable:Z

    iput v3, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->renderVendorType:I

    if-lez p1, :cond_5

    iget-object v6, p0, Lcom/autosdk/bussiness/map/MapController;->deviceExtObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    if-nez v6, :cond_4

    new-instance v6, Lcom/autosdk/bussiness/map/observer/DeviceExtraObservice;

    invoke-direct {v6, v2, v2}, Lcom/autosdk/bussiness/map/observer/DeviceExtraObservice;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    iput-object v6, p0, Lcom/autosdk/bussiness/map/MapController;->deviceExtObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    :cond_4
    iget-object v6, p0, Lcom/autosdk/bussiness/map/MapController;->deviceExtObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    if-nez v6, :cond_6

    new-instance v6, Lcom/autosdk/bussiness/map/observer/DeviceObserver;

    invoke-direct {v6, v2, v2}, Lcom/autosdk/bussiness/map/observer/DeviceObserver;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    iput-object v6, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    :cond_6
    iget-object v6, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserver:Lcom/autonavi/gbl/map/observer/IDeviceObserver;

    iget-object v7, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserverArrayList:Ljava/util/ArrayList;

    move-object v8, v6

    check-cast v8, Lcom/autosdk/bussiness/map/observer/DeviceObserver;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v7, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-virtual {v7, p1, v0, v6}, Lcom/autonavi/gbl/map/MapService;->createDevice(ILcom/autonavi/gbl/map/model/DeviceAttribute;Lcom/autonavi/gbl/map/observer/IDeviceObserver;)Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v0

    if-nez v0, :cond_7

    const-string p1, "MapController"

    const-string v0, "createDevice mapDevice is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_7
    if-nez p1, :cond_8

    const/16 p1, 0xf

    :try_start_2
    invoke-virtual {v0, v1, p1}, Lcom/autonavi/gbl/map/MapDevice;->setRenderFpsByMode(II)V

    invoke-virtual {v0, v3, p1}, Lcom/autonavi/gbl/map/MapDevice;->setRenderFpsByMode(II)V

    const/16 p1, 0x3c

    invoke-virtual {v0, v5, p1}, Lcom/autonavi/gbl/map/MapDevice;->setRenderFpsByMode(II)V

    invoke-virtual {v0, v4, p1}, Lcom/autonavi/gbl/map/MapDevice;->setRenderFpsByMode(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized createExtDevice(I)Lcom/autonavi/gbl/map/MapDevice;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "MapController"

    const-string v0, "createExtDevice SDK mapService is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/DeviceAttribute;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->isNeedAntialias:Z

    const/4 v4, 0x2

    iput v4, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->samples:I

    iput v3, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->uiTaskDeviceId:I

    iput v1, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->deviceWorkMode:I

    iput-boolean v3, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->isRecordeable:Z

    iput v3, v0, Lcom/autonavi/gbl/map/model/DeviceAttribute;->renderVendorType:I

    if-lez p1, :cond_1

    new-instance v5, Lcom/autosdk/bussiness/map/observer/DeviceExtraObservice;

    invoke-direct {v5, v2, v2}, Lcom/autosdk/bussiness/map/observer/DeviceExtraObservice;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/autosdk/bussiness/map/observer/DeviceObserver;

    invoke-direct {v5, v2, v2}, Lcom/autosdk/bussiness/map/observer/DeviceObserver;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    iget-object v6, p0, Lcom/autosdk/bussiness/map/MapController;->deviceObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v6, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-virtual {v6, p1, v0, v5}, Lcom/autonavi/gbl/map/MapService;->createDevice(ILcom/autonavi/gbl/map/model/DeviceAttribute;Lcom/autonavi/gbl/map/observer/IDeviceObserver;)Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "MapController"

    const-string v0, "createExtDevice mapDevice is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_2
    if-ne p1, v3, :cond_3

    const/16 p1, 0xf

    :try_start_2
    invoke-virtual {v0, v1, p1}, Lcom/autonavi/gbl/map/MapDevice;->setRenderFpsByMode(II)V

    invoke-virtual {v0, v3, p1}, Lcom/autonavi/gbl/map/MapDevice;->setRenderFpsByMode(II)V

    const/16 p1, 0x19

    invoke-virtual {v0, v4, p1}, Lcom/autonavi/gbl/map/MapDevice;->setRenderFpsByMode(II)V

    const/4 p1, 0x3

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/gbl/map/MapDevice;->setRenderFpsByMode(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createExtraMapView(Lcom/autonavi/gbl/map/MapDevice;JLcom/autosdk/bussiness/map/SurfaceViewParam;)Lcom/autonavi/gbl/map/MapView;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v4, 0x0

    const-string v5, "MapController"

    const/4 v6, 0x0

    if-nez v3, :cond_0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "createExtraMapView SDK mapService is null"

    invoke-static {v5, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_0
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "createExtraMapView() nEngineId:{?}"

    invoke-static {v5, v8, v7}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v10, Lcom/autonavi/gbl/map/model/MapViewParam;

    invoke-direct {v10}, Lcom/autonavi/gbl/map/model/MapViewParam;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/gbl/map/MapDevice;->getDeviceId()I

    move-result v7

    iput v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->deviceId:I

    move-wide/from16 v7, p2

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->engineId:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->x:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->x:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->y:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->y:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->width:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->width:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->height:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->height:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->screenWidth:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->screenWidth:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->screenHeight:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->screenHeight:J

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->cacheCountFactor:F

    const-string v2, "mapprofile_fa2"

    iput-object v2, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->mapProfileName:Ljava/lang/String;

    new-instance v2, Lf/h/b/i/f;

    invoke-direct {v2, p0}, Lf/h/b/i/f;-><init>(Lcom/autosdk/bussiness/map/MapController;)V

    invoke-virtual {p0, v2}, Lcom/autosdk/bussiness/map/MapController;->setMapExtraStyleObserver(Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;)V

    iget-object v9, v0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    new-instance v11, Lcom/autosdk/bussiness/map/MapController$2;

    invoke-direct {v11, p0, v1}, Lcom/autosdk/bussiness/map/MapController$2;-><init>(Lcom/autosdk/bussiness/map/MapController;Lcom/autonavi/gbl/map/MapDevice;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/autonavi/gbl/map/MapService;->createMapView(Lcom/autonavi/gbl/map/model/MapViewParam;Lcom/autonavi/gbl/map/observer/IBLMapViewProxy;Lcom/autonavi/gbl/map/observer/IBLMapEngineObserver;Lcom/autonavi/gbl/map/observer/IBLMapBusinessDataObserver;Lcom/autonavi/gbl/map/observer/IAnimationObserver;)Lcom/autonavi/gbl/map/MapView;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "createExtraMapView mapView is null"

    invoke-static {v5, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_1
    #const/high16 v4, 0x41700000    # 15.0f
    const/high16 v4, 0x41880000    # 17.0f

    invoke-direct {p0, v2, v4}, Lcom/autosdk/bussiness/map/MapController;->setZoomLevel(Lcom/autonavi/gbl/map/MapView;F)V

    invoke-static {}, Lcom/autosdk/bussiness/settings/Settings;->getInstance()Lcom/autosdk/bussiness/settings/Settings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autosdk/bussiness/settings/Settings;->getConfigKeyRoadEvent()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v6

    :goto_0
    invoke-virtual {p0, v2, v4}, Lcom/autosdk/bussiness/map/MapController;->setTmcVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-direct {p0, v2, v3}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapPOIVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/settings/SettingsByd;->getInstance()Lcom/autosdk/bussiness/settings/SettingsByd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autosdk/bussiness/settings/SettingsByd;->getBydConfigKeyPerformance()I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapSample3DVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/settings/SettingsByd;->getInstance()Lcom/autosdk/bussiness/settings/SettingsByd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autosdk/bussiness/settings/SettingsByd;->getBydConfigKeyPerformance()I

    move-result v4

    if-eqz v4, :cond_4

    move v6, v3

    :cond_4
    invoke-virtual {p0, v2, v6}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/map/BuildingPref;->getShow()Z

    move-result v6

    invoke-virtual {p0, v2, v6}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-virtual {v2}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/autonavi/gbl/map/OperatorBusiness;->showBuildingNormal(Z)V

    invoke-direct {p0, v2, v3}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapRoadNameVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    new-instance v4, Lcom/autosdk/bussiness/map/observer/DeviceExtraObservice;

    invoke-direct {v4, v1, v2}, Lcom/autosdk/bussiness/map/observer/DeviceExtraObservice;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    invoke-virtual {v1, v4}, Lcom/autonavi/gbl/map/MapDevice;->addDeviceObserver(Lcom/autonavi/gbl/map/observer/IDeviceObserver;)V

    new-instance v4, Lcom/autosdk/bussiness/map/observer/TextTextureObserver;

    invoke-direct {v4, v1, v2}, Lcom/autosdk/bussiness/map/observer/TextTextureObserver;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    invoke-virtual {v2, v4}, Lcom/autonavi/gbl/map/MapView;->setTextTextureObserver(Lcom/autonavi/gbl/map/observer/ITextTextureObserver;)V

    iget-object v1, v0, Lcom/autosdk/bussiness/map/MapController;->textTextureObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/autonavi/gbl/map/MapView;->getOperatorGesture()Lcom/autonavi/gbl/map/OperatorGesture;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/autonavi/gbl/map/OperatorGesture;->enableSliding(Z)V

    return-object v2
.end method

.method private createMapView(Lcom/autonavi/gbl/map/MapDevice;JLcom/autosdk/bussiness/map/SurfaceViewParam;)Lcom/autonavi/gbl/map/MapView;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v4, 0x0

    const-string v5, "MapController"

    const/4 v6, 0x0

    if-nez v3, :cond_0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "createMapView SDK mapService is null"

    invoke-static {v5, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_0
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "createMapView() nEngineId:{?}"

    invoke-static {v5, v8, v7}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v10, Lcom/autonavi/gbl/map/model/MapViewParam;

    invoke-direct {v10}, Lcom/autonavi/gbl/map/model/MapViewParam;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/gbl/map/MapDevice;->getDeviceId()I

    move-result v7

    iput v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->deviceId:I

    move-wide/from16 v7, p2

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->engineId:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->x:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->x:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->y:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->y:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->width:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->width:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->height:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->height:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->screenWidth:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->screenWidth:J

    iget-wide v7, v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;->screenHeight:J

    iput-wide v7, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->screenHeight:J

    const/high16 v2, 0x40000000    # 2.0f

    iput v2, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->cacheCountFactor:F

    const-string v2, "mapprofile_fa2"

    iput-object v2, v10, Lcom/autonavi/gbl/map/model/MapViewParam;->mapProfileName:Ljava/lang/String;

    iget-object v9, v0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    new-instance v11, Lcom/autosdk/bussiness/map/MapController$1;

    invoke-direct {v11, p0, v1}, Lcom/autosdk/bussiness/map/MapController$1;-><init>(Lcom/autosdk/bussiness/map/MapController;Lcom/autonavi/gbl/map/MapDevice;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/autonavi/gbl/map/MapService;->createMapView(Lcom/autonavi/gbl/map/model/MapViewParam;Lcom/autonavi/gbl/map/observer/IBLMapViewProxy;Lcom/autonavi/gbl/map/observer/IBLMapEngineObserver;Lcom/autonavi/gbl/map/observer/IBLMapBusinessDataObserver;Lcom/autonavi/gbl/map/observer/IAnimationObserver;)Lcom/autonavi/gbl/map/MapView;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/gbl/map/MapDevice;->renderResume()V

    if-nez v2, :cond_1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "createMapView mapView is null"

    invoke-static {v5, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_1
    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v4

    invoke-virtual {p0, v2, v4, v6, v6}, Lcom/autosdk/bussiness/map/MapController;->setMapStyle(Lcom/autonavi/gbl/map/MapView;ZIZ)V

    #const/high16 v4, 0x41700000    # 15.0f
    const/high16 v4, 0x41880000    # 17.0f

    invoke-direct {p0, v2, v4}, Lcom/autosdk/bussiness/map/MapController;->setZoomLevel(Lcom/autonavi/gbl/map/MapView;F)V

    invoke-static {}, Lcom/autosdk/bussiness/settings/Settings;->getInstance()Lcom/autosdk/bussiness/settings/Settings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autosdk/bussiness/settings/Settings;->getConfigKeyRoadEvent()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v6

    :goto_0
    invoke-virtual {p0, v2, v4}, Lcom/autosdk/bussiness/map/MapController;->setTmcVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-direct {p0, v2, v3}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapPOIVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/settings/SettingsByd;->getInstance()Lcom/autosdk/bussiness/settings/SettingsByd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autosdk/bussiness/settings/SettingsByd;->getBydConfigKeyPerformance()I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v6

    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapSample3DVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/settings/SettingsByd;->getInstance()Lcom/autosdk/bussiness/settings/SettingsByd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autosdk/bussiness/settings/SettingsByd;->getBydConfigKeyPerformance()I

    move-result v4

    if-eqz v4, :cond_4

    move v6, v3

    :cond_4
    invoke-virtual {p0, v2, v6}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-direct {p0, v2, v3}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapRoadNameVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    new-instance v4, Lcom/autosdk/bussiness/map/observer/MapViewObserver;

    invoke-direct {v4, v1, v2}, Lcom/autosdk/bussiness/map/observer/MapViewObserver;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    invoke-virtual {v2, v4}, Lcom/autonavi/gbl/map/MapView;->addMapviewObserver(Lcom/autonavi/gbl/map/observer/IMapviewObserver;)V

    iget-object v5, v0, Lcom/autosdk/bussiness/map/MapController;->mapViewObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/autosdk/bussiness/map/observer/MapGestureObserver;

    invoke-direct {v4, v1, v2}, Lcom/autosdk/bussiness/map/observer/MapGestureObserver;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    invoke-virtual {v2, v4}, Lcom/autonavi/gbl/map/MapView;->addGestureObserver(Lcom/autonavi/gbl/map/observer/IMapGestureObserver;)V

    iget-object v5, v0, Lcom/autosdk/bussiness/map/MapController;->mapGestureObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/autosdk/bussiness/map/observer/TextTextureObserver;

    invoke-direct {v4, v1, v2}, Lcom/autosdk/bussiness/map/observer/TextTextureObserver;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    invoke-virtual {v2, v4}, Lcom/autonavi/gbl/map/MapView;->setTextTextureObserver(Lcom/autonavi/gbl/map/observer/ITextTextureObserver;)V

    iget-object v1, v0, Lcom/autosdk/bussiness/map/MapController;->textTextureObserverArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/autonavi/gbl/map/MapView;->getOperatorGesture()Lcom/autonavi/gbl/map/OperatorGesture;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/autonavi/gbl/map/OperatorGesture;->enableSliding(Z)V

    return-object v2
.end method

.method private getCurrentScale(Lcom/autonavi/gbl/map/MapView;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorScale()Lcom/autonavi/gbl/map/OperatorScale;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/OperatorScale;->getCurrentScale()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static getInstance()Lcom/autosdk/bussiness/map/MapController;
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController$MapCtrlHolder;->access$100()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    return-object v0
.end method

.method private getMaxScale(Lcom/autonavi/gbl/map/MapView;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/OperatorPosture;->getMaxScale()F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getMinScale(Lcom/autonavi/gbl/map/MapView;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/OperatorPosture;->getMinScale()F

    move-result p1

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getZoomLevel(Lcom/autonavi/gbl/map/MapView;)F
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/OperatorPosture;->getZoomLevel()F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hidePoiOn3DMoving(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lf/h/b/i/l;

    invoke-direct {v1, p1}, Lf/h/b/i/l;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lf/h/b/i/s;->a:Lf/h/b/i/s;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lf/h/b/i/j;

    invoke-direct {v1, p1, p2}, Lf/h/b/i/j;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private hidePoiOn3DSliding(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lf/h/b/i/k;

    invoke-direct {v1, p1}, Lf/h/b/i/k;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lf/h/b/i/s;->a:Lf/h/b/i/s;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lf/h/b/i/i;

    invoke-direct {v1, p1, p2}, Lf/h/b/i/i;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private declared-synchronized initMapService(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->initMapResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "MapController"

    const-string v0, "initMapService is success return"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/map/MapService;

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    :cond_1
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-nez v0, :cond_2

    const-string p1, "MapController"

    const-string v0, "initMapService mapService is null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v0, Lcom/autonavi/gbl/map/model/InitMapParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/InitMapParam;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "data/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/autonavi/gbl/map/model/InitMapParam;->dataPath:Ljava/lang/String;

    const-string p1, "http://mps.amap.com:80/"

    iput-object p1, v0, Lcom/autonavi/gbl/map/model/InitMapParam;->basePath:Ljava/lang/String;

    iget-object p1, p0, Lcom/autosdk/bussiness/map/MapController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/BydAutoMap/blRes/font/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/autonavi/gbl/map/model/MapFontInfo;

    invoke-direct {v2}, Lcom/autonavi/gbl/map/model/MapFontInfo;-><init>()V

    const-string v4, "SDK_Font-Medium"

    iput-object v4, v2, Lcom/autonavi/gbl/map/model/MapFontInfo;->fontName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SDK_Font-Medium.ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/autonavi/gbl/map/model/MapFontInfo;->fontPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/autonavi/gbl/map/model/InitMapParam;->fontParam:Lcom/autonavi/gbl/map/model/MapFontLoaderParam;

    iget-object v4, v4, Lcom/autonavi/gbl/map/model/MapFontLoaderParam;->overlayFontInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/autonavi/gbl/map/model/MapFontInfo;

    invoke-direct {v2}, Lcom/autonavi/gbl/map/model/MapFontInfo;-><init>()V

    const-string v4, "SDK_Font-Bold"

    iput-object v4, v2, Lcom/autonavi/gbl/map/model/MapFontInfo;->fontName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SDK_Font-Bold.ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/autonavi/gbl/map/model/MapFontInfo;->fontPath:Ljava/lang/String;

    iget-object v4, v0, Lcom/autonavi/gbl/map/model/InitMapParam;->fontParam:Lcom/autonavi/gbl/map/model/MapFontLoaderParam;

    iget-object v4, v4, Lcom/autonavi/gbl/map/model/MapFontLoaderParam;->overlayFontInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "MapController"

    const-string v4, "initMapService mapService path:{?}"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v2, v4, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/autonavi/gbl/map/model/MapFontInfo;

    invoke-direct {v2}, Lcom/autonavi/gbl/map/model/MapFontInfo;-><init>()V

    const-string v4, "HFBUBU-M"

    iput-object v4, v2, Lcom/autonavi/gbl/map/model/MapFontInfo;->fontName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "HFBUBU-M.ttf"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/autonavi/gbl/map/model/MapFontInfo;->fontPath:Ljava/lang/String;

    iget-object p1, v0, Lcom/autonavi/gbl/map/model/InitMapParam;->fontParam:Lcom/autonavi/gbl/map/model/MapFontLoaderParam;

    iput-boolean v1, p1, Lcom/autonavi/gbl/map/model/MapFontLoaderParam;->customFont:Z

    iget-object p1, p1, Lcom/autonavi/gbl/map/model/MapFontLoaderParam;->overlayFontInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/autosdk/bussiness/map/MapController;->initMapResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-virtual {v2, v0}, Lcom/autonavi/gbl/map/MapService;->initMap(Lcom/autonavi/gbl/map/model/InitMapParam;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "MapController"

    const-string v0, "initMap: ret = {?}"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/autosdk/bussiness/map/MapController;->initMapResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    aput-object v3, v2, v1

    invoke-static {p1, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    if-nez p1, :cond_5

    invoke-static {}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getInstance()Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    move-result-object p1

    iput-object p1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    invoke-virtual {p1}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->init()V

    iget-object p1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    invoke-virtual {p1}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getBizLooper()Lcom/autosdk/bussiness/common/bizlooper/BizLooper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/common/bizlooper/BizLooper;->startForMap()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isMainMapRollAngleLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/autosdk/bussiness/map/MapController;->isMapRollAngleLocked(Lcom/autonavi/gbl/map/MapView;)Z

    move-result v0

    return v0
.end method

.method private isMapRollAngleLocked(Lcom/autonavi/gbl/map/MapView;)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lf/h/b/i/s;->a:Lf/h/b/i/s;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lf/h/b/i/q;->a:Lf/h/b/i/q;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MapController"

    const-string v2, "isMapRollAngleLocked: isMapRollAngleLocked == {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method private isSameMapParam(ILcom/autonavi/gbl/map/model/MapviewModeParam;)Z
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapviewModeParams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/map/model/MapviewModeParam;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    iget v2, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p1, Lcom/autonavi/gbl/map/model/MapviewModeParam;->bChangeCenter:Z

    iget-boolean v2, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->bChangeCenter:Z

    if-ne v1, v2, :cond_1

    iget v1, p1, Lcom/autonavi/gbl/map/model/MapviewModeParam;->pitchAngle:F

    iget v2, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->pitchAngle:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget p1, p1, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    iget p2, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private synthetic lambda$createExtraMapView$13(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "MapController"

    const-string v2, "requireMapResource()=====styleType:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/autosdk/bussiness/map/MapController;->styleString:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$getPreviewMode$12(Z)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "MapController"

    const-string v1, "getPreviewMode: isPreviewMode == {?}"

    invoke-static {p0, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$goToDefaultPosition$3(I)V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MapController"

    const-string v2, "goToDefaultPosition"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/gbl/map/model/MapPositionParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/MapPositionParam;-><init>()V

    const-wide v1, -0x3f3c788000000000L    # -9999.0

    iput-wide v1, v0, Lcom/autonavi/gbl/map/model/MapPositionParam;->lon:D

    iput-wide v1, v0, Lcom/autonavi/gbl/map/model/MapPositionParam;->lat:D

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/gbl/map/MapView;->goToPosition(Lcom/autonavi/gbl/map/model/MapPositionParam;Z)V

    invoke-virtual {p1, v1}, Lcom/autonavi/gbl/map/MapView;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$hidePoiOn3DMoving$6(ILcom/autonavi/gbl/map/MapService;)Lcom/autonavi/gbl/map/MapView;
    .locals 0

    invoke-static {p0}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$hidePoiOn3DMoving$7(IZLcom/autonavi/gbl/map/OperatorGesture;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "MapController"

    const-string v1, "hidePoiOn3DMoving: surfaceViewID == {?}, isHide == {?}"

    invoke-static {p0, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/autonavi/gbl/map/OperatorGesture;->hidePoiOn3DMoving(Z)V

    return-void
.end method

.method public static synthetic lambda$hidePoiOn3DSliding$8(ILcom/autonavi/gbl/map/MapService;)Lcom/autonavi/gbl/map/MapView;
    .locals 0

    invoke-static {p0}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$hidePoiOn3DSliding$9(IZLcom/autonavi/gbl/map/OperatorGesture;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "MapController"

    const-string v1, "hidePoiOn3DSliding: surfaceViewID == {?}, isHide == {?}"

    invoke-static {p0, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/autonavi/gbl/map/OperatorGesture;->hidePoiOn3DSliding(Z)V

    return-void
.end method

.method public static synthetic lambda$lockMapPitchAngle$4(ZLcom/autonavi/gbl/map/OperatorGesture;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MapController"

    const-string v2, "lockMapPitchAngle: lock == {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/map/OperatorGesture;->lockMapPitchAngle(Z)V

    return-void
.end method

.method public static synthetic lambda$lockMapRollAngle$5(ZLcom/autonavi/gbl/map/OperatorGesture;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MapController"

    const-string v2, "lockMapRollAngle: lock == {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/map/OperatorGesture;->lockMapRollAngle(Z)V

    return-void
.end method

.method public static synthetic lambda$setMapCenter$0(ILcom/autonavi/gbl/map/MapService;)Lcom/autonavi/gbl/map/MapView;
    .locals 0

    invoke-static {p0}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$setMapCenter$1(Lcom/autonavi/gbl/common/model/Coord3DDouble;Lcom/autonavi/gbl/map/CameraOption;)V
    .locals 2

    invoke-virtual {p1, p0}, Lcom/autonavi/gbl/map/CameraOption;->setMapCenter(Lcom/autonavi/gbl/common/model/Coord3DDouble;)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/CameraOption;->commit()I

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-wide v0, p0, Lcom/autonavi/gbl/common/model/Coord3DDouble;->lon:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->convertStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-wide v0, p0, Lcom/autonavi/gbl/common/model/Coord3DDouble;->lat:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->convertStringToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    const-string p0, "MapController"

    const-string v0, "setMapCenter: mapCenter == ({?},{?})"

    invoke-static {p0, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setMapViewPort$2(Lcom/autonavi/gbl/map/MapView;Lcom/autonavi/gbl/map/model/MapViewPortParam;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/gbl/map/MapView;->setMapviewPort(Lcom/autonavi/gbl/map/model/MapViewPortParam;)I

    return-void
.end method

.method private synthetic lambda$uninit$10()V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getBizLooper()Lcom/autosdk/bussiness/common/bizlooper/BizLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/bizlooper/BizLooper;->onBeforeMapViewDestroy()V

    return-void
.end method

.method private synthetic lambda$uninit$11()V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mExtraBizManager:Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;->getBizLooper()Lcom/autosdk/bussiness/common/bizlooper/ExtraBizLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/bizlooper/ExtraBizLooper;->onBeforeMapViewDestroy()V

    return-void
.end method

.method private mapZoomIn(Lcom/autonavi/gbl/map/MapView;ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/autonavi/gbl/map/MapView;->mapZoomIn(ZZ)I

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/MapView;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method private mapZoomOut(Lcom/autonavi/gbl/map/MapView;ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/autonavi/gbl/map/MapView;->mapZoomOut(ZZ)I

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/MapView;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method private setBaseMapIconVisible(Lcom/autonavi/gbl/map/MapView;IZ)V
    .locals 0
    .param p2    # I
        .annotation build Lcom/autonavi/gbl/map/layer/model/OpenLayerID$OpenLayerID1;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object p1

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/autonavi/gbl/map/OperatorBusiness;->showOpenLayer(IZ)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorBusiness;->deleteOpenLayer(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setBaseMapPOIVisible(Lcom/autonavi/gbl/map/MapView;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorBusiness;->setLabelVisable(Z)V

    :cond_0
    return-void
.end method

.method private setBaseMapRoadNameVisible(Lcom/autonavi/gbl/map/MapView;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object p1

    const/16 v0, 0x6a

    invoke-virtual {p1, v0, p2}, Lcom/autonavi/gbl/map/OperatorBusiness;->setMapViewState(IZ)V

    :cond_0
    return-void
.end method

.method private setBaseMapSample3DVisible(Lcom/autonavi/gbl/map/MapView;Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "MapController"

    const-string v2, "[setBaseMapSample3DVisible] visible: {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-virtual {p1, v0, p2}, Lcom/autonavi/gbl/map/OperatorBusiness;->setMapViewState(IZ)V

    :cond_0
    return-void
.end method

.method private setMapviewModeParam(Lcom/autonavi/gbl/map/MapView;Lcom/autonavi/gbl/map/model/MapviewModeParam;Z)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/autosdk/bussiness/common/utils/OperatorTool;->getCameraOption(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    iget v2, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    invoke-virtual {p1, v2}, Lcom/autonavi/gbl/map/CameraOption;->setMapviewMode(I)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    iget v2, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->pitchAngle:F

    invoke-virtual {p1, v2}, Lcom/autonavi/gbl/map/CameraOption;->setPitch(F)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    iget v2, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    invoke-virtual {p1, v2}, Lcom/autonavi/gbl/map/CameraOption;->setZoomLevel(F)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    iget-boolean p2, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->bChangeCenter:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/map/CameraOption;->setMapCenterMode(I)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/autonavi/gbl/map/CameraOption;->enableAnimate(Z)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/CameraOption;->commit()I

    return-void

    :cond_2
    :goto_1
    new-array p3, v0, [Ljava/lang/Object;

    const/4 v0, 0x1

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v1

    if-nez p2, :cond_4

    move v1, v0

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v0

    const-string p1, "MapController"

    const-string p2, "setMapviewModeParam: mapView == null -- {?}, modeParam == null -- {?}"

    invoke-static {p1, p2, p3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setZoomLevel(Lcom/autonavi/gbl/map/MapView;F)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/OperatorPosture;->cameraBuilder()Lcom/autonavi/gbl/map/CameraOption;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/map/CameraOption;->setZoomLevel(F)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autonavi/gbl/map/CameraOption;->commit()I

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/MapView;->resetTickCount(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->lambda$createExtraMapView$13(Ljava/lang/String;)V

    return-void
.end method

.method public addGestureObserver(ILcom/autonavi/gbl/map/observer/IMapGestureObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/MapView;->addGestureObserver(Lcom/autonavi/gbl/map/observer/IMapGestureObserver;)V

    :cond_0
    return-void
.end method

.method public addMapEventObserver(ILcom/autonavi/gbl/map/observer/IMapEventObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/MapView;->addMapEventObserver(Lcom/autonavi/gbl/map/observer/IMapEventObserver;)Z

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "MapController"

    const-string p2, "===Observer addMapEventObserver ++++++++ ret ={?}   mapEventObserver={?}"

    invoke-static {p1, p2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addMapViewObserver(ILcom/autonavi/gbl/map/observer/IMapviewObserver;)Z
    .locals 5

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const-string v1, "MapController"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v3

    const-string v3, "addMapViewObserver: mapViewObserver={?}"

    invoke-static {v1, v3, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/map/MapView;->addMapviewObserver(Lcom/autonavi/gbl/map/observer/IMapviewObserver;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v3

    iget-object p1, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-nez p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v2

    const/4 p1, 0x2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p2, p1

    const-string p1, "addObserver ID:{?} service:{?} mapView:{?}"

    invoke-static {v1, p1, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public synthetic b(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->lambda$goToDefaultPosition$3(I)V

    return-void
.end method

.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/bussiness/map/MapController;->lambda$uninit$10()V

    return-void
.end method

.method public calMapZoomerScale(DDDDII)F
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/autonavi/gbl/map/model/CalMapZoomerLonLatParam;

    invoke-direct {v1}, Lcom/autonavi/gbl/map/model/CalMapZoomerLonLatParam;-><init>()V

    iget-object v2, v1, Lcom/autonavi/gbl/map/model/CalMapZoomerLonLatParam;->mapPointer1:Lcom/autonavi/gbl/common/model/Coord3DDouble;

    iput-wide p1, v2, Lcom/autonavi/gbl/common/model/Coord3DDouble;->lon:D

    iput-wide p3, v2, Lcom/autonavi/gbl/common/model/Coord3DDouble;->lat:D

    iget-object p1, v1, Lcom/autonavi/gbl/map/model/CalMapZoomerLonLatParam;->mapPointer2:Lcom/autonavi/gbl/common/model/Coord3DDouble;

    iput-wide p5, p1, Lcom/autonavi/gbl/common/model/Coord3DDouble;->lon:D

    iput-wide p7, p1, Lcom/autonavi/gbl/common/model/Coord3DDouble;->lat:D

    iput p9, v1, Lcom/autonavi/gbl/map/model/CalMapZoomerLonLatParam;->width:I

    iput p10, v1, Lcom/autonavi/gbl/map/model/CalMapZoomerLonLatParam;->height:I

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/map/OperatorPosture;->calculateMapZoomerLonLat(Lcom/autonavi/gbl/map/model/CalMapZoomerLonLatParam;)F

    move-result p1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x41300000    # 11.0f

    :goto_1
    return p1
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/bussiness/map/MapController;->lambda$uninit$11()V

    return-void
.end method

.method public delayInitByUser()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/autosdk/bussiness/settings/Settings;->getInstance()Lcom/autosdk/bussiness/settings/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/settings/Settings;->getConfigKeyRoadEvent()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/autosdk/bussiness/map/MapController;->setTmcVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/settings/SettingsByd;->getInstance()Lcom/autosdk/bussiness/settings/SettingsByd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/settings/SettingsByd;->getBydConfigKeyPerformance()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapSample3DVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/settings/SettingsByd;->getInstance()Lcom/autosdk/bussiness/settings/SettingsByd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/settings/SettingsByd;->getBydConfigKeyPerformance()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(Lcom/autonavi/gbl/map/MapView;Z)V

    :cond_3
    return-void
.end method

.method public destoryMetetDevice()V
    .locals 5

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraDevice:Lcom/autonavi/gbl/map/MapDevice;

    const/4 v1, 0x0

    const-string v2, "MapController"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iput-object v3, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraDevice:Lcom/autonavi/gbl/map/MapDevice;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v4, "destoryMetetDevice"

    invoke-static {v2, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v0, :cond_1

    iput-object v3, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraView:Lcom/autonavi/gbl/map/MapView;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "destoryMetetDevice and mapExtraView"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public exitPreview(Z)V
    .locals 8

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    const/4 v1, 0x0

    const-string v2, "exitPreviewTime:"

    const-string v3, "MapController"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapView;->exitPreview(Z)Lcom/autonavi/gbl/map/CameraOption;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapView;->exitPreview(Z)Lcom/autonavi/gbl/map/CameraOption;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getCarPositionInScreen()Lcom/autonavi/gbl/map/model/PointD;
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/layer/LayerController;->getBizControlService()Lcom/autonavi/gbl/layer/BizControlService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/autonavi/gbl/layer/BizControlService;->getBizCarControl(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/layer/BizCarControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/gbl/layer/BizCarControl;->getCarPosition()Lcom/autonavi/gbl/map/layer/model/CarLoc;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/autonavi/gbl/map/layer/model/CarLoc;->vecPathMatchInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, v2, Lcom/autonavi/gbl/map/layer/model/CarLoc;->vecPathMatchInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/map/layer/model/PathMatchInfo;

    iget-wide v5, v0, Lcom/autonavi/gbl/map/layer/model/PathMatchInfo;->longitude:D

    iget-object v0, v2, Lcom/autonavi/gbl/map/layer/model/CarLoc;->vecPathMatchInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/map/layer/model/PathMatchInfo;

    iget-wide v7, v0, Lcom/autonavi/gbl/map/layer/model/PathMatchInfo;->latitude:D

    invoke-virtual {v1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object v4

    const-wide/16 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/autonavi/gbl/map/OperatorPosture;->lonLatToScreen(DDD)Lcom/autonavi/gbl/map/model/PointD;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string v1, "MapController"

    const-string v2, "getCarPositionInScreen error {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getControllerStatesOperator(I)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/map/MapView;->getControllerStatesOperator(I)I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public getCurrentScale(I)I
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/map/MapScaleController;->getInstance()Lcom/autosdk/bussiness/map/MapScaleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/map/MapScaleController;->getScale()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->getCurrentScale(Lcom/autonavi/gbl/map/MapView;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMapDevice(Lcom/autonavi/gbl/map/MapView;)Lcom/autonavi/gbl/map/MapDevice;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getDeviceId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getDevice(I)Lcom/autonavi/gbl/map/MapDevice;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMapExtraCreateObserver()Lcom/autosdk/bussiness/map/observer/MapExtraCreateObserver;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraCreateObserver:Lcom/autosdk/bussiness/map/observer/MapExtraCreateObserver;

    return-object v0
.end method

.method public getMapExtraStyleObserver()Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraStyleObserver:Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

    return-object v0
.end method

.method public getMapMode(I)I
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getMapMode()I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getMapProjectionCenter(I)Lcom/autonavi/gbl/map/model/ProjectionCenter;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getMapProjectionCenter()Lcom/autonavi/gbl/map/model/ProjectionCenter;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMapService()Lcom/autonavi/gbl/map/MapService;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    return-object v0
.end method

.method public getMapView(I)Lcom/autonavi/gbl/map/MapView;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/map/MapService;

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getMaxScale(I)I
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->getMaxScale(Lcom/autonavi/gbl/map/MapView;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMinScale(I)I
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->getMinScale(Lcom/autonavi/gbl/map/MapView;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getPitchAngle()F
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/OperatorPosture;->getPitchAngle()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPreviewMode(I)Z
    .locals 5

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getCurrentSceneType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    move v1, p1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-wide/16 v2, 0x2710

    new-instance v0, Lf/h/b/i/o;

    invoke-direct {v0, v1}, Lf/h/b/i/o;-><init>(Z)V

    const-string v4, "MapController.getPreviewMode"

    invoke-static {v4, p1, v2, v3, v0}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z

    return v1
.end method

.method public getRender(II)I
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/map/MapService;->getDevice(I)Lcom/autonavi/gbl/map/MapDevice;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/autonavi/gbl/map/MapDevice;->getRenderFpsByMode(I)I

    move-result p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "MapController"

    const-string v0, "getRender: getRenderFpsByMode:renderType :{?} {?}"

    invoke-static {p1, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    :cond_0
    return v0
.end method

.method public getZoomLevel(I)F
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/autosdk/bussiness/map/MapController;->getZoomLevel(Lcom/autonavi/gbl/map/MapView;)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->getZoomLevel(Lcom/autonavi/gbl/map/MapView;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public goToDefaultPosition(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getInstance()Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    move-result-object p2

    new-instance v0, Lf/h/b/i/b;

    invoke-direct {v0, p0, p1}, Lf/h/b/i/b;-><init>(Lcom/autosdk/bussiness/map/MapController;I)V

    invoke-virtual {p2, v0}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->sendBizMessage(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "MapController"

    const-string v2, "goToDefaultPosition"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/autonavi/gbl/map/model/MapPositionParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/MapPositionParam;-><init>()V

    const-wide v1, -0x3f3c788000000000L    # -9999.0

    iput-wide v1, v0, Lcom/autonavi/gbl/map/model/MapPositionParam;->lon:D

    iput-wide v1, v0, Lcom/autonavi/gbl/map/model/MapPositionParam;->lat:D

    invoke-virtual {p1, v0, p2}, Lcom/autonavi/gbl/map/MapView;->goToPosition(Lcom/autonavi/gbl/map/model/MapPositionParam;Z)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/MapView;->resetTickCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hidePoiOn3DMovingAndSliding(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autosdk/bussiness/map/MapController;->hidePoiOn3DMoving(IZ)V

    invoke-direct {p0, p1, p2}, Lcom/autosdk/bussiness/map/MapController;->hidePoiOn3DSliding(IZ)V

    return-void
.end method

.method public init(Lcom/autosdk/bussiness/map/MapControllerInitParam;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autosdk/bussiness/map/MapControllerInitParam;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mStrDataPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/autosdk/bussiness/map/MapController;->initMapService(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const-string v2, "MapController"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "init SDK mapService is null"

    invoke-static {v2, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mSurfaceViewParamArrayList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "init SDK surfaceViewParamsArrayList is null"

    invoke-static {v2, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "SDK surfaceViewParamsArrayList is empty"

    invoke-static {v2, v3, p1, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getInstance()Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->init()V

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getBizLooper()Lcom/autosdk/bussiness/common/bizlooper/BizLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/common/bizlooper/BizLooper;->startForMap()Z

    :cond_3
    iget-object v1, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mSurfaceViewParamArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_5

    sget v2, Lcom/autosdk/bussiness/map/MapController;->SURFACEVIEW_MAX_COUNT:I

    if-ge v3, v2, :cond_5

    iget-object v2, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mSurfaceViewParamArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autosdk/bussiness/map/SurfaceViewParam;

    invoke-direct {p0, v2}, Lcom/autosdk/bussiness/map/MapController;->addSurfaceView(Lcom/autosdk/bussiness/map/SurfaceViewParam;)I

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public initExt(Lcom/autosdk/bussiness/map/MapControllerInitParam;)V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mExtraBizManager:Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;->getInstance()Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mExtraBizManager:Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;->init()V

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mExtraBizManager:Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;->getBizLooper()Lcom/autosdk/bussiness/common/bizlooper/ExtraBizLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/bizlooper/ExtraBizLooper;->startForMap()Z

    :cond_0
    iget-object v0, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mStrDataPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/autosdk/bussiness/map/MapController;->initMapService(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const-string v1, "MapController"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "initExt mapService is null"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mSurfaceViewParamArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "initExt SDK surfaceViewParamsArrayList is null"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "SDK surfaceViewParamsArrayList is empty"

    invoke-static {v1, v2, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p1, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mSurfaceViewParamArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->addSurfaceExtraView(Lcom/autosdk/bussiness/map/SurfaceViewParam;)I

    return-void
.end method

.method public initKld(Lcom/autosdk/bussiness/map/MapControllerInitParam;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autosdk/bussiness/map/MapControllerInitParam;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mStrDataPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/autosdk/bussiness/map/MapController;->initMapService(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const-string v2, "MapController"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "initKld SDK mapService is null"

    invoke-static {v2, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget-object v1, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mSurfaceViewParamArrayList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "initKld SDK surfaceViewParamsArrayList is null"

    invoke-static {v2, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "SDK surfaceViewParamsArrayList is empty"

    invoke-static {v2, v3, p1, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getInstance()Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->init()V

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getBizLooper()Lcom/autosdk/bussiness/common/bizlooper/BizLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/common/bizlooper/BizLooper;->startForMap()Z

    :cond_3
    iget-object p1, p1, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mSurfaceViewParamArrayList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->addKldSurfaceView(Lcom/autosdk/bussiness/map/SurfaceViewParam;)I

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public initKldBiz()V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getInstance()Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->init()V

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getBizLooper()Lcom/autosdk/bussiness/common/bizlooper/BizLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/bizlooper/BizLooper;->startForMap()Z

    :cond_0
    return-void
.end method

.method public initMapService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/bussiness/map/MapController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/autosdk/bussiness/map/MapController;->initMapService(Ljava/lang/String;)V

    return-void
.end method

.method public isZoomInEnable(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->getZoomLevel(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->getMaxScale(I)I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isZoomOutEnable(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->getZoomLevel(I)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/autosdk/bussiness/map/MapController;->getMinScale(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lockMapPitchAngle(Lcom/autonavi/gbl/map/MapView;Z)V
    .locals 1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lf/h/b/i/s;->a:Lf/h/b/i/s;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lf/h/b/i/m;

    invoke-direct {v0, p2}, Lf/h/b/i/m;-><init>(Z)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public lockMapRollAngle(Lcom/autonavi/gbl/map/MapView;Z)V
    .locals 1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lf/h/b/i/s;->a:Lf/h/b/i/s;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lf/h/b/i/e;

    invoke-direct {v0, p2}, Lf/h/b/i/e;-><init>(Z)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public mapZoomIn(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/autosdk/bussiness/map/MapController;->mapZoomIn(Lcom/autonavi/gbl/map/MapView;ZZ)V

    :cond_0
    return-void
.end method

.method public mapZoomOut(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/autosdk/bussiness/map/MapController;->mapZoomOut(Lcom/autonavi/gbl/map/MapView;ZZ)V

    :cond_0
    return-void
.end method

.method public refresh(I)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/map/MapView;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public removeGestureObserver(ILcom/autonavi/gbl/map/observer/IMapGestureObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/MapView;->removeGestureObserver(Lcom/autonavi/gbl/map/observer/IMapGestureObserver;)V

    :cond_0
    return-void
.end method

.method public removeMapEventObserver(ILcom/autonavi/gbl/map/observer/IMapEventObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/MapView;->removeMapEventObserver(Lcom/autonavi/gbl/map/observer/IMapEventObserver;)Z

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "MapController"

    const-string p2, "===Observer removeMapEventObserver -------- ret ={?}   mapEventObserver={?}"

    invoke-static {p1, p2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeMapViewObserver(ILcom/autonavi/gbl/map/observer/IMapviewObserver;)V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v1, "MapController"

    const-string v2, "removeMapViewObserver: mapViewObserver={?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/MapView;->removeMapviewObserver(Lcom/autonavi/gbl/map/observer/IMapviewObserver;)V

    :cond_0
    return-void
.end method

.method public removeSurfaceViewFromList(Lcom/autonavi/gbl/map/adapter/MapSurfaceView;)V
    .locals 4

    const-string v0, "MapController"

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p1, "removeSurfaceViewFromList success:{?}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "removeSurfaceViewFromList\u5f02\u5e38!!!"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public resetMapMode()V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapviewModeParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public set3Dobj(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(Lcom/autonavi/gbl/map/MapView;Z)V

    :cond_1
    return-void
.end method

.method public setBuildingNormal(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorBusiness;->showBuildingNormal(Z)V

    :cond_0
    return-void
.end method

.method public setBuildingTexture(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorBusiness;->showBuildingTexture(Z)V

    :cond_0
    return-void
.end method

.method public set3Dobj(Lcom/autonavi/gbl/map/MapView;Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorBusiness;->showBuilding3D(Z)V

    :cond_0
    return-void
.end method

.method public setBaseMapIconVisible(IIZ)V
    .locals 1
    .param p2    # I
        .annotation build Lcom/autonavi/gbl/map/layer/model/OpenLayerID$OpenLayerID1;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapIconVisible(Lcom/autonavi/gbl/map/MapView;IZ)V

    :cond_0
    return-void
.end method

.method public setBaseMapPOIVisible(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapPOIVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    :cond_0
    return-void
.end method

.method public setBaseMapRoadNameVisible(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapRoadNameVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    :cond_0
    return-void
.end method

.method public setBaseMapSample3DVisible(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapSample3DVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    :cond_0
    return-void
.end method

.method public setBaseMapSkyBoxVisible(ILcom/autonavi/gbl/map/model/MapSkyboxParam;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorBusiness;->setMapSkyboxParam(Lcom/autonavi/gbl/map/model/MapSkyboxParam;)Z

    :cond_0
    return-void
.end method

.method public setDynamicMapSkyBoxVisible(ILcom/autonavi/gbl/map/model/MsgDataDynamicSky;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorBusiness;->setDynamicSkyBox(Lcom/autonavi/gbl/map/model/MsgDataDynamicSky;)Z

    :cond_0
    return-void
.end method

.method public setExtraMapStyle(IZIZ)V
    .locals 1
    .param p3    # I
        .annotation build Lcom/autosdk/bussiness/map/MapController$EMapStyleStateType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(Lcom/autonavi/gbl/map/MapView;ZIZ)V

    :cond_0
    return-void
.end method

.method public setExtraMapStyle(Lcom/autonavi/gbl/map/MapView;ZIZ)V
    .locals 5
    .param p3    # I
        .annotation build Lcom/autosdk/bussiness/map/MapController$EMapStyleStateType;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    new-instance v0, Lcom/autonavi/gbl/map/model/MapStyleParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/MapStyleParam;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->mode:I

    iput p2, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->time:I

    iput-boolean p4, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->forceUpdate:Z

    const/4 p4, 0x2

    const-string v2, "MapController"

    const/4 v3, 0x1

    if-ne v3, p3, :cond_1

    new-array p3, v1, [Ljava/lang/Object;

    const-string v4, "setExtraMapStyle E_MAP_STYLE_STATE_TYPE_PLAN"

    invoke-static {v2, v4, p3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->state:I

    if-eqz p2, :cond_0

    const-string p2, "style_204_s"

    goto :goto_0

    :cond_0
    const-string p2, "style_203_s"

    :goto_0
    iput-object p2, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->style:Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-ne p4, p3, :cond_3

    new-array p3, v1, [Ljava/lang/Object;

    const-string v4, "setExtraMapStyle E_MAP_STYLE_STATE_TYPE_NAVI"

    invoke-static {v2, v4, p3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p3, 0x4

    iput p3, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->state:I

    if-eqz p2, :cond_2

    const-string p2, "style_210_s"

    goto :goto_0

    :cond_2
    const-string p2, "style_209_s"

    goto :goto_0

    :cond_3
    new-array p3, v1, [Ljava/lang/Object;

    const-string v4, "setExtraMapStyle MapModelConstants.MAP_MODE_SUBSTATE_NORMAL"

    invoke-static {v2, v4, p3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->state:I

    if-eqz p2, :cond_4

    const-string p2, "style_202_s"

    goto :goto_0

    :cond_4
    const-string p2, "style_201_s"

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object p2

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getEngineId()I

    move-result p3

    invoke-static {p3}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2SurfaceViewID(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/autosdk/bussiness/layer/LayerController;->clearPathsCacheStyle(I)V

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorStyle()Lcom/autonavi/gbl/map/OperatorStyle;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/autonavi/gbl/map/OperatorStyle;->setMapStyle(Lcom/autonavi/gbl/map/model/MapStyleParam;Z)Z

    move-result p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget p3, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->state:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    iget-object p3, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->style:Ljava/lang/String;

    aput-object p3, p2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, p4

    const-string p1, "setExtraMapStyle\uff08\uff09 styleParam state:{?} styleParam style :{?}, mapStyle:{?}"

    invoke-static {v2, p1, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public setMapBusinessDataPara(IILcom/autonavi/gbl/map/model/MapParameter;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/autonavi/gbl/map/OperatorBusiness;->setMapBusinessDataPara(ILcom/autonavi/gbl/map/model/MapParameter;)V

    :cond_0
    return-void
.end method

.method public setMapCenter(ILcom/autonavi/gbl/common/model/Coord3DDouble;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lf/h/b/i/c;

    invoke-direct {v1, p1}, Lf/h/b/i/c;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lf/h/b/i/r;->a:Lf/h/b/i/r;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lf/h/b/i/a;->a:Lf/h/b/i/a;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lf/h/b/i/n;

    invoke-direct {v0, p2}, Lf/h/b/i/n;-><init>(Lcom/autonavi/gbl/common/model/Coord3DDouble;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setMapExtraCreateObserver(Lcom/autosdk/bussiness/map/observer/MapExtraCreateObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraCreateObserver:Lcom/autosdk/bussiness/map/observer/MapExtraCreateObserver;

    return-void
.end method

.method public setMapExtraStyleObserver(Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/bussiness/map/MapController;->mapExtraStyleObserver:Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

    return-void
.end method

.method public setMapMode(ILcom/autonavi/gbl/map/model/MapviewModeParam;Z)V
    .locals 12

    # 仪表的缩放/俯仰以悬浮面板参数为准
    const/4 v0, 0x2

    if-ne p1, v0, :cond_keep_lane

    if-eqz p2, :cond_keep_lane

    const-string v0, "zoom"

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    const-string v0, "pitch"

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v0

    iput v0, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->pitchAngle:F

    :cond_keep_lane
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "MapController"

    const/4 v3, 0x1

    if-eq p1, v0, :cond_3

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    iget v6, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v6, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "setMapMode :{?},mapZoomLevel :{?} surfaceId:{?}"

    invoke-static {v2, v6, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->mapviewModeParams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v5, :cond_5

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v5

    if-eqz v5, :cond_5

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    iget v1, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "setMapMode1 :{?},mapZoomLevel :{?} surfaceId:{?}"

    invoke-static {v2, p1, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v5, p2, p3}, Lcom/autosdk/bussiness/map/MapController;->setMapviewModeParam(Lcom/autonavi/gbl/map/MapView;Lcom/autonavi/gbl/map/model/MapviewModeParam;Z)V

    invoke-virtual {v5, v3}, Lcom/autonavi/gbl/map/MapView;->resetTickCount(I)V

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/autosdk/bussiness/map/MapController;->isSameMapParam(ILcom/autonavi/gbl/map/model/MapviewModeParam;)Z

    move-result v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "setMapMode2 :{?} surfaceId:{?}"

    invoke-static {v2, v7, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_1

    iget-object v4, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v4, :cond_5

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v4

    if-eqz v4, :cond_5

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "setMapMode2 isSameMapParam:{?} surfaceId:{?}"

    invoke-static {v2, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v4, p2, p3}, Lcom/autosdk/bussiness/map/MapController;->setMapviewModeParam(Lcom/autonavi/gbl/map/MapView;Lcom/autonavi/gbl/map/model/MapviewModeParam;Z)V

    invoke-virtual {v4, v3}, Lcom/autonavi/gbl/map/MapView;->resetTickCount(I)V

    goto/16 :goto_2

    :cond_1
    iget-object v5, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/gbl/map/OperatorPosture;->getZoomLevel()F

    move-result v6

    iget v7, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    sub-float v8, v6, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_2

    invoke-virtual {v5}, Lcom/autonavi/gbl/map/MapView;->getMapMode()I

    move-result v8

    iget v9, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    if-eq v8, v9, :cond_5

    :cond_2
    iget-object v8, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v8, :cond_5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "setMapMode2 same zoomLevel:{?} {?} surfaceId:{?}"

    invoke-static {v2, p1, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_5

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/autosdk/bussiness/map/MapController;->mapviewModeParams:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "setMapMode :{?} SurfaceViewIDEx1"

    invoke-static {v2, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMapMode mapMode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    const-string v4, "null"

    goto :goto_1

    :cond_4
    iget v4, p2, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/autosdk/bussiness/map/MapController;->setMapviewModeParam(Lcom/autonavi/gbl/map/MapView;Lcom/autonavi/gbl/map/model/MapviewModeParam;Z)V

    invoke-virtual {p1, v3}, Lcom/autonavi/gbl/map/MapView;->resetTickCount(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setMapProjectionCenter(I)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {p0, p1, v0, v1}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFF)V

    return-void
.end method

.method public setMapProjectionCenter(IFF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFFF)V

    return-void
.end method

.method public setMapProjectionCenter(IFFF)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/autosdk/bussiness/map/MapController;->setProjectionCenterPercent(IFF)V

    invoke-virtual {v0, p3, p4}, Lcom/autonavi/gbl/map/MapView;->setCarPositionRatio(FF)I

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapView;->resetTickCount(I)V

    :cond_0
    return-void
.end method

.method public setMapStyle(IZIZ)V
    .locals 1
    .param p3    # I
        .annotation build Lcom/autosdk/bussiness/map/MapController$EMapStyleStateType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/autosdk/bussiness/map/MapController;->setMapStyle(Lcom/autonavi/gbl/map/MapView;ZIZ)V

    :cond_0
    return-void
.end method

.method public setMapStyle(Lcom/autonavi/gbl/map/MapView;ZIZ)V
    .locals 4
    .param p3    # I
        .annotation build Lcom/autosdk/bussiness/map/MapController$EMapStyleStateType;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    new-instance v0, Lcom/autonavi/gbl/map/model/MapStyleParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/MapStyleParam;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->mode:I

    iput p2, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->time:I

    iput-boolean p4, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->forceUpdate:Z

    const/4 p4, 0x2

    const/4 v2, 0x1

    if-ne v2, p3, :cond_0

    iput v2, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->state:I

    goto :goto_1

    :cond_0
    if-ne p4, p3, :cond_1

    const/4 p3, 0x4

    :goto_0
    iput p3, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->state:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne v3, p3, :cond_2

    const/16 p3, 0x16

    goto :goto_0

    :cond_2
    iput v1, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->state:I

    :goto_1
    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    iget p2, v0, Lcom/autonavi/gbl/map/model/MapStyleParam;->state:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    const-string p2, "MapController"

    const-string p4, "setMapStyle: styleParam time == {?}, state == {?}"

    invoke-static {p2, p4, p3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object p2

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getEngineId()I

    move-result p3

    invoke-static {p3}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2SurfaceViewID(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/autosdk/bussiness/layer/LayerController;->clearPathsCacheStyle(I)V

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorStyle()Lcom/autonavi/gbl/map/OperatorStyle;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/autonavi/gbl/map/OperatorStyle;->setMapStyle(Lcom/autonavi/gbl/map/model/MapStyleParam;Z)Z

    :cond_3
    return-void
.end method

.method public setMapStylePath(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "MapController"

    const-string v2, "setMapStylePath()====stylePath:{?}, surfaceViewID:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorStyle()Lcom/autonavi/gbl/map/OperatorStyle;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorStyle;->setMapStylePath(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setMapViewPort(ILcom/autonavi/gbl/map/model/MapViewPortParam;Z)V
    .locals 2

    iget-object p3, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v0, 0x0

    const-string v1, "MapController"

    if-nez p3, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "===setMapViewPort mapService is null"

    invoke-static {v1, p2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-nez p1, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "===setMapViewPort mapView is null"

    invoke-static {v1, p2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->getInstance()Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    move-result-object p3

    new-instance v0, Lf/h/b/i/h;

    invoke-direct {v0, p1, p2}, Lf/h/b/i/h;-><init>(Lcom/autonavi/gbl/map/MapView;Lcom/autonavi/gbl/map/model/MapViewPortParam;)V

    invoke-virtual {p3, v0}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->sendBizMessage(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setMapZoomScaleAdaptive(IIF)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/autonavi/gbl/map/OperatorBusiness;->setMapZoomScaleAdaptive(IIF)V

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    new-instance p3, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;

    invoke-direct {p3}, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;-><init>()V

    iput-wide p1, p3, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;->poiScale:D

    iput-wide p1, p3, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;->bgScale:D

    iput-wide p1, p3, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;->bubbleScale:D

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getLayerMgr()Lcom/autonavi/gbl/map/layer/LayerMgr;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/autonavi/gbl/map/layer/LayerMgr;->setAllPointLayerItemsScale(Lcom/autonavi/gbl/map/layer/model/ScaleInfo;)V

    :cond_1
    return-void
.end method

.method public setMaxZoomLevel(IF)V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorPosture;->setMaxZoomLevel(F)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorPosture;->setMaxZoomLevel(F)V

    :cond_1
    return-void
.end method

.method public setMinZoomLevel(IF)V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorPosture;->setMinZoomLevel(F)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/map/OperatorPosture;->setMinZoomLevel(F)V

    :cond_1
    return-void
.end method

.method public setNetworkType(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/autonavi/gbl/util/model/NetworkStatus$NetworkStatus1;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->setNetworkType(I)V

    :cond_0
    return-void
.end method

.method public setProjectionCenterPercent(IFF)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "MapController"

    const-string v2, "setProjectionCenterPercent: surfaceViewID == {?}, percentX == {?}, percentY == {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/autosdk/bussiness/common/utils/OperatorTool;->getCameraOption(I)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/autonavi/gbl/map/CameraOption;->setProjectionCenterPercent(FF)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/CameraOption;->commit()I

    return-void
.end method

.method public setRenderFpsByMode(III)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/map/MapService;->getDevice(I)Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p3}, Lcom/autonavi/gbl/map/MapDevice;->setRenderFpsByMode(II)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "MapController"

    const-string p2, "getRender: getRenderFpsByModem EGLDeviceID:{?} renderType :{?} {?}"

    invoke-static {p1, p2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setRollMode(I)V
    .locals 8

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/autosdk/bussiness/map/MapController;->getMapMode(I)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "MapController"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "setRollMode: mapMode: is error"

    invoke-static {v3, v7, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v4

    const-string p1, "setRollMode: surfaceViewID:{?},mapMode:{?}, rollAngleMode:{?}"

    invoke-static {v3, p1, v7}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/OperatorPosture;->cameraBuilder()Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/autonavi/gbl/map/CameraOption;->setRollMode(I)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/CameraOption;->commit()I

    :cond_2
    return-void
.end method

.method public setScreenModelEagle(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/observer/IEGLScreenshotObserver;)V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MapController"

    const-string v3, "ArHudMap setScreenModelEagle"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "ArHudMap setScreenModelEagle mapDevice null"

    invoke-static {v2, p2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isRPlatform()Z

    move-result v1

    const/16 v2, 0x96

    if-eqz v1, :cond_1

    const/16 v1, 0xc8

    const/16 v3, 0x190

    const/16 v4, 0x12c

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/autonavi/gbl/map/MapDevice;->setScreenshotRect(IIII)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xa0

    const/16 v3, 0x1e0

    invoke-virtual {p1, v1, v2, v3, v3}, Lcom/autonavi/gbl/map/MapDevice;->setScreenshotRect(IIII)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v1

    const/16 v3, 0x168

    const/16 v4, 0x258

    const/16 v5, 0x64

    invoke-virtual {p1, v5, v2, v4, v3}, Lcom/autonavi/gbl/map/MapDevice;->setScreenshotRect(IIII)I

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Lcom/autonavi/gbl/map/MapDevice;->setScreenshotMode(ILcom/autonavi/gbl/map/observer/IEGLScreenshotObserver;)I

    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/map/MapDevice;->setScreenshotCallBackMethod(I)I

    return-void
.end method

.method public setTmcVisible(IZ)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "MapController"

    const-string v2, "setTmcVisible\uff08\uff09 surfaceViewID:{?}, tmcVisible:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/autosdk/bussiness/map/MapController;->setTmcVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    :cond_0
    return-void
.end method

.method public setTmcVisible(Lcom/autonavi/gbl/map/MapView;Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getEngineId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "MapController"

    const-string v3, "setTmcVisible\uff08\uff09 EngineId:{?}, tmcVisible:{?}"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v2, p2, v2}, Lcom/autonavi/gbl/map/MapView;->setControllerStatesOperator(IIZ)Z

    :cond_0
    return-void
.end method

.method public setZoomLevel(IF)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "MapController"

    const-string v3, "setZoomLevel, level: {?}  surfaceViewID:{?}"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/autosdk/bussiness/map/MapController;->setZoomLevel(Lcom/autonavi/gbl/map/MapView;F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/autosdk/bussiness/map/MapController;->setZoomLevel(Lcom/autonavi/gbl/map/MapView;F)V

    :cond_1
    return-void
.end method

.method public showPreview(Lcom/autonavi/gbl/map/model/PreviewParam;ZII)V
    .locals 7

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    const/4 v1, 0x0

    const-string v2, "showPreviewTime:"

    const-string v3, "MapController"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autonavi/gbl/map/MapView;->showPreview(Lcom/autonavi/gbl/map/model/PreviewParam;ZII)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v4

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autonavi/gbl/map/MapView;->showPreview(Lcom/autonavi/gbl/map/model/PreviewParam;ZII)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v4

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public stopScreenModelEagle(Lcom/autonavi/gbl/map/MapDevice;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MapController"

    const-string v3, "ArHudMap stopScreenModelEagle"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/gbl/map/MapDevice;->setScreenshotMode(ILcom/autonavi/gbl/map/observer/IEGLScreenshotObserver;)I

    :cond_0
    return-void
.end method

.method public unBIndSurface(Lcom/autonavi/gbl/map/adapter/MapSurfaceView;)V
    .locals 3

    const-string v0, "MapController"

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->getDefaultDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->getMapService()Lcom/autonavi/gbl/map/MapService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->getDefaultDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/gbl/map/MapDevice;->detachSurfaceFromDevice()V

    iget-object v2, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p1, "\u4eea\u8868detachSurfaceFromDevice!!!!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "\u4eea\u8868\u9500\u6bc1Surface\u5f02\u5e38!!!"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public uninit()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MapController"

    const-string v3, "uninit"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/autosdk/bussiness/map/MapController;->clearMapViewObservers()V

    invoke-direct {p0}, Lcom/autosdk/bussiness/map/MapController;->clearMapGestureObservers()V

    invoke-direct {p0}, Lcom/autosdk/bussiness/map/MapController;->clearTextTextureObservers()V

    invoke-direct {p0}, Lcom/autosdk/bussiness/map/MapController;->clearDeviceObservers()V

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    if-eqz v1, :cond_0

    new-instance v2, Lf/h/b/i/g;

    invoke-direct {v2, p0}, Lf/h/b/i/g;-><init>(Lcom/autosdk/bussiness/map/MapController;)V

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->sendBizMessage(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mBizManager:Lcom/autosdk/bussiness/common/bizlooper/BizManager;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/common/bizlooper/BizManager;->unInit()V

    :cond_0
    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mExtraBizManager:Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;

    if-eqz v1, :cond_1

    new-instance v2, Lf/h/b/i/d;

    invoke-direct {v2, p0}, Lf/h/b/i/d;-><init>(Lcom/autosdk/bussiness/map/MapController;)V

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;->sendBizMessage(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mExtraBizManager:Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/common/bizlooper/ExtraBizManager;->unInit()V

    :cond_1
    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v2, v3}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->setDefaultDevice(Lcom/autonavi/gbl/map/MapDevice;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->initMapResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v0, :cond_3

    iput-object v3, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    :cond_3
    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v0, :cond_4

    iput-object v3, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    :cond_4
    return-void
.end method

.method public uninit4UseNewInit()V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/map/MapController;->mapSurfaceViewArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public updateLockMainMapRollAngle(Z)V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autosdk/bussiness/map/MapController;->getMapMode(I)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/autosdk/bussiness/map/MapController;->getPreviewMode(I)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-direct {p0}, Lcom/autosdk/bussiness/map/MapController;->isMainMapRollAngleLocked()Z

    move-result v4

    if-ne v4, p1, :cond_2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v1, "MapController"

    const-string v3, "updateLockMainMapRollAngle: mode == {?}, unLock == {?}"

    invoke-static {v1, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mainMapView:Lcom/autonavi/gbl/map/MapView;

    if-eqz v1, :cond_1

    :goto_1
    xor-int/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/autosdk/bussiness/map/MapController;->lockMapRollAngle(Lcom/autonavi/gbl/map/MapView;Z)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/autosdk/bussiness/map/MapController;->mapService:Lcom/autonavi/gbl/map/MapService;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/MapService;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
