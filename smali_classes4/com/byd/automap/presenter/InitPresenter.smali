.class public Lcom/byd/automap/presenter/InitPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autosdk/bussiness/manager/IPlatformDepends;
.implements Lcom/autonavi/gbl/activation/observer/INetActivateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/automap/presenter/InitPresenter$d;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InitPresenter"


# instance fields
.field private final baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

.field private initBL:I

.field private initBaseLibs:I

.field private initUser:Z

.field private initVehicle:Z

.field private isInitKldService:Z

.field private isInitSdk:Z

.field private final mContext:Landroid/app/Application;

.field private mSceneModuleService:Lcom/autonavi/gbl/scene/SceneModuleService;

.field private mUserLoginByBluetoothObserver:Lcom/autosdk/user/observed/UserLoginByBluetoothObserver;

.field private final md5VerifyNum:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    new-instance v0, Lcom/autosdk/bussiness/manager/SDKInitParams;

    invoke-direct {v0}, Lcom/autosdk/bussiness/manager/SDKInitParams;-><init>()V

    iput-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->md5VerifyNum:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    iput v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initBaseLibs:I

    iput v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initBL:I

    iput-boolean v1, p0, Lcom/byd/automap/presenter/InitPresenter;->initUser:Z

    iput-boolean v1, p0, Lcom/byd/automap/presenter/InitPresenter;->isInitSdk:Z

    iput-boolean v1, p0, Lcom/byd/automap/presenter/InitPresenter;->isInitKldService:Z

    iput-boolean v1, p0, Lcom/byd/automap/presenter/InitPresenter;->initVehicle:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byd/automap/presenter/InitPresenter$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lcom/byd/automap/presenter/InitPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;->initGeoFenceRenderService()V

    return-void
.end method

.method private getDynamicInitParam(I)Lcom/autonavi/gbl/layer/model/DynamicInitParam;
    .locals 3

    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;->getInitStyleDSLBean()Lcom/autosdk/bussiness/layer/bean/InitStyleDSLBean;

    move-result-object v0

    invoke-static {v0}, Lcom/autosdk/bussiness/common/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/autonavi/gbl/layer/model/DynamicInitParam;

    invoke-direct {v1}, Lcom/autonavi/gbl/layer/model/DynamicInitParam;-><init>()V

    invoke-virtual {v1, v0}, Lcom/autonavi/gbl/layer/model/DynamicInitParam;->setInitStyleDSL(Ljava/lang/String;)V

    new-instance v0, Lcom/autosdk/layerstyle/DynamicLayerParamImpl;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-direct {v0, p1, v2}, Lcom/autosdk/layerstyle/DynamicLayerParamImpl;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/autonavi/gbl/layer/model/DynamicInitParam;->setDynamicAdapter(Lcom/autonavi/gbl/layer/observer/IBizDynamicAdapter;)V

    return-object v1
.end method

.method private getInitStyleDSLBean()Lcom/autosdk/bussiness/layer/bean/InitStyleDSLBean;
    .locals 5

    new-instance v0, Lcom/autosdk/bussiness/layer/bean/InitStyleDSLBean;

    invoke-direct {v0}, Lcom/autosdk/bussiness/layer/bean/InitStyleDSLBean;-><init>()V

    const-string v1, "/android_assets/blRes/LayerAsset/"

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/bean/InitStyleDSLBean;->setAssetPath(Ljava/lang/String;)V

    const-string v1, "libcmb_LayerImages.so"

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/bean/InitStyleDSLBean;->setCmbName(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/autosdk/bussiness/layer/bean/FontBean;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lf/h/c/v;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "SDK_Font-Medium.ttf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SDK_Font-Medium"

    invoke-direct {v2, v3, v4}, Lcom/autosdk/bussiness/layer/bean/FontBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/bean/InitStyleDSLBean;->setFontList(Ljava/util/List;)V

    return-object v0
.end method

.method public static getInstance()Lcom/byd/automap/presenter/InitPresenter;
    .locals 1

    invoke-static {}, Lcom/byd/automap/presenter/InitPresenter$d;->a()Lcom/byd/automap/presenter/InitPresenter;

    move-result-object v0

    return-object v0
.end method

.method private getKldDisplayParam()Lcom/autosdk/bussiness/kld/KldDisplayParam;
    .locals 4

    new-instance v0, Lcom/autosdk/bussiness/kld/KldDisplayParam;

    invoke-direct {v0}, Lcom/autosdk/bussiness/kld/KldDisplayParam;-><init>()V

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/n0/p2;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====kld host = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "kld"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v0, Lcom/autosdk/bussiness/kld/KldDisplayParam;->host:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/autosdk/bussiness/kld/KldDisplayParam;->surfaceViewID:I

    const v2, 0xcb84

    iput v2, v0, Lcom/autosdk/bussiness/kld/KldDisplayParam;->port:I

    iput-boolean v1, v0, Lcom/autosdk/bussiness/kld/KldDisplayParam;->useInnerChannel:Z

    iput-boolean v1, v0, Lcom/autosdk/bussiness/kld/KldDisplayParam;->enableConsis:Z

    return-object v0
.end method

.method private getMapDataMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private initGeoFenceRenderService()V
    .locals 3

    invoke-static {}, Lcom/autosdk/bussiness/geofence/GeoFenceController;->getInstance()Lcom/autosdk/bussiness/geofence/GeoFenceController;

    move-result-object v0

    iget v0, v0, Lcom/autosdk/bussiness/geofence/GeoFenceController;->success:I

    const/4 v1, 0x0

    const-string v2, "InitPresenter"

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;->startGeoFenceRender()V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "init GeoFenceRenderService"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "init GeoFenceService fail reInit"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/geofence/GeoFenceController;->getInstance()Lcom/autosdk/bussiness/geofence/GeoFenceController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/geofence/GeoFenceController;->initService(I)V

    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;->startGeoFenceRender()V

    :goto_0
    return-void
.end method

.method private initParam()V
    .locals 3

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/LogControlerUtil;->getInstance()Lcom/autosdk/bussiness/common/utils/LogControlerUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/autosdk/bussiness/common/utils/LogControlerUtil;->isInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/LogControlerUtil;->getInstance()Lcom/autosdk/bussiness/common/utils/LogControlerUtil;

    move-result-object v0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/common/utils/LogControlerUtil;->init(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lf/h/c/v;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->logPath:Ljava/lang/String;

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/LogControlerUtil;->getInstance()Lcom/autosdk/bussiness/common/utils/LogControlerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/utils/LogControlerUtil;->isLogHighPlus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    sget-wide v1, Lcom/autonavi/gbl/servicemanager/model/ALCLogLevel;->LogLevelVerbose:J

    :goto_0
    iput-wide v1, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->logLevel:J

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/common/utils/LogControlerUtil;->getInstance()Lcom/autosdk/bussiness/common/utils/LogControlerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/utils/LogControlerUtil;->isLogHigh()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    sget-wide v1, Lcom/autonavi/gbl/servicemanager/model/ALCLogLevel;->LogLevelDebug:J

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/common/utils/LogControlerUtil;->getInstance()Lcom/autosdk/bussiness/common/utils/LogControlerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/common/utils/LogControlerUtil;->isLogLow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    sget-wide v1, Lcom/autonavi/gbl/servicemanager/model/ALCLogLevel;->LogLevelInfo:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    sget-wide v1, Lcom/autonavi/gbl/servicemanager/model/ALCLogLevel;->LogLevelNone:J

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->cookieDBPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/v;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->restConfigPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/v;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->cfgFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lf/h/c/v;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->offlinePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/v;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->onlinePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/v;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->lndsOfflinePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->bSDKLogcat:Z

    invoke-static {}, Lf/h/c/v;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->assertPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v2, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v2}, Lf/h/c/v;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->cachePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v2, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v2}, Lf/h/c/v;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->userDataPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v2, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v2}, Lf/h/c/v;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->syncPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v2, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v2}, Lf/h/c/v;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->forecastPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v2, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v2}, Lf/h/c/v;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->msgPushPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initParam:chedao "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v2, v2, Lcom/autosdk/bussiness/manager/SDKInitParams;->cachePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "InitPresenter"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lf/h/c/v;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lf/h/c/n0/y1;->c(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v0, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->offlinePath:Ljava/lang/String;

    invoke-static {v0}, Lf/h/c/n0/y1;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    iget-object v0, v0, Lcom/autosdk/bussiness/manager/SDKInitParams;->onlinePath:Ljava/lang/String;

    invoke-static {v0}, Lf/h/c/n0/y1;->b(Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lf/h/c/v;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "commsocket.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/h/c/n0/y1;->d(Ljava/lang/String;)Z

    return-void
.end method

.method private initTtsPlayMuteStatus()V
    .locals 4

    invoke-static {}, Lf/h/c/j0/j0;->c()Lf/h/c/j0/j0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/j0;->d()I

    move-result v0

    sget v1, Lf/h/c/j0/j0;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "InitPresenter"

    const-string v3, "initTtsPlayMuteStatus: muteState is {?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/j0/j0;->c()Lf/h/c/j0/j0;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v0, Lf/h/c/j0/j0;->c:I

    goto :goto_1

    :cond_1
    sget v0, Lf/h/c/j0/j0;->d:I

    :goto_1
    invoke-virtual {v1, v0}, Lf/h/c/j0/j0;->f(I)V

    return-void
.end method

.method private initUserLoginByBluetoothObserver()V
    .locals 3

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/user/UserController;->getAccountModel()Lcom/autosdk/bussiness/user/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/autosdk/user/observed/UserLoginByBluetoothObserver;

    invoke-direct {v1}, Lcom/autosdk/user/observed/UserLoginByBluetoothObserver;-><init>()V

    iput-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mUserLoginByBluetoothObserver:Lcom/autosdk/user/observed/UserLoginByBluetoothObserver;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/user/model/AccountModel;->addObserver(Lcom/autonavi/gbl/user/account/observer/IAccountServiceObserver;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InitPresenter"

    const-string v2, "initUserLoginByBluetoothObserver: accountModel is null..."

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$copyAssetsFiles$0(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "a0"

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lf/h/c/n0/g1;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private removeBluetoothAccountLoginObserver()V
    .locals 3

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->mUserLoginByBluetoothObserver:Lcom/autosdk/user/observed/UserLoginByBluetoothObserver;

    const/4 v1, 0x0

    const-string v2, "InitPresenter"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/user/UserController;->getAccountModel()Lcom/autosdk/bussiness/user/model/AccountModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mUserLoginByBluetoothObserver:Lcom/autosdk/user/observed/UserLoginByBluetoothObserver;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/user/model/AccountModel;->removeObserver(Lcom/autonavi/gbl/user/account/observer/IAccountServiceObserver;)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "removeBluetoothAccountLoginObserver: accountModel is null..."

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "removeBluetoothAccountLoginObserver: mUserLoginByBluetoothObserver is null..."

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private startGeoFenceRender()V
    .locals 6

    invoke-static {}, Lcom/autosdk/bussiness/geofence/GeoFenceController;->getInstance()Lcom/autosdk/bussiness/geofence/GeoFenceController;

    move-result-object v0

    iget-object v0, v0, Lcom/autosdk/bussiness/geofence/GeoFenceController;->mGeoFenceService:Lcom/autonavi/gbl/geofence/GeoFenceService;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/geofence/GeoFenceController;->getInstance()Lcom/autosdk/bussiness/geofence/GeoFenceController;

    move-result-object v0

    iget v0, v0, Lcom/autosdk/bussiness/geofence/GeoFenceController;->success:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/geofence/GeoFenceController;->getInstance()Lcom/autosdk/bussiness/geofence/GeoFenceController;

    move-result-object v0

    iget-object v0, v0, Lcom/autosdk/bussiness/geofence/GeoFenceController;->mGeoFenceService:Lcom/autonavi/gbl/geofence/GeoFenceService;

    invoke-virtual {v0, v1, v1}, Lcom/autonavi/gbl/geofence/GeoFenceService;->enable(IZ)V

    new-instance v0, Lcom/autonavi/gbl/map/layer/model/LayerScale;

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/autonavi/gbl/map/layer/model/LayerScale;-><init>(DD)V

    new-instance v2, Lcom/autonavi/gbl/geofence/model/GeoFenceLayerParam;

    const v3, 0x493e0

    const/16 v4, 0x64

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/autonavi/gbl/geofence/model/GeoFenceLayerParam;-><init>(ILcom/autonavi/gbl/map/layer/model/LayerScale;ILjava/util/ArrayList;)V

    invoke-static {}, Lcom/autosdk/bussiness/geofence/GeoFenceController;->getInstance()Lcom/autosdk/bussiness/geofence/GeoFenceController;

    move-result-object v0

    iget-object v0, v0, Lcom/autosdk/bussiness/geofence/GeoFenceController;->mGeoFenceService:Lcom/autonavi/gbl/geofence/GeoFenceService;

    invoke-static {v1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/gbl/geofence/GeoFenceService;->setParam(ILcom/autonavi/gbl/geofence/model/GeoFenceLayerParam;)V

    return-void

    :cond_1
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/autosdk/bussiness/geofence/GeoFenceController;->getInstance()Lcom/autosdk/bussiness/geofence/GeoFenceController;

    move-result-object v2

    iget v2, v2, Lcom/autosdk/bussiness/geofence/GeoFenceController;->success:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "InitPresenter"

    const-string v2, "[startGeoFenceRender]GeoFenceController.getInstance().success={?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/automap/presenter/InitPresenter;->lambda$copyAssetsFiles$0(Ljava/io/File;)V

    return-void
.end method

.method public copyAssetsFiles(Ljava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/byd/automap/presenter/InitPresenter;->md5VerifyNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "InitPresenter"

    const-string v4, "md5VerifyNum value is: {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "a0"

    const-string v4, "/blRes/"

    if-eqz p2, :cond_1

    new-instance p2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Lf/h/c/n0/y1;->e(Ljava/io/File;)Z

    move-result p2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v5, v3

    const-string p2, "\u5f3a\u5236\u5220\u9664\u6240\u6709\u6587\u4ef6result:{?}"

    invoke-static {v2, p2, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance p2, Ljava/io/File;

    iget-object v5, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v5}, Lf/h/c/v;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p2}, Lf/h/c/n0/y1;->e(Ljava/io/File;)Z

    move-result p2

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v5, v3

    const-string p2, "\u5f3a\u5236\u5220\u9664\u5168\u56fd\u5730\u56fe\u57fa\u7840\u6982\u8981\u5305result:{?}"

    invoke-static {v2, p2, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lf/h/c/n0/g1;->b(Ljava/lang/String;)V

    new-array p2, v3, [Ljava/lang/Object;

    const-string v4, "[copyAssetsFiles] copy sdk resources start."

    invoke-static {v2, v4, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/n0/g1;->g()Z

    move-result p2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "[copyAssetsFiles] copyFinish state:{?}"

    invoke-static {v2, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lf/h/c/n0/y1;->b(Ljava/lang/String;)Z

    move-result p1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "root file dir create is {?}"

    invoke-static {v2, p1, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/io/File;

    iget-object v4, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v4}, Lf/h/c/v;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    new-instance p2, Lf/k/c/r/b;

    invoke-direct {p2, p0, p1}, Lf/k/c/r/b;-><init>(Lcom/byd/automap/presenter/InitPresenter;Ljava/io/File;)V

    invoke-static {p2}, Lcom/autosdk/bussiness/common/task/TaskManager;->run(Ljava/lang/Runnable;)V

    move p2, v3

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "[copyAssetsFiles] copyFinish is:{?}"

    invoke-static {v2, p2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "[copyAssetsFiles] copy sdk resources end."

    invoke-static {v2, p2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getCarId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lf/k/c/x/h1;->J()Lf/k/c/x/h1;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/c/x/h1;->K()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDIU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lf/h/c/n0/o1;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetStatus()I
    .locals 1

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/h/c/n0/p2;->g(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/user/model/AccountModel;->getInstance()Lcom/autosdk/bussiness/user/model/AccountModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/user/model/AccountModel;->getUserData()Lcom/autonavi/gbl/user/account/model/AccountProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/autonavi/gbl/user/account/model/UserProfile;->uid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public initBL()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/byd/automap/presenter/InitPresenter;->initBL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "InitPresenter"

    const-string v4, "[initBL] init start: {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/byd/automap/presenter/InitPresenter;->initBL:I

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    iget-object v4, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    iget-object v5, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    invoke-virtual {v1, v4, v5}, Lcom/autosdk/bussiness/manager/SDKManager;->initBLs(Landroid/app/Application;Lcom/autosdk/bussiness/manager/SDKInitParams;)I

    move-result v1

    iput v1, p0, Lcom/byd/automap/presenter/InitPresenter;->initBL:I

    invoke-static {}, Lf/h/c/n0/p2;->i()V

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/byd/automap/presenter/InitPresenter;->initBL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "[initBL] init end: {?}"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public initBaseLibs()I
    .locals 3

    iget v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initBaseLibs:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;->initParam()V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->baseInitParam:Lcom/autosdk/bussiness/manager/SDKInitParams;

    invoke-virtual {v0, p0, v1}, Lcom/autosdk/bussiness/manager/SDKManager;->initBaseLibs(Lcom/autosdk/bussiness/manager/IPlatformDepends;Lcom/autosdk/bussiness/manager/SDKInitParams;)I

    move-result v0

    iput v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initBaseLibs:I

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/byd/automap/presenter/InitPresenter;->initBaseLibs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "InitPresenter"

    const-string v2, "initBaseLibs\u7ed3\u675f:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initBaseLibs:I

    if-nez v0, :cond_1

    invoke-static {}, Lf/h/c/n0/g1;->j()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lf/h/c/n0/g1;->k()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBaseLibs error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/byd/automap/presenter/InitPresenter;->initBaseLibs:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initBaseLibs:I

    return v0
.end method

.method public initCloudShow()V
    .locals 3

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->mSceneModuleService:Lcom/autonavi/gbl/scene/SceneModuleService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/scene/SceneModuleService;

    iput-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->mSceneModuleService:Lcom/autonavi/gbl/scene/SceneModuleService;

    new-instance v0, Lcom/autonavi/gbl/scene/model/InitSceneModuleParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/scene/model/InitSceneModuleParam;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/autonavi/gbl/scene/model/InitSceneModuleParam;->bEnableDynamicCloudShowInfoModule:Z

    iget-object v2, p0, Lcom/byd/automap/presenter/InitPresenter;->mSceneModuleService:Lcom/autonavi/gbl/scene/SceneModuleService;

    invoke-virtual {v2, v0}, Lcom/autonavi/gbl/scene/SceneModuleService;->init(Lcom/autonavi/gbl/scene/model/InitSceneModuleParam;)I

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->mSceneModuleService:Lcom/autonavi/gbl/scene/SceneModuleService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/gbl/scene/SceneModuleService;->isInit()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->mSceneModuleService:Lcom/autonavi/gbl/scene/SceneModuleService;

    invoke-virtual {v0, v2}, Lcom/autonavi/gbl/scene/SceneModuleService;->getModuleByType(I)Lcom/autonavi/gbl/scene/BaseSceneModule;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/scene/dynamic/DynamicCloudShowInfoModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/scene/dynamic/DynamicCloudShowInfoModule;->init(Z)I

    :cond_0
    return-void
.end method

.method public initKld(Landroid/app/Application;)V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InitPresenter"

    const-string v3, "[initKld]start"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/byd/automap/presenter/InitPresenter;->isInitKldService:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/map/MapController;->initKldBiz()V

    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;->getKldDisplayParam()Lcom/autosdk/bussiness/kld/KldDisplayParam;

    move-result-object v1

    invoke-static {}, Lcom/autosdk/bussiness/kld/KldDisplayController;->getInstance()Lcom/autosdk/bussiness/kld/KldDisplayController;

    move-result-object v3

    invoke-static {}, Lcom/autosdk/common/kld/KldMessagerController;->r()Lcom/autosdk/common/kld/KldMessagerController;

    move-result-object v4

    invoke-virtual {v3, p1, v1, v4}, Lcom/autosdk/bussiness/kld/KldDisplayController;->init(Landroid/content/Context;Lcom/autosdk/bussiness/kld/KldDisplayParam;Lcom/autosdk/bussiness/kld/listener/IKldMessagerController;)Z

    move-result p1

    invoke-static {}, Lf/h/c/f0/e;->j()Lf/h/c/f0/e;

    move-result-object v1

    new-instance v3, Lf/h/r/d/a;

    invoke-direct {v3}, Lf/h/r/d/a;-><init>()V

    invoke-virtual {v1, v3}, Lf/h/c/f0/e;->s(Lf/h/c/f0/e$e;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[initKld]end"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/byd/automap/presenter/InitPresenter;->isInitKldService:Z

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "[initKld]initKld already finish."

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public initLaneAndAR(Z)V
    .locals 2

    const/4 p1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "InitPresenter"

    const-string v1, "no support Lane"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lf/k/r/f/b;->c()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/byd/automap/presenter/ArLaneCalibration;->getInstance()Lcom/byd/automap/presenter/ArLaneCalibration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byd/automap/presenter/ArLaneCalibration;->createMapView()V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lf/h/q/d;

    const-string v0, "module_service_ar"

    invoke-interface {p1, v0}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/k/c/d/a/a;

    invoke-interface {p1}, Lf/k/c/d/a/a;->init()V

    :cond_1
    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lf/h/q/d;

    const-string v0, "module_service_gd_lane"

    invoke-interface {p1, v0}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/k/l/g/b/c;

    iget-object v0, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-interface {p1, v0}, Lf/k/l/g/b/c;->initLaneService(Landroid/content/Context;)V

    invoke-static {}, Lcom/byd/lane/aos/LaneAosManager;->getInstance()Lcom/byd/lane/aos/LaneAosManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byd/lane/aos/LaneAosManager;->initLaneServiceForCluster()V

    return-void
.end method

.method public initMap(Lcom/autonavi/gbl/map/adapter/MapSurfaceView;I)V
    .locals 10

    iget v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initBL:I

    if-nez v0, :cond_6

    new-instance v0, Lcom/autosdk/bussiness/map/SurfaceViewParam;

    invoke-direct {v0}, Lcom/autosdk/bussiness/map/SurfaceViewParam;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/autosdk/bussiness/map/SurfaceViewParam;->x:J

    iput-wide v1, v0, Lcom/autosdk/bussiness/map/SurfaceViewParam;->y:J

    sget v1, Lf/h/c/v;->a:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/autosdk/bussiness/map/SurfaceViewParam;->width:J

    sget v1, Lf/h/c/v;->b:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/autosdk/bussiness/map/SurfaceViewParam;->height:J

    sget v1, Lf/h/c/v;->a:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/autosdk/bussiness/map/SurfaceViewParam;->screenWidth:J

    sget v1, Lf/h/c/v;->b:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/autosdk/bussiness/map/SurfaceViewParam;->screenHeight:J

    iput-object p1, v0, Lcom/autosdk/bussiness/map/SurfaceViewParam;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autosdk/bussiness/map/MapControllerInitParam;

    invoke-direct {v0}, Lcom/autosdk/bussiness/map/MapControllerInitParam;-><init>()V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/v;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mStrDataPath:Ljava/lang/String;

    iput-object p1, v0, Lcom/autosdk/bussiness/map/MapControllerInitParam;->mSurfaceViewParamArrayList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->isIsKldProject()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/map/MapController;->initKld(Lcom/autosdk/bussiness/map/MapControllerInitParam;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/map/MapController;->init(Lcom/autosdk/bussiness/map/MapControllerInitParam;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {}, Lf/k/c/k/a;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "style.json"

    :goto_2
    invoke-static {v2, v3}, Lcom/autosdk/bussiness/common/utils/FileUtils;->getFileStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "blRes/HmiLayerAsset/style_3.json"

    goto :goto_2

    :cond_2
    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v2

    const-string v3, "blRes/HmiLayerAsset/style_1.json"

    goto :goto_2

    :goto_3
    new-instance v8, Lf/h/k/f/e;

    invoke-direct {v8, v2}, Lf/h/k/f/e;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/autosdk/layerstyle/PrepareLayerParamImpl;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2EngineID(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v5, p2, v2, v3}, Lcom/autosdk/layerstyle/PrepareLayerParamImpl;-><init>(III)V

    invoke-static {}, Lf/h/c/n0/e2;->a()Lcom/autonavi/gbl/layer/model/InnerStyleParam;

    move-result-object v6

    invoke-static {}, Lf/k/c/k/a;->e()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/autosdk/layerstyle/PrepareLayerStyleImpl;

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/autosdk/layerstyle/PrepareLayerStyleImpl;-><init>(Landroid/app/Application;Lcom/autonavi/gbl/layer/observer/PrepareLayerParam;Lcom/autonavi/gbl/layer/model/InnerStyleParam;ILf/h/k/f/e;)V

    goto :goto_4

    :cond_3
    new-instance v9, Lcom/autosdk/layerstyle/PrepareLayerStyleMapImpl;

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v3

    move-object v2, v9

    move-object v4, v5

    move-object v5, v6

    move-object v6, v1

    move-object v7, v8

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/autosdk/layerstyle/PrepareLayerStyleMapImpl;-><init>(Lcom/autonavi/gbl/map/MapView;Lcom/autonavi/gbl/layer/observer/PrepareLayerParam;Lcom/autonavi/gbl/layer/model/InnerStyleParam;Ljava/lang/Integer;Lf/h/k/f/e;I)V

    :goto_4
    new-instance v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;

    invoke-direct {v3}, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;-><init>()V

    iput-object v2, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->prepareLayerStyle:Lcom/autonavi/gbl/map/layer/observer/IPrepareLayerStyle;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v3, Lcom/autosdk/bussiness/layer/LayerControllerInitParam;->mSurfaceViewID:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/manager/SDKManager;->getLayerController()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/layer/LayerController;->init(Ljava/util/ArrayList;)Z

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/layer/LayerController;->getDynamicLayer(I)Lcom/autosdk/bussiness/layer/DynamicLayer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/layer/LayerController;->getDynamicLayer(I)Lcom/autosdk/bussiness/layer/DynamicLayer;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/byd/automap/presenter/InitPresenter;->getDynamicInitParam(I)Lcom/autonavi/gbl/layer/model/DynamicInitParam;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autosdk/bussiness/layer/DynamicLayer;->init(Lcom/autonavi/gbl/layer/model/DynamicInitParam;)V

    :cond_5
    new-instance p1, Lcom/byd/automap/presenter/InitPresenter$a;

    invoke-direct {p1, p0}, Lcom/byd/automap/presenter/InitPresenter$a;-><init>(Lcom/byd/automap/presenter/InitPresenter;)V

    invoke-static {p1}, Lcom/autosdk/bussiness/common/task/TaskManager;->run(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method public initSDK()Z
    .locals 10

    const-string v0, "1"

    const-string v1, "InitPresenter"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getPowerLevel()I

    move-result v3

    const-string v4, "[initSDK] offOnLevel={?}, isInitSdk\uff1a{?}"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    iget-boolean v7, p0, Lcom/byd/automap/presenter/InitPresenter;->isInitSdk:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v1, v4, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v4, p0, Lcom/byd/automap/presenter/InitPresenter;->isInitSdk:Z

    if-nez v4, :cond_8

    if-lez v3, :cond_8

    const-string v3, "[initSDK] init GaoDe sdk."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/common/tts/NaviTTSPlayer;->f()Lcom/autosdk/common/tts/NaviTTSPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/common/tts/NaviTTSPlayer;->d()V

    invoke-virtual {p0}, Lcom/byd/automap/presenter/InitPresenter;->initBL()V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->isIsKldProject()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/byd/automap/presenter/InitPresenter;->initKld(Landroid/app/Application;)V

    :cond_0
    invoke-static {}, Lf/k/c/p/r;->e()Lf/k/c/p/r;

    move-result-object v3

    iget-object v4, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    sget-object v6, Lf/k/c/p/r;->b:[Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lf/k/c/p/r;->i(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lf/h/q/o;->c()Lf/h/q/o;

    move-result-object v3

    invoke-virtual {v3}, Lf/h/q/o;->h()V

    invoke-static {}, Lcom/byd/map/signal/GaoDeSignalManager;->getInstance()Lcom/byd/map/signal/GaoDeSignalManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byd/map/signal/GaoDeSignalManager;->init()V

    :cond_1
    invoke-static {}, Lf/h/q/o;->c()Lf/h/q/o;

    move-result-object v3

    invoke-virtual {v3}, Lf/h/q/o;->i()V

    invoke-static {}, Lcom/autosdk/bussiness/search/SearchController;->getInstance()Lcom/autosdk/bussiness/search/SearchController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/search/SearchController;->initService()V

    invoke-static {}, Lcom/autosdk/bussiness/search/SearchControllerV2;->getInstance()Lcom/autosdk/bussiness/search/SearchControllerV2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/search/SearchControllerV2;->initService()V

    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;->getMapDataMode()I

    move-result v3

    const-string v4, "mapDataMode: {?}"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1, v4, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/data/MapDataController;->getInstance()Lcom/autosdk/bussiness/data/MapDataController;

    move-result-object v4

    iget-object v6, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v6}, Lf/h/c/v;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lf/h/c/v;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v3}, Lcom/autosdk/bussiness/data/MapDataController;->initService(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/byd/automap/presenter/InitPresenter;->initTheme()V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autosdk/bussiness/manager/SDKManager;->getAosClientController()Lcom/autosdk/bussiness/aosclient/AosClientController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autosdk/bussiness/aosclient/AosClientController;->init()I

    invoke-virtual {p0}, Lcom/byd/automap/presenter/InitPresenter;->initUser()V

    const-string v4, "AppUtil.isFirstStartApp()={?},!SettingsUtil.getInstance().hasSetToDefault={?}"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Lf/h/c/n0/f1;->z()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v7

    iget-boolean v7, v7, Lf/h/c/j0/l0;->c:Z

    if-nez v7, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move v7, v2

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1, v4, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/n0/f1;->z()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v4

    iget-boolean v4, v4, Lf/h/c/j0/l0;->c:Z

    if-nez v4, :cond_3

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v4

    invoke-virtual {v4}, Lf/h/c/j0/l0;->f()V

    const-string v4, "[initSDK] first start app, init settings to default"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v4

    invoke-virtual {v4, v8}, Lf/h/c/j0/l0;->g(Z)V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lf/h/c/j0/p;->e(Landroid/content/Context;)V

    invoke-static {}, Lcom/autosdk/common/UtilDayStatusNotifyManager;->getInstance()Lcom/autosdk/common/UtilDayStatusNotifyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autosdk/common/UtilDayStatusNotifyManager;->initDayNight()V

    invoke-virtual {p0}, Lcom/byd/automap/presenter/InitPresenter;->initVehicle()V

    invoke-static {}, Lcom/autosdk/bussiness/user/model/BehaviorModel;->getInstance()Lcom/autosdk/bussiness/user/model/BehaviorModel;

    move-result-object v4

    const/16 v6, 0x191

    invoke-virtual {v4, v6}, Lcom/autosdk/bussiness/user/model/BehaviorModel;->getConfig(I)Lcom/autonavi/gbl/user/behavior/model/ConfigValue;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "4"

    const/16 v7, 0xc

    if-eqz v4, :cond_6

    :try_start_1
    iget v4, v4, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;->intValue:I

    if-ne v4, v5, :cond_4

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v4

    const-string v6, "2"

    :goto_1
    invoke-virtual {v4, v7, v6}, Lcom/autosdk/bussiness/navi/NaviController;->routeControl(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v9, 0x6

    if-ne v4, v9, :cond_5

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v4

    const-string v6, "6"

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v4

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v4

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v4

    const/16 v6, 0x177

    invoke-virtual {v4, v6, v0}, Lcom/autosdk/bussiness/navi/NaviController;->routeControl(ILjava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v4

    const/16 v6, 0x17a

    invoke-virtual {v4, v6, v0}, Lcom/autosdk/bussiness/navi/NaviController;->routeControl(ILjava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v4

    const/16 v6, 0x135

    invoke-virtual {v4, v6, v0}, Lcom/autosdk/bussiness/navi/NaviController;->routeControl(ILjava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v4

    const/16 v6, 0x170

    invoke-virtual {v4, v6, v0}, Lcom/autosdk/bussiness/navi/NaviController;->routeControl(ILjava/lang/String;)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v4

    invoke-virtual {v4}, Lf/h/c/j0/l0;->getConfigKeyPlateNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v6

    invoke-virtual {v6}, Lf/h/c/j0/l0;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/autosdk/bussiness/common/utils/CarParamUtil;->updatePlateAndType(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v4

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v6

    invoke-virtual {v6}, Lf/h/c/j0/l0;->getConfigKeyAvoidLimit()I

    move-result v6

    if-ne v6, v8, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "0"

    :goto_3
    invoke-virtual {v4, v5, v0}, Lcom/autosdk/bussiness/navi/NaviController;->routeControl(ILjava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/map/MapController;->delayInitByUser()V

    iput-boolean v8, p0, Lcom/byd/automap/presenter/InitPresenter;->isInitSdk:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v4}, Lf/h/c/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/EhpConfig.dat"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lf/h/j/c;->a()Lf/h/j/c;

    move-result-object v4

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v6

    invoke-virtual {v4, v6, v0}, Lf/h/j/c;->b(ZLjava/lang/String;)Z

    move-result v0

    const-string v4, "init ehpInit:{?},mapDataMode:{?}"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v1, v4, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/byd/automap/presenter/InitPresenter;->initCloudShow()V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoSettingDataPublisher;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoSettingDataPublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoSettingDataPublisher;->init()V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/model/VehicleDataModel;->getInstance()Lcom/autosdk/bussiness/vehicle/model/VehicleDataModel;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoSettingDataPublisher;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoSettingDataPublisher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/autosdk/bussiness/vehicle/model/VehicleDataModel;->injectBydAutoSettingDataModel(Lcom/autosdk/bussiness/vehicle/model/IBydAutoSettingDataPublisher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lcom/byd/automap/presenter/InitPresenter;->isInitSdk:Z

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "init sdk error!!!"

    invoke-static {v1, v3, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_8
    :goto_4
    iget-boolean v0, p0, Lcom/byd/automap/presenter/InitPresenter;->isInitSdk:Z

    return v0
.end method

.method public initStyle(Landroid/content/Context;)V
    .locals 1

    const-string v0, "style.json"

    invoke-static {p1, v0}, Lcom/autosdk/bussiness/common/utils/FileUtils;->getFileStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lf/h/k/f/e;

    invoke-direct {v0, p1}, Lf/h/k/f/e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public initTheme()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InitPresenter"

    const-string v2, "initTheme\u7ed3\u675f"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/common/settings/HotUpdateController;->getInstance()Lcom/autosdk/common/settings/HotUpdateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/HotUpdateController;->init()V

    return-void
.end method

.method public initUser()V
    .locals 4

    iget-boolean v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initUser:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initBL:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;

    invoke-direct {v0}, Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;-><init>()V

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/v;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;->setSyncSdkDataPath(Ljava/lang/String;)Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/v;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;->setForecastDbPath(Ljava/lang/String;)Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/v;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;->setMsgPushPath(Ljava/lang/String;)Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lf/h/c/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;->setAccountUserInfoPath(Ljava/lang/String;)Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getUserController()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean$Builder;->build()Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/user/UserController;->init(Lcom/autosdk/bussiness/user/bean/UserInitParamWrapBean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initUser:Z

    :cond_0
    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;->initTtsPlayMuteStatus()V

    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;->initUserLoginByBluetoothObserver()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InitPresenter"

    const-string v3, "checkSavePrivacyDataByOn by initUser"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/m/e;->i()Lf/k/m/e;

    move-result-object v1

    invoke-virtual {v1}, Lf/k/m/e;->a()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/byd/automap/presenter/InitPresenter;->initUser:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "initUser\u7ed3\u675f {?}"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public initVehicle()V
    .locals 4

    iget-boolean v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initVehicle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initVehicle:Z

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getVehicleController()Lcom/autosdk/bussiness/vehicle/VehicleController;

    move-result-object v0

    invoke-static {}, Lcom/byd/automap/application/AutoApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/VehicleController;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getVehicleController()Lcom/autosdk/bussiness/vehicle/VehicleController;

    move-result-object v0

    new-instance v1, Lcom/byd/automap/presenter/InitPresenter$b;

    invoke-direct {v1, p0}, Lcom/byd/automap/presenter/InitPresenter$b;-><init>(Lcom/byd/automap/presenter/InitPresenter;)V

    new-instance v2, Lcom/byd/automap/presenter/InitPresenter$c;

    invoke-direct {v2, p0}, Lcom/byd/automap/presenter/InitPresenter$c;-><init>(Lcom/byd/automap/presenter/InitPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/bussiness/vehicle/VehicleController;->registerCarInfoDrivingInfoObserver(Lcom/autosdk/bussiness/vehicle/model/VehicleDataModel$ICarInfoObserver;Lcom/autosdk/bussiness/vehicle/model/VehicleDataModel$IDrivingInfoObserver;)V

    :try_start_0
    invoke-static {}, Lf/h/c/f0/f;->b()Lf/h/c/f0/f;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/f0/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "InitPresenter"

    const-string v3, "PushVehicleDataController is error:"

    invoke-static {v2, v3, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isInitOk()Z
    .locals 1

    iget v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initBL:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onNetActivateResponse(I)V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InitPresenter"

    const-string v3, "unInit"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/j0/p;->o()V

    invoke-static {}, Lcom/byd/automap/presenter/ArLaneCalibration;->getInstance()Lcom/byd/automap/presenter/ArLaneCalibration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byd/automap/presenter/ArLaneCalibration;->destroyMapView()V

    invoke-direct {p0}, Lcom/byd/automap/presenter/InitPresenter;->removeBluetoothAccountLoginObserver()V

    invoke-static {}, Lcom/autosdk/common/tts/NaviTTSPlayer;->f()Lcom/autosdk/common/tts/NaviTTSPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/common/tts/NaviTTSPlayer;->k()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/byd/automap/presenter/InitPresenter;->initBL:I

    iput v1, p0, Lcom/byd/automap/presenter/InitPresenter;->initBaseLibs:I

    iput-boolean v0, p0, Lcom/byd/automap/presenter/InitPresenter;->initUser:Z

    invoke-static {}, Lf/h/c/g0/a;->h()Lf/h/c/g0/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/g0/a;->j()V

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/common/settings/data/ThemeDataController;->unint()V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->unInit()V

    invoke-static {}, Lcom/autosdk/common/settings/HotUpdateController;->getInstance()Lcom/autosdk/common/settings/HotUpdateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/common/settings/HotUpdateController;->unInit()V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoSettingDataPublisher;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoSettingDataPublisher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoSettingDataPublisher;->unInit()V

    iget-object v1, p0, Lcom/byd/automap/presenter/InitPresenter;->mContext:Landroid/app/Application;

    invoke-static {v1}, Lcom/byd/map/CloudControllerManager;->f(Landroid/content/Context;)Lcom/byd/map/CloudControllerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byd/map/CloudControllerManager;->j()V

    invoke-static {}, Lf/k/c/z/e;->d()Lf/k/c/z/e;

    move-result-object v1

    invoke-virtual {v1}, Lf/k/c/z/e;->b()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unInit end"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
