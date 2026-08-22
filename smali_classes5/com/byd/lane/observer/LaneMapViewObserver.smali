.class public Lcom/byd/lane/observer/LaneMapViewObserver;
.super Lcom/autosdk/bussiness/map/observer/MapViewObserver;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "LaneMapViewObserver"


# instance fields
.field private mDrawIndex:S

.field private mInitMapOk:Z

.field private mSurfaceViewID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autosdk/bussiness/map/observer/MapViewObserver;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mDrawIndex:S

    iput-boolean v0, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mInitMapOk:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mSurfaceViewID:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/bussiness/map/observer/MapViewObserver;-><init>()V

    const/4 p2, 0x0

    iput-short p2, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mDrawIndex:S

    iput-boolean p2, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mInitMapOk:Z

    iput p1, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mSurfaceViewID:I

    return-void
.end method


# virtual methods
.method public onPreDrawFrame(J)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/autosdk/bussiness/map/observer/MapViewObserver;->onPreDrawFrame(J)V

    iget-boolean v0, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mInitMapOk:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    long-to-int p1, p1

    invoke-static {p1}, Lcom/autosdk/bussiness/map/SurfaceViewID;->transform2SurfaceViewID(I)I

    move-result p1

    iget p2, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mSurfaceViewID:I

    if-ne p1, p2, :cond_1

    iget-short p1, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mDrawIndex:S

    const/4 v0, 0x1

    add-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mDrawIndex:S

    if-le p1, v0, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const-string p2, "LaneMapViewObserver"

    const-string v2, "====onPreDrawFrame initLaneService {?}"

    invoke-static {p2, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getServiceMgrInstance()Lcom/autonavi/gbl/servicemanager/ServiceMgr;

    move-result-object p1

    const/16 p2, 0x1a

    invoke-virtual {p1, p2}, Lcom/autonavi/gbl/servicemanager/ServiceMgr;->getBLService(I)Lcom/autonavi/gbl/servicemanager/IService;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/lane/LaneService;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/gbl/lane/LaneService;->isInit()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const-string p2, "LaneMapViewObserver"

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lf/h/q/d;

    const-string v2, "module_service_gd_lane"

    invoke-interface {p1, v2}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/k/l/g/b/c;

    iget v2, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mSurfaceViewID:I

    invoke-interface {p1, v2}, Lf/k/l/g/b/c;->createLaneRender(I)V

    iput-boolean v0, p0, Lcom/byd/lane/observer/LaneMapViewObserver;->mInitMapOk:Z

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "====onPreDrawFrame initLaneService end"

    invoke-static {p2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
