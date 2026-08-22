.class public Lcom/autosdk/bussiness/kld/KldDisplayController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autosdk/bussiness/kld/KldDisplayController$KldDisplayHolder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "KldDisplayController"


# instance fields
.field private mChannelMsgTransfer:Lcom/autosdk/bussiness/kld/observer/MultiChannelMsgTransfer;

.field private mContext:Landroid/content/Context;

.field private mKldDisplayParam:Lcom/autosdk/bussiness/kld/KldDisplayParam;

.field public mKldMessageController:Lcom/autosdk/bussiness/kld/listener/IKldMessagerController;

.field private mKldRRListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autosdk/bussiness/kld/listener/IKldRouteResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiChannelService:Lcom/autonavi/gbl/consis/ChannelService;

.field private mMultiDisplayService:Lcom/autonavi/gbl/multi/display/MultiDisplayService;

.field private multiDevice:Lcom/autonavi/gbl/map/MapDevice;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mKldRRListenerList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autosdk/bussiness/kld/KldDisplayController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/bussiness/kld/KldDisplayController;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/autosdk/bussiness/kld/KldDisplayController;)Lcom/autonavi/gbl/map/MapDevice;
    .locals 0

    iget-object p0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->multiDevice:Lcom/autonavi/gbl/map/MapDevice;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/autosdk/bussiness/kld/KldDisplayController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/autosdk/bussiness/kld/KldDisplayController;
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/kld/KldDisplayController$KldDisplayHolder;->access$100()Lcom/autosdk/bussiness/kld/KldDisplayController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addKldRouteResultListener(Lcom/autosdk/bussiness/kld/listener/IKldRouteResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mKldRRListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachSurface(ILcom/autonavi/gbl/map/model/EGLSurfaceAttr;)V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiDisplayService:Lcom/autonavi/gbl/multi/display/MultiDisplayService;

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/gbl/multi/display/MultiDisplayService;->getDisplay(J)Lcom/autonavi/gbl/multi/display/Display;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getMapDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/map/MapDevice;->attachSurfaceToDevice(Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;)I

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getMapDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapDevice;->renderResume()V

    return-void
.end method

.method public clearKldRouteResultListener(Lcom/autosdk/bussiness/kld/listener/IKldRouteResultListener;)V
    .locals 0

    iget-object p1, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mKldRRListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public createDisplay(Lcom/autosdk/bussiness/map/SurfaceViewParam;)Lcom/autonavi/gbl/multi/display/Display;
    .locals 5

    new-instance v0, Lcom/autonavi/gbl/multi/display/model/DisplayAttribute;

    invoke-direct {v0}, Lcom/autonavi/gbl/multi/display/model/DisplayAttribute;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/autonavi/gbl/multi/display/model/DisplayAttribute;->displayId:J

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/autonavi/gbl/multi/display/model/DisplayAttribute;->x:J

    iput-wide v2, v0, Lcom/autonavi/gbl/multi/display/model/DisplayAttribute;->y:J

    iget-wide v2, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->screenWidth:J

    iput-wide v2, v0, Lcom/autonavi/gbl/multi/display/model/DisplayAttribute;->width:J

    iget-wide v2, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->screenHeight:J

    iput-wide v2, v0, Lcom/autonavi/gbl/multi/display/model/DisplayAttribute;->height:J

    sget-boolean v2, Lcom/autosdk/bussiness/settings/SettingConstant;->is3DMap:Z

    if-eqz v2, :cond_0

    const-string v2, "mapprofile_fa1"

    goto :goto_0

    :cond_0
    const-string v2, "mapprofile_fa2"

    :goto_0
    iput-object v2, v0, Lcom/autonavi/gbl/multi/display/model/DisplayAttribute;->mapProfileName:Ljava/lang/String;

    new-instance v2, Lcom/autonavi/gbl/map/model/DeviceAttribute;

    invoke-direct {v2}, Lcom/autonavi/gbl/map/model/DeviceAttribute;-><init>()V

    iput v1, v2, Lcom/autonavi/gbl/map/model/DeviceAttribute;->renderVendorType:I

    iput-boolean v1, v2, Lcom/autonavi/gbl/map/model/DeviceAttribute;->isNeedAntialias:Z

    const/4 v1, 0x4

    iput v1, v2, Lcom/autonavi/gbl/map/model/DeviceAttribute;->samples:I

    const/16 v1, 0x7d0

    iput v1, v2, Lcom/autonavi/gbl/map/model/DeviceAttribute;->maxVideoMemory:I

    new-instance v1, Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;

    invoke-direct {v1}, Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;-><init>()V

    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;->display:J

    iget-object v3, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/gbl/map/adapter/MapHelper;->getWindowFromSurface(Landroid/view/Surface;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;->nativeWindow:J

    iget-wide v3, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->screenWidth:J

    long-to-int v3, v3

    iput v3, v1, Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;->width:I

    iget-wide v3, p1, Lcom/autosdk/bussiness/map/SurfaceViewParam;->screenHeight:J

    long-to-int p1, v3

    iput p1, v1, Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;->height:I

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;->isNeedAttach:Z

    new-instance v3, Lcom/autonavi/gbl/multi/display/model/DisplayCreateParam;

    invoke-direct {v3}, Lcom/autonavi/gbl/multi/display/model/DisplayCreateParam;-><init>()V

    invoke-virtual {v3, p1}, Lcom/autonavi/gbl/multi/display/model/DisplayCreateParam;->setDisplayType(I)V

    invoke-virtual {v3, v2}, Lcom/autonavi/gbl/multi/display/model/DisplayCreateParam;->setDeviceAttribute(Lcom/autonavi/gbl/map/model/DeviceAttribute;)V

    invoke-virtual {v3, v0}, Lcom/autonavi/gbl/multi/display/model/DisplayCreateParam;->setDisplayAttribute(Lcom/autonavi/gbl/multi/display/model/DisplayAttribute;)V

    invoke-virtual {v3, v1}, Lcom/autonavi/gbl/multi/display/model/DisplayCreateParam;->setSurfaceAttribute(Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;)V

    new-instance p1, Lcom/autosdk/bussiness/kld/KldDisplayController$1;

    invoke-direct {p1, p0}, Lcom/autosdk/bussiness/kld/KldDisplayController$1;-><init>(Lcom/autosdk/bussiness/kld/KldDisplayController;)V

    invoke-virtual {v3, p1}, Lcom/autonavi/gbl/multi/display/model/DisplayCreateParam;->setMapviewProxy(Lcom/autonavi/gbl/map/observer/IBLMapViewProxy;)V

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Lcom/autonavi/gbl/multi/display/model/DisplayCreateParam;->setDisplayObserver(Lcom/autonavi/gbl/multi/display/observer/IMapDisplayObserver;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiDisplayService:Lcom/autonavi/gbl/multi/display/MultiDisplayService;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/autonavi/gbl/multi/display/MultiDisplayService;->createDisplay(Lcom/autonavi/gbl/multi/display/model/DisplayCreateParam;)Lcom/autonavi/gbl/multi/display/Display;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public createKldDisplay(Lcom/autosdk/bussiness/map/SurfaceViewParam;ZI)Lcom/autonavi/gbl/multi/display/Display;
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/autosdk/bussiness/kld/KldDisplayController;->createDisplay(Lcom/autosdk/bussiness/map/SurfaceViewParam;)Lcom/autonavi/gbl/multi/display/Display;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    sget-object p1, Lcom/autosdk/bussiness/kld/KldDisplayController;->TAG:Ljava/lang/String;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "====kld createKldDisplay kldDisplay is null"

    invoke-static {p1, v0, p3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getId()I

    move-result p2

    sget-object v0, Lcom/autosdk/bussiness/kld/KldDisplayController;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p3

    const-string p2, "====kld createKldDisplay displayId ="

    invoke-static {v0, p2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/autosdk/bussiness/kld/KldDisplayController;->setMapStyle(Lcom/autonavi/gbl/multi/display/Display;)V

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getMapDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object p2

    iput-object p2, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->multiDevice:Lcom/autonavi/gbl/map/MapDevice;

    return-object p1
.end method

.method public getChannelMsgTransfer()Lcom/autosdk/bussiness/kld/observer/MultiChannelMsgTransfer;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mChannelMsgTransfer:Lcom/autosdk/bussiness/kld/observer/MultiChannelMsgTransfer;

    return-object v0
.end method

.method public getKldDisplay(I)Lcom/autonavi/gbl/multi/display/Display;
    .locals 2

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result p1

    int-to-long v0, p1

    iget-object p1, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiDisplayService:Lcom/autonavi/gbl/multi/display/MultiDisplayService;

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/gbl/multi/display/MultiDisplayService;->getDisplay(J)Lcom/autonavi/gbl/multi/display/Display;

    move-result-object p1

    return-object p1
.end method

.method public getKldDisplayParam()Lcom/autosdk/bussiness/kld/KldDisplayParam;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mKldDisplayParam:Lcom/autosdk/bussiness/kld/KldDisplayParam;

    return-object v0
.end method

.method public getKldRRListenerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autosdk/bussiness/kld/listener/IKldRouteResultListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mKldRRListenerList:Ljava/util/List;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/autosdk/bussiness/kld/KldDisplayParam;Lcom/autosdk/bussiness/kld/listener/IKldMessagerController;)Z
    .locals 3

    iput-object p1, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mKldMessageController:Lcom/autosdk/bussiness/kld/listener/IKldMessagerController;

    iput-object p2, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mKldDisplayParam:Lcom/autosdk/bussiness/kld/KldDisplayParam;

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object p1

    const/16 p3, 0x1d

    invoke-virtual {p1, p3}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/multi/display/MultiDisplayService;

    iput-object p1, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiDisplayService:Lcom/autonavi/gbl/multi/display/MultiDisplayService;

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object p1

    const/16 p3, 0x25

    invoke-virtual {p1, p3}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/consis/ChannelService;

    iput-object p1, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiChannelService:Lcom/autonavi/gbl/consis/ChannelService;

    iget-object p1, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiDisplayService:Lcom/autonavi/gbl/multi/display/MultiDisplayService;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/autosdk/bussiness/kld/KldDisplayController;->TAG:Ljava/lang/String;

    new-array p2, p3, [Ljava/lang/Object;

    const-string v0, "====kld init ChannelService is null"

    invoke-static {p1, v0, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    :cond_0
    sget-object p1, Lcom/autosdk/bussiness/kld/KldDisplayController;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p2, Lcom/autosdk/bussiness/kld/KldDisplayParam;->host:Ljava/lang/String;

    aput-object v1, v0, p3

    iget v1, p2, Lcom/autosdk/bussiness/kld/KldDisplayParam;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "====kld init kldDisplayParam.host = {?}, port = {?}"

    invoke-static {p1, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/autonavi/gbl/consis/model/ChannelInitParam;

    invoke-direct {p1}, Lcom/autonavi/gbl/consis/model/ChannelInitParam;-><init>()V

    iget-boolean v0, p2, Lcom/autosdk/bussiness/kld/KldDisplayParam;->isMaster:Z

    iput-boolean v0, p1, Lcom/autonavi/gbl/consis/model/ChannelInitParam;->isMaster:Z

    iput-boolean v2, p1, Lcom/autonavi/gbl/consis/model/ChannelInitParam;->useInnerChannel:Z

    iget-object v0, p2, Lcom/autosdk/bussiness/kld/KldDisplayParam;->host:Ljava/lang/String;

    iput-object v0, p1, Lcom/autonavi/gbl/consis/model/ChannelInitParam;->host:Ljava/lang/String;

    iget v0, p2, Lcom/autosdk/bussiness/kld/KldDisplayParam;->port:I

    iput v0, p1, Lcom/autonavi/gbl/consis/model/ChannelInitParam;->port:I

    iput-boolean v2, p1, Lcom/autonavi/gbl/consis/model/ChannelInitParam;->enableConsis:Z

    iget-object p2, p2, Lcom/autosdk/bussiness/kld/KldDisplayParam;->sdkName:Ljava/lang/String;

    iput-object p2, p1, Lcom/autonavi/gbl/consis/model/ChannelInitParam;->localSdkName:Ljava/lang/String;

    iget-object p2, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiChannelService:Lcom/autonavi/gbl/consis/ChannelService;

    invoke-virtual {p2, p1}, Lcom/autonavi/gbl/consis/ChannelService;->init(Lcom/autonavi/gbl/consis/model/ChannelInitParam;)I

    move-result p1

    iget-object p2, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mKldMessageController:Lcom/autosdk/bussiness/kld/listener/IKldMessagerController;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiChannelService:Lcom/autonavi/gbl/consis/ChannelService;

    invoke-interface {p2, v0}, Lcom/autosdk/bussiness/kld/listener/IKldMessagerController;->bindKldChannelService(Lcom/autonavi/gbl/consis/ChannelService;)V

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/kld/KldNaviComponent;->getInstance()Lcom/autosdk/bussiness/kld/KldNaviComponent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autosdk/bussiness/kld/KldNaviComponent;->init()V

    if-nez p1, :cond_2

    move p3, v2

    :cond_2
    return p3
.end method

.method public removeKldRouteResultListener(Lcom/autosdk/bussiness/kld/listener/IKldRouteResultListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mKldRRListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMapStyle(Lcom/autonavi/gbl/multi/display/Display;)V
    .locals 6

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getMapView()Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/autosdk/bussiness/map/MapController;->setMapStyle(Lcom/autonavi/gbl/map/MapView;ZIZ)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2SurfaceViewID(I)I

    move-result v2

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v1, v2, v5}, Lcom/autosdk/bussiness/map/MapController;->setZoomLevel(IF)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-static {}, Lcom/autosdk/bussiness/settings/Settings;->getInstance()Lcom/autosdk/bussiness/settings/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/settings/Settings;->getConfigKeyRoadEvent()I

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/autosdk/bussiness/map/MapController;->setTmcVisible(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2SurfaceViewID(I)I

    move-result v2

    const/16 v5, 0x232d

    invoke-virtual {v1, v2, v5, v3}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapIconVisible(IIZ)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2SurfaceViewID(I)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapPOIVisible(IZ)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2SurfaceViewID(I)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapSample3DVisible(IZ)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-static {}, Lcom/autosdk/bussiness/settings/SettingsByd;->getInstance()Lcom/autosdk/bussiness/settings/SettingsByd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/settings/SettingsByd;->getBydConfigKeyPerformance()I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v1, v0, v3}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/map/BuildingPref;->getShow()Z

    move-result v2

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/autonavi/gbl/map/OperatorBusiness;->showBuildingNormal(Z)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getId()I

    move-result v2

    invoke-static {v2}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2SurfaceViewID(I)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapRoadNameVisible(IZ)V

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getMapDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v1

    new-instance v2, Lcom/autosdk/bussiness/map/observer/MapViewObserver;

    invoke-direct {v2, v1, v0}, Lcom/autosdk/bussiness/map/observer/MapViewObserver;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    invoke-virtual {v0, v2}, Lcom/autonavi/gbl/map/MapView;->addMapviewObserver(Lcom/autonavi/gbl/map/observer/IMapviewObserver;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getId()I

    move-result v5

    invoke-static {v5}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2SurfaceViewID(I)I

    move-result v5

    invoke-virtual {v3, v5, v2}, Lcom/autosdk/bussiness/map/MapController;->addMapViewObserver(ILcom/autonavi/gbl/map/observer/IMapviewObserver;)Z

    new-instance v2, Lcom/autosdk/bussiness/map/observer/MapGestureObserver;

    invoke-direct {v2, v1, v0}, Lcom/autosdk/bussiness/map/observer/MapGestureObserver;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    invoke-virtual {v0, v2}, Lcom/autonavi/gbl/map/MapView;->addGestureObserver(Lcom/autonavi/gbl/map/observer/IMapGestureObserver;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v3

    invoke-virtual {p1}, Lcom/autonavi/gbl/multi/display/Display;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2SurfaceViewID(I)I

    move-result p1

    invoke-virtual {v3, p1, v2}, Lcom/autosdk/bussiness/map/MapController;->addGestureObserver(ILcom/autonavi/gbl/map/observer/IMapGestureObserver;)V

    new-instance p1, Lcom/autosdk/bussiness/map/observer/TextTextureObserver;

    invoke-direct {p1, v1, v0}, Lcom/autosdk/bussiness/map/observer/TextTextureObserver;-><init>(Lcom/autonavi/gbl/map/MapDevice;Lcom/autonavi/gbl/map/MapView;)V

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/MapView;->setTextTextureObserver(Lcom/autonavi/gbl/map/observer/ITextTextureObserver;)V

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorGesture()Lcom/autonavi/gbl/map/OperatorGesture;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/autonavi/gbl/map/OperatorGesture;->enableSliding(Z)V

    return-void
.end method

.method public uninit()V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiDisplayService:Lcom/autonavi/gbl/multi/display/MultiDisplayService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mKldDisplayParam:Lcom/autosdk/bussiness/kld/KldDisplayParam;

    iget v1, v1, Lcom/autosdk/bussiness/kld/KldDisplayParam;->surfaceViewID:I

    invoke-virtual {p0, v1}, Lcom/autosdk/bussiness/kld/KldDisplayController;->getKldDisplay(I)Lcom/autonavi/gbl/multi/display/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/multi/display/MultiDisplayService;->destroyDisplay(Lcom/autonavi/gbl/multi/display/Display;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiDisplayService:Lcom/autonavi/gbl/multi/display/MultiDisplayService;

    iput-object v0, p0, Lcom/autosdk/bussiness/kld/KldDisplayController;->mMultiChannelService:Lcom/autonavi/gbl/consis/ChannelService;

    return-void
.end method
