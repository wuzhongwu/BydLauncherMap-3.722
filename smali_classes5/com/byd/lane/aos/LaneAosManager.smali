.class public Lcom/byd/lane/aos/LaneAosManager;
.super Lcom/autosdk/bussiness/aosmanager/AosManager;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/gbl/aosclient/observer/ICallBackAuthentication;
.implements Lcom/autonavi/gbl/activation/observer/IAuthenticationObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/lane/aos/LaneAosManager$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LaneAosManager"


# instance fields
.field private final aosListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lf/k/l/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public authenticationService:Lcom/autonavi/gbl/activation/AuthenticationService;

.field private laneMapViewObserver:Lcom/byd/lane/observer/LaneMapViewObserver;

.field private laneMapViewObserverCluster:Lcom/byd/lane/observer/LaneMapViewObserver;

.field private laneState:I


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/autosdk/bussiness/aosmanager/AosManager;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->aosListeners:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/byd/lane/aos/LaneAosManager;->laneState:I

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoVIN()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "LaneAosManager"

    const-string v3, "vid real:{?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    sput-object v0, Lcom/autosdk/bussiness/aosmanager/AosManager;->VID_TEST:Ljava/lang/String;

    :cond_0

    :try_start_spdefault
    new-instance v0, Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;->laneNavi:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;

    invoke-direct {v0, v1}, Lcom/autosdk/common/storage/MapSharePreference;-><init>(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;)V

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->laneNaviEnable:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/storage/MapSharePreference;->j(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)V

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->laneOpen:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v0, v1}, Lcom/autosdk/common/storage/MapSharePreference;->c(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;)Z

    move-result v2

    if-nez v2, :spdefault_skip

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/storage/MapSharePreference;->j(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)V

    :spdefault_skip
    :try_end_spdefault
    .catch Ljava/lang/Throwable; {:try_start_spdefault .. :try_end_spdefault} :catch_spdefault

    goto :goto_spdefault_done

    :catch_spdefault
    move-exception v0

    :goto_spdefault_done
    return-void
.end method

.method public synthetic constructor <init>(Lcom/byd/lane/aos/LaneAosManager$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/lane/aos/LaneAosManager;-><init>()V

    return-void
.end method

.method private doActivateJudge(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/byd/lane/aos/LaneAosManager;->doAosStateResult(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/byd/lane/aos/LaneAosManager;->doAosStateResult(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/byd/lane/aos/LaneAosManager;->doAosStateResult(I)V

    :goto_0
    return-void
.end method

.method private doAosStateResult(I)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v4, 0x2

    sget-boolean v5, Lf/k/l/g/a/b;->e:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "LaneAosManager"

    const-string v5, "doAosStateResult:{?} isLaneActivate:{?} {?}"

    invoke-static {v4, v5, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, Lf/k/l/g/a/b;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "doAosStateResult isActivate is ture ,but net is error"

    invoke-static {v4, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/byd/lane/aos/LaneAosManager;->laneState:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/byd/lane/aos/LaneAosManager;->laneState:I

    if-ne p1, v1, :cond_2

    move v2, v3

    :cond_2
    sput-boolean v2, Lf/k/l/g/a/b;->e:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lf/k/l/f/c;

    invoke-direct {v1, p0, p1}, Lf/k/l/f/c;-><init>(Lcom/byd/lane/aos/LaneAosManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public static getInstance()Lcom/byd/lane/aos/LaneAosManager;
    .locals 1

    invoke-static {}, Lcom/byd/lane/aos/LaneAosManager$b;->a()Lcom/byd/lane/aos/LaneAosManager;

    move-result-object v0

    return-object v0
.end method

.method private initAos()I
    .locals 3
    .annotation build Lcom/autonavi/gbl/util/model/ServiceInitStatus$ServiceInitStatus1;
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/aosmanager/AosManager;->aosManager:Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autosdk/bussiness/aosmanager/AosManager;->getAosManager()Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autosdk/bussiness/aosmanager/AosManager;->aosManager:Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/aosmanager/AosManager;->aosManager:Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    return v0

    :cond_1
    iget v1, p0, Lcom/byd/lane/aos/LaneAosManager;->laneState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/byd/lane/aos/LaneAosManager;->initAosManager()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {v0}, Lcom/autonavi/gbl/aosclient/BLAosServiceManager;->isInit()I

    move-result v0

    return v0
.end method

.method private initAosManager()I
    .locals 3

    invoke-static {}, Lf/k/r/f/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "025006"

    :goto_0
    const/4 v1, 0x1

    sget-object v2, Lcom/autosdk/bussiness/aosmanager/AosManager;->VID_TEST:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0, p0}, Lcom/byd/lane/aos/LaneAosManager;->initAosManagerWithPara(ZLjava/lang/String;Ljava/lang/String;Lcom/autonavi/gbl/aosclient/observer/ICallBackAuthentication;)I

    move-result v0

    return v0
.end method

.method private initAosManagerWithPara(ZLjava/lang/String;Ljava/lang/String;Lcom/autonavi/gbl/aosclient/observer/ICallBackAuthentication;)I
    .locals 3
    .annotation build Lcom/autonavi/gbl/util/model/ServiceInitStatus$ServiceInitStatus1;
    .end annotation

    iget-object v0, p0, Lcom/autosdk/bussiness/aosmanager/AosManager;->aosManager:Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    iput-object v0, p0, Lcom/autosdk/bussiness/aosmanager/AosManager;->aosManager:Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/aosmanager/AosManager;->aosManager:Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    if-nez v0, :cond_1

    const/high16 p1, -0x80000000

    return p1

    :cond_1
    new-instance v0, Lcom/autonavi/gbl/aosclient/model/BLAosInitParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/aosclient/model/BLAosInitParam;-><init>()V

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/aosclient/model/BLAosInitParam;->setAuthentication(Z)V

    invoke-virtual {v0, p2}, Lcom/autonavi/gbl/aosclient/model/BLAosInitParam;->setVid(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/BydAutoMap/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/aosclient/model/BLAosInitParam;->setStrAuthenticationDBPath(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/autonavi/gbl/aosclient/model/BLAosInitParam;->setPid(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/autonavi/gbl/aosclient/model/BLAosInitParam;->setCallback(Lcom/autonavi/gbl/aosclient/observer/ICallBackAuthentication;)V

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, p4, v1

    const/4 p3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p4, p3

    const/4 p1, 0x2

    aput-object p2, p4, p1

    const-string p1, "LaneAosManager"

    const-string p2, "auth:{?}  setVid vid:{?}  pid:{?}"

    invoke-static {p1, p2, p4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/aosmanager/AosManager;->aosManager:Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/aosclient/BLAosServiceManager;->init(Lcom/autonavi/gbl/aosclient/model/BLAosInitParam;)V

    iget-object p1, p0, Lcom/autosdk/bussiness/aosmanager/AosManager;->aosManager:Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    invoke-virtual {p1}, Lcom/autonavi/gbl/aosclient/BLAosServiceManager;->isInit()I

    move-result p1

    return p1
.end method

.method private initAuthenticationService()I
    .locals 4

    iget-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->authenticationService:Lcom/autonavi/gbl/activation/AuthenticationService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/activation/AuthenticationService;

    iput-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->authenticationService:Lcom/autonavi/gbl/activation/AuthenticationService;

    :cond_0
    iget-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->authenticationService:Lcom/autonavi/gbl/activation/AuthenticationService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autonavi/gbl/activation/AuthenticationService;->isInit()I

    move-result v0

    iget-object v1, p0, Lcom/byd/lane/aos/LaneAosManager;->authenticationService:Lcom/autonavi/gbl/activation/AuthenticationService;

    invoke-virtual {v1, p0}, Lcom/autonavi/gbl/activation/AuthenticationService;->addObserver(Lcom/autonavi/gbl/activation/observer/IAuthenticationObserver;)Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "LaneAosManager"

    const-string v3, "initAuthenticationService initRet:{?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    const/high16 v0, -0x80000000

    return v0
.end method

.method public static synthetic lambda$doAosStateResult$0(ILf/k/l/f/e;)V
    .locals 0

    invoke-interface {p1, p0}, Lf/k/l/f/e;->a(I)V

    return-void
.end method

.method private synthetic lambda$doAosStateResult$1(I)V
    .locals 3

    iget-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->aosListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/byd/lane/aos/LaneAosManager;->aosListeners:Ljava/util/Set;

    new-instance v2, Lf/k/l/f/d;

    invoke-direct {v2, p1}, Lf/k/l/f/d;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic lambda$onRecvAuthcarServerlist$2(Lcom/autonavi/gbl/aosclient/model/WsAuthcarServicelistDataService;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/autonavi/gbl/aosclient/model/WsAuthcarServicelistDataService;->sid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/autonavi/gbl/aosclient/model/WsAuthcarServicelistDataService;->name:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "LaneAosManager"

    const-string v1, "onRecvAuthcarServerlist\u9274\u6743 sid:{?}  name:{?}"

    invoke-static {p0, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onRecvAuthcarToken$3(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenDataPermission;)V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p1, Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenDataPermission;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenDataPermission;->end_time:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenDataPermission;->sid:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenDataPermission;->description:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "LaneAosManager"

    const-string v3, "onRecvAuthcarToken status:{?}  time:{?}  sid:{?}  desc:{?}"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenDataPermission;->sid:Ljava/lang/String;

    const-string v1, "lnds"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenDataPermission;->sid:Ljava/lang/String;

    const-string v1, "lnds_License"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget p1, p1, Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenDataPermission;->status:I

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic a(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/lane/aos/LaneAosManager;->lambda$doAosStateResult$1(I)V

    return-void
.end method

.method public initAosAndAuth(ZZ)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "LaneAosManager"

    const-string v5, "initAosAndAuth:{?} netConnected:{?}"

    invoke-static {v2, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/byd/lane/aos/LaneAosManager;->initAos()I

    move-result p1

    invoke-direct {p0}, Lcom/byd/lane/aos/LaneAosManager;->initAuthenticationService()I

    move-result p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "initAos:{?}  initAuth:{?}"

    invoke-static {v2, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public initLaneService()V
    .locals 5

    sget-boolean v0, Lf/k/l/g/a/b;->e:Z

    const-string v1, "LaneAosManager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->laneMapViewObserver:Lcom/byd/lane/observer/LaneMapViewObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/byd/lane/observer/LaneMapViewObserver;

    invoke-direct {v0}, Lcom/byd/lane/observer/LaneMapViewObserver;-><init>()V

    iput-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->laneMapViewObserver:Lcom/byd/lane/observer/LaneMapViewObserver;

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget-object v4, p0, Lcom/byd/lane/aos/LaneAosManager;->laneMapViewObserver:Lcom/byd/lane/observer/LaneMapViewObserver;

    invoke-virtual {v0, v3, v4}, Lcom/autosdk/bussiness/map/MapController;->addMapViewObserver(ILcom/autonavi/gbl/map/observer/IMapviewObserver;)Z

    move-result v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "[initLaneService] result:{?}"

    invoke-static {v1, v0, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-boolean v4, Lf/k/l/g/a/b;->e:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/byd/lane/aos/LaneAosManager;->laneMapViewObserver:Lcom/byd/lane/observer/LaneMapViewObserver;

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "[initLaneService] isActivate:{?}, laneMapViewObserver:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/byd/lane/aos/LaneAosManager;->initLaneServiceForCluster()V

    return-void
.end method

.method public initLaneServiceForCluster()V
    .locals 4

    const-string v3, "LaneAosManager"

    iget-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->laneMapViewObserverCluster:Lcom/byd/lane/observer/LaneMapViewObserver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lf/k/l/g/a/b;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[initLaneServiceForCluster] skip: not activate"

    invoke-static {v3, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lcom/byd/lane/observer/LaneMapViewObserver;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/byd/lane/observer/LaneMapViewObserver;-><init>(II)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/autosdk/bussiness/map/MapController;->addMapViewObserver(ILcom/autonavi/gbl/map/observer/IMapviewObserver;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->laneMapViewObserverCluster:Lcom/byd/lane/observer/LaneMapViewObserver;

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[initLaneServiceForCluster] addMapViewObserver(2) result:{?}"

    invoke-static {v3, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAuthcarTokenError(Lcom/autonavi/gbl/aosclient/model/AuthTokenInfo;)V
    .locals 4

    invoke-static {p1}, Lcom/autosdk/bussiness/common/utils/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "LaneAosManager"

    const-string v3, "onAuthcarTokenError: {?}"

    invoke-static {v0, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/autonavi/gbl/aosclient/model/AuthTokenInfo;->sid:Ljava/lang/String;

    const-string v2, "lnds"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget p1, p1, Lcom/autonavi/gbl/aosclient/model/AuthTokenInfo;->status:I

    const/4 v0, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/byd/lane/aos/LaneAosManager;->doAosStateResult(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/byd/lane/aos/LaneAosManager;->doAosStateResult(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/byd/lane/aos/LaneAosManager;->doAosStateResult(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRecvAuthcarServerlist(Lcom/autonavi/gbl/aosclient/model/GWsAuthcarServicelistResponseParam;)V
    .locals 4

    iget-object v0, p1, Lcom/autonavi/gbl/aosclient/model/GWsAuthcarServicelistResponseParam;->json_data:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LaneAosManager"

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/autonavi/gbl/aosclient/model/BLResponseBase;->code:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object p1, p1, Lcom/autonavi/gbl/aosclient/model/GWsAuthcarServicelistResponseParam;->data:Lcom/autonavi/gbl/aosclient/model/WsAuthcarServicelistData;

    iget-object p1, p1, Lcom/autonavi/gbl/aosclient/model/WsAuthcarServicelistData;->services:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    sget-object v0, Lf/k/l/f/b;->a:Lf/k/l/f/b;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "onRecvAuthcarServerlist: \u9274\u6743\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "onRecvAuthcarServerlist: \u9274\u6743\u521d\u59cb\u5316\u5931\u8d25 string \u4e3anull"

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRecvAuthcarToken(Lcom/autonavi/gbl/aosclient/model/GWsAuthcarTokenResponseParam;)V
    .locals 4

    iget-object v0, p1, Lcom/autonavi/gbl/aosclient/model/GWsAuthcarTokenResponseParam;->data:Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenData;

    iget-object v0, v0, Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenData;->permissions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object p1, p1, Lcom/autonavi/gbl/aosclient/model/GWsAuthcarTokenResponseParam;->data:Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenData;

    iget-object p1, p1, Lcom/autonavi/gbl/aosclient/model/WsAuthcarTokenData;->permissions:Ljava/util/ArrayList;

    new-instance v3, Lf/k/l/f/a;

    invoke-direct {v3, v0}, Lf/k/l/f/a;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lt p1, v2, :cond_1

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/byd/lane/aos/LaneAosManager;->doActivateJudge(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/byd/lane/aos/LaneAosManager;->doActivateJudge(I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    iget v2, p1, Lcom/autonavi/gbl/aosclient/model/BLResponseBase;->mNetworkStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "LaneAosManager"

    const-string v2, "permissions.size() == 0  mNetworkStatus:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p1, Lcom/autonavi/gbl/aosclient/model/BLResponseBase;->mNetworkStatus:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    goto :goto_2

    :cond_3
    const/4 p1, 0x6

    :goto_2
    invoke-direct {p0, p1}, Lcom/byd/lane/aos/LaneAosManager;->doAosStateResult(I)V

    return-void
.end method

.method public onStatusUpdated(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/activation/model/AuthenticationGoodsInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autonavi/gbl/activation/model/AuthenticationGoodsInfo;

    iget-object v0, p2, Lcom/autonavi/gbl/activation/model/AuthenticationGoodsInfo;->sid:Ljava/lang/String;

    const-string v1, "lnds"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/autonavi/gbl/activation/model/AuthenticationGoodsInfo;->authenticationInfo:Lcom/autonavi/gbl/activation/model/AuthenticationInfo;

    iget p2, p2, Lcom/autonavi/gbl/activation/model/AuthenticationInfo;->status:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "LaneAosManager"

    const-string v2, "onStatusUpdated"

    invoke-static {v1, v2, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/byd/lane/aos/LaneAosManager;->doActivateJudge(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerAosResult(Lf/k/l/f/e;)V
    .locals 2

    iget-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->aosListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/byd/lane/aos/LaneAosManager;->aosListeners:Ljava/util/Set;

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

.method public syncAuthRequest()V
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/aosmanager/AosManager;->aosManager:Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    if-eqz v0, :cond_0

    sget-boolean v0, Lf/k/l/g/a/b;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/aosmanager/AosManager;->aosManager:Lcom/autonavi/gbl/aosclient/BLAosServiceManager;

    new-instance v1, Lcom/autonavi/gbl/aosclient/model/NetworkAuthParam;

    invoke-direct {v1}, Lcom/autonavi/gbl/aosclient/model/NetworkAuthParam;-><init>()V

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/aosclient/BLAosServiceManager;->request(Lcom/autonavi/gbl/aosclient/model/NetworkAuthParam;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "LaneAosManager"

    const-string v2, "syncAuthRequest reqId:{?}"

    invoke-static {v0, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    iget-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->authenticationService:Lcom/autonavi/gbl/activation/AuthenticationService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/autonavi/gbl/activation/AuthenticationService;->removeObserver(Lcom/autonavi/gbl/activation/observer/IAuthenticationObserver;)Z

    :cond_0
    return-void
.end method

.method public unRegisterAosResult(Lf/k/l/f/e;)V
    .locals 2

    iget-object v0, p0, Lcom/byd/lane/aos/LaneAosManager;->aosListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/byd/lane/aos/LaneAosManager;->aosListeners:Ljava/util/Set;

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
