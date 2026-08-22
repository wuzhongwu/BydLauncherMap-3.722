.class public Lcom/autosdk/bussiness/map/MapController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/gbl/map/observer/IBLMapViewProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autosdk/bussiness/map/MapController;->createExtraMapView(Lcom/autonavi/gbl/map/MapDevice;JLcom/autosdk/bussiness/map/SurfaceViewParam;)Lcom/autonavi/gbl/map/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/autosdk/bussiness/map/MapController;

.field public final synthetic val$_mapDevice:Lcom/autonavi/gbl/map/MapDevice;


# direct methods
.method public constructor <init>(Lcom/autosdk/bussiness/map/MapController;Lcom/autonavi/gbl/map/MapDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/bussiness/map/MapController$2;->this$0:Lcom/autosdk/bussiness/map/MapController;

    iput-object p2, p0, Lcom/autosdk/bussiness/map/MapController$2;->val$_mapDevice:Lcom/autonavi/gbl/map/MapDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLogReporter(JIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSendBehaviorLog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reloadMapResource(J[BI)V
    .locals 0

    return-void
.end method

.method public requireMapRender(JII)V
    .locals 0

    iget-object p1, p0, Lcom/autosdk/bussiness/map/MapController$2;->val$_mapDevice:Lcom/autonavi/gbl/map/MapDevice;

    invoke-virtual {p1, p3}, Lcom/autonavi/gbl/map/MapDevice;->resetTickCount(I)V

    return-void
.end method

.method public requireMapResource(JLcom/autonavi/gbl/map/model/MapResourceParam;)[B
    .locals 0

    invoke-static {}, Lcom/autosdk/bussiness/map/MapStyleHelper;->getMapAssetHelper()Lcom/autosdk/bussiness/map/MapStyleHelper$MapAssetHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/autosdk/bussiness/map/MapController$2;->this$0:Lcom/autosdk/bussiness/map/MapController;

    invoke-static {p2}, Lcom/autosdk/bussiness/map/MapController;->access$200(Lcom/autosdk/bussiness/map/MapController;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/autosdk/bussiness/map/MapStyleHelper$MapAssetHelper;->requireResource(Landroid/content/Context;Lcom/autonavi/gbl/map/model/MapResourceParam;)[B

    move-result-object p1

    return-object p1
.end method
