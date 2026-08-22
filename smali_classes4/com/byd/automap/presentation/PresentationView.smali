.class public Lcom/byd/automap/presentation/PresentationView;
.super Landroid/app/Presentation;
.source "SourceFile"

# interfaces
.implements Lg/a/a/a/c;
.implements Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy$NavTypeListener;
.implements Lcom/autonavi/gbl/pos/observer/IPosLocInfoObserver;
.implements Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;


# static fields
.field private static final CAR_POSITION_X_PERCENT:F = 0.435f

.field private static final CAR_POSITION_X_PERCENT_E_DEFAULT:F = 0.5f

.field private static final CAR_POSITION_X_PERCENT_E_SMALL_F:F = 0.85f

.field private static final CAR_POSITION_X_PERCENT_E_SMALL_NEWUI_DENZA:F = 0.84f

.field private static final CAR_POSITION_X_PERCENT_E_SMALL_NEWUI_OCEAN:F = 0.85f

.field private static final CAR_POSITION_X_PERCENT_FULL_004F:F = 0.04f

.field private static final CAR_POSITION_X_PERCENT_FULL_005F:F = 0.05f

.field private static final CAR_POSITION_X_PERCENT_SMALL_004F:F = 0.04f

.field private static final CAR_POSITION_X_PERCENT_SMALL_005F:F = 0.05f

.field private static final CAR_POSITION_X_PERCENT_SMALL_CRUISE:F = 0.2f

.field private static final CAR_POSITION_X_PERCENT_SMALL_CRUISE_RIGHT:F = 0.66f

.field private static final CAR_POSITION_Y_PERCENT:F = 0.7f

.field private static final CAR_POSITION_Y_PERCENT_E_DEFAULT:F = 0.68f

.field private static final CAR_POSITION_Y_PERCENT_E_DENZA:F = 0.7f

.field private static final CAR_POSITION_Y_PERCENT_E_SMALL_CRUISE_F:F = 0.65f

.field private static final CAR_POSITION_Y_PERCENT_E_SMALL_NAVI_F:F = 0.65f

.field private static final CAR_POSITION_Y_PERCENT_E_SMALL_NEWUI_CRUISE_DENZA:F = 0.53f

.field private static final CAR_POSITION_Y_PERCENT_E_SMALL_NEWUI_CRUISE_OCEAN:F = 0.53f

.field private static final CAR_POSITION_Y_PERCENT_E_SMALL_NEWUI_NAVI_DENZA:F = 0.53f

.field private static final CAR_POSITION_Y_PERCENT_E_SMALL_NEWUI_NAVI_OCEAN:F = 0.53f

.field private static final CAR_POSITION_Y_PERCENT_SMALL_CRUISE:F = 0.55f

.field private static final CAR_POSITION_Y_PERCENT_SMALL_CRUISE_RIGHT:F = 0.55f

.field private static final MAX_SCALE_LEVEL:F = 17.0f

.field private static final NO_NETWORK_FRESH_TIME:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PresentationView"

.field private static final TYPE_CRUISE:I = 0x0

.field private static final TYPE_NAVI:I = 0x1

.field private static final TYPE_NAVI_SIM:I = 0x2


# instance fields
.field public autoContainerCallback:Landroid/os/AutoContainerManager$Callback;

.field private bydAutoSpeed:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

.field private final carScaleNomal:[F

.field private volatile carType:I

.field private cruiseExtraPresenter:Lextview/presentation/cruise/CruiseExtraPresenter;

.field private cruiseExtraView:Lg/a/b/a;

.field private final cruiseStateListener:Lf/h/l/d/a;

.field private currentTimeMillis:J

.field private displayHeight:I

.field private displayType:I

.field private displayWidth:I

.field private lastLocStatus:Lcom/autosdk/bussiness/location/constant/SdkLocStatus;

.field private mAutoContainerManager:Landroid/os/AutoContainerManager;

.field private final mBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

.field private mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

.field public mHandler:Landroid/os/Handler;

.field private mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

.field public mOriginalLocationCallback:Lcom/autosdk/bussiness/location/listener/OriginalLocationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autosdk/bussiness/location/listener/OriginalLocationCallback<",
            "Lcom/autosdk/bussiness/location/constant/SdkLocStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mRouteResultLayer:Lcom/autosdk/bussiness/layer/RouteResultLayer;

.field private mSearchlayer:Lcom/autosdk/bussiness/layer/SearchLayer;

.field private final mSettingObserver:Lcom/autosdk/bussiness/settings/ISettingObserver;

.field private mUserLayer:Lcom/autosdk/bussiness/layer/UserLayer;

.field private volatile mapIsFinish:Z

.field private mapviewModeParam:Lcom/autonavi/gbl/map/model/MapviewModeParam;

.field private navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

.field private navExtraView:Lg/a/c/p;

.field private naviStation:I

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final skeletonCarRunnable:Ljava/lang/Runnable;

.field private final surfaceId:I

.field private surfaceView:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

.field private final theme:Lcom/autonavi/gbl/data/model/Theme;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/byd/automap/presentation/PresentationView;->surfaceId:I

    new-instance v0, Lcom/autonavi/gbl/data/model/Theme;

    invoke-direct {v0}, Lcom/autonavi/gbl/data/model/Theme;-><init>()V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    const/16 v0, 0x15

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->carScaleNomal:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byd/automap/presentation/PresentationView;->currentTimeMillis:J

    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/layer/LayerController;->getUserLayer(I)Lcom/autosdk/bussiness/layer/UserLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mUserLayer:Lcom/autosdk/bussiness/layer/UserLayer;

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/layer/LayerController;->getSearchLayer(I)Lcom/autosdk/bussiness/layer/SearchLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mSearchlayer:Lcom/autosdk/bussiness/layer/SearchLayer;

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/layer/LayerController;->getRouteResultLayer(I)Lcom/autosdk/bussiness/layer/RouteResultLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mRouteResultLayer:Lcom/autosdk/bussiness/layer/RouteResultLayer;

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getLayerController()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/layer/LayerController;->getDrivingLayer(I)Lcom/autosdk/bussiness/layer/DrivingLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    new-instance v0, Lcom/byd/automap/presentation/PresentationView$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/byd/automap/presentation/PresentationView$a;-><init>(Lcom/byd/automap/presentation/PresentationView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/byd/automap/presentation/PresentationView;->mapIsFinish:Z

    new-instance v0, Lcom/byd/automap/presentation/PresentationView$c;

    invoke-direct {v0, p0}, Lcom/byd/automap/presentation/PresentationView$c;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/byd/automap/presentation/PresentationView$d;

    invoke-direct {v0, p0}, Lcom/byd/automap/presentation/PresentationView$d;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->skeletonCarRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/byd/automap/presentation/PresentationView$e;

    invoke-direct {v0, p0}, Lcom/byd/automap/presentation/PresentationView$e;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseStateListener:Lf/h/l/d/a;

    new-instance v0, Lcom/byd/automap/presentation/PresentationView$f;

    invoke-direct {v0, p0}, Lcom/byd/automap/presentation/PresentationView$f;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mSettingObserver:Lcom/autosdk/bussiness/settings/ISettingObserver;

    new-instance v0, Lcom/byd/automap/presentation/PresentationView$g;

    invoke-direct {v0, p0}, Lcom/byd/automap/presentation/PresentationView$g;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mOriginalLocationCallback:Lcom/autosdk/bussiness/location/listener/OriginalLocationCallback;

    sget-object v0, Lf/k/c/q/b;->a:Lf/k/c/q/b;

    invoke-static {p0, v0}, Lcom/autosdk/bussiness/common/utils/WrapUtils;->getAutoContainerCallback1(Ljava/lang/Object;Lcom/autosdk/bussiness/common/utils/WrapUtils$TypeBuilder;)Landroid/os/AutoContainerManager$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->autoContainerCallback:Landroid/os/AutoContainerManager$Callback;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/byd/automap/presentation/PresentationView;->displayWidth:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/byd/automap/presentation/PresentationView;->displayHeight:I

    if-le v3, v2, :cond_0

    iput v3, p0, Lcom/byd/automap/presentation/PresentationView;->displayWidth:I

    iput v2, p0, Lcom/byd/automap/presentation/PresentationView;->displayHeight:I

    :cond_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/byd/automap/presentation/PresentationView;->displayWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget v3, p0, Lcom/byd/automap/presentation/PresentationView;->displayHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x4

    sget p2, Lcom/autonavi/auto/common/util/MutilWindowUtil;->screenStatus:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    iget p2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "PresentationView"

    const-string p2, "size :{?} * {?} , getWidth:{?}, ScreenStatus:{?},screenStatus:{?},density:{?}"

    invoke-static {p1, p2, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method public static synthetic access$000(Lcom/byd/automap/presentation/PresentationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->resetMapCenter()V

    return-void
.end method

.method public static synthetic access$100(Lcom/byd/automap/presentation/PresentationView;)Lextview/presentation/navi/NavExtraPresenterforR;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/byd/automap/presentation/PresentationView;)Lcom/autosdk/bussiness/location/constant/SdkLocStatus;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/presentation/PresentationView;->lastLocStatus:Lcom/autosdk/bussiness/location/constant/SdkLocStatus;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/byd/automap/presentation/PresentationView;Lcom/autosdk/bussiness/location/constant/SdkLocStatus;)Lcom/autosdk/bussiness/location/constant/SdkLocStatus;
    .locals 0

    iput-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->lastLocStatus:Lcom/autosdk/bussiness/location/constant/SdkLocStatus;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/byd/automap/presentation/PresentationView;)J
    .locals 2

    iget-wide v0, p0, Lcom/byd/automap/presentation/PresentationView;->currentTimeMillis:J

    return-wide v0
.end method

.method public static synthetic access$1102(Lcom/byd/automap/presentation/PresentationView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/byd/automap/presentation/PresentationView;->currentTimeMillis:J

    return-wide p1
.end method

.method public static synthetic access$1200(Lcom/byd/automap/presentation/PresentationView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/presentation/PresentationView;->skeletonCarRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/byd/automap/presentation/PresentationView;)I
    .locals 0

    iget p0, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    return p0
.end method

.method public static synthetic access$202(Lcom/byd/automap/presentation/PresentationView;I)I
    .locals 0

    iput p1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    return p1
.end method

.method public static synthetic access$300(Lcom/byd/automap/presentation/PresentationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->updateViewExtra()V

    return-void
.end method

.method public static synthetic access$400(Lcom/byd/automap/presentation/PresentationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->switchDisplayType()V

    return-void
.end method

.method public static synthetic access$500(Lcom/byd/automap/presentation/PresentationView;)Lg/a/c/p;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/byd/automap/presentation/PresentationView;)Lcom/autosdk/bussiness/layer/MapLayer;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/byd/automap/presentation/PresentationView;)Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/presentation/PresentationView;->bydAutoSpeed:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/byd/automap/presentation/PresentationView;)I
    .locals 0

    iget p0, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    return p0
.end method

.method public static synthetic access$900(Lcom/byd/automap/presentation/PresentationView;)Lextview/presentation/cruise/CruiseExtraPresenter;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseExtraPresenter:Lextview/presentation/cruise/CruiseExtraPresenter;

    return-object p0
.end method

.method private createView()Landroid/view/View;
    .locals 3

    new-instance v0, Lcom/byd/automap/presentation/PresentationView$b;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/byd/automap/presentation/PresentationView$b;-><init>(Lcom/byd/automap/presentation/PresentationView;Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d01cf

    goto :goto_0

    :cond_0
    const v1, 0x7f0d01cc

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private doMapTextSize()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/byd/automap/presentation/PresentationView;->reAdjustMapScale(I)V

    return-void
.end method

.method private getDefaultTheme()Lcom/autonavi/gbl/data/model/Theme;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lf/h/c/v;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    sget v2, Lcom/autosdk/common/settings/data/ThemeDataController;->defaultThemeID:I

    iput v2, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    const-string v2, ""

    iput-object v2, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->imageFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->filePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    return-object v0
.end method

.method private getGoldTheme()Lcom/autonavi/gbl/data/model/Theme;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lf/h/c/v;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    sget v2, Lcom/autosdk/common/settings/data/ThemeDataController;->defaultGoldThemeID:I

    iput v2, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    const-string v2, ""

    iput-object v2, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->imageFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->filePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    return-object v0
.end method

.method private getPifuTheme()Lcom/autonavi/gbl/data/model/Theme;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lf/h/c/v;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    sget v2, Lcom/autosdk/common/settings/data/ThemeDataController;->pifuThemeID:I

    iput v2, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    const-string v2, ""

    iput-object v2, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->imageFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->filePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    return-object v0
.end method

.method private getShamoTheme()Lcom/autonavi/gbl/data/model/Theme;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lf/h/c/v;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    sget v2, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    iput v2, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    const-string v2, ""

    iput-object v2, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->imageFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->filePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    return-object v0
.end method

.method private getSnowTheme()Lcom/autonavi/gbl/data/model/Theme;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lf/h/c/v;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    sget v2, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    iput v2, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    const-string v2, ""

    iput-object v2, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->imageFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->filePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    return-object v0
.end method

.method private initCarPosition()V
    .locals 13

    invoke-static {}, Lf/h/c/n0/f1;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PresentationView"

    const-string v3, "initCarPosition()=====:"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarVisible(Z)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lf/k/c/q/j;

    invoke-direct {v3, p0}, Lf/k/c/q/j;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/autosdk/bussiness/layer/MapLayer;->setFollowMode(Z)V

    invoke-static {}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->getInstance()Lcom/autosdk/bussiness/location/utils/LocationUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->getLocInfo()Lcom/autonavi/gbl/pos/model/LocInfo;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "locInfo:{?}"

    invoke-static {v2, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->getInstance()Lcom/autosdk/bussiness/location/utils/LocationUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->convertLocInfo2Location(Lcom/autonavi/gbl/pos/model/LocInfo;)Landroid/location/Location;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "location:{?}"

    invoke-static {v2, v6, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/autonavi/gbl/pos/model/LocInfo;->matchInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v5, "matchInfo:{?}"

    invoke-static {v2, v5, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/autonavi/gbl/pos/model/LocInfo;->matchInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v1, v1, Lcom/autonavi/gbl/pos/model/LocInfo;->matchInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/autonavi/gbl/pos/model/LocMatchInfo;

    if-eqz v11, :cond_3

    iget-object v5, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v10

    invoke-static {}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->getInstance()Lcom/autosdk/map/cruise/SpeedAndCruiseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->getNavType()I

    move-result v12

    invoke-virtual/range {v5 .. v12}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarPositionMatchInfo(DDFLcom/autonavi/gbl/pos/model/LocMatchInfo;I)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setDefaultCarPosition()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->carScaleNomal:[F

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarScaleByMapLevel([F)Z

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setFirstCarPosition()V

    :cond_5
    :goto_3
    return-void
.end method

.method private initCruise()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PresentationView"

    const-string v2, "initCruise"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lg/a/b/a;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->view:Landroid/view/View;

    invoke-direct {v0, v1}, Lg/a/b/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseExtraView:Lg/a/b/a;

    new-instance v0, Lextview/presentation/cruise/CruiseExtraPresenter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lextview/presentation/cruise/CruiseExtraPresenter;-><init>(I)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseExtraPresenter:Lextview/presentation/cruise/CruiseExtraPresenter;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseExtraView:Lg/a/b/a;

    invoke-virtual {v1, v0}, Lg/a/a/a/b;->a(Lg/a/a/a/d;)V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseExtraPresenter:Lextview/presentation/cruise/CruiseExtraPresenter;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseExtraView:Lg/a/b/a;

    invoke-virtual {v0, v1}, Lg/a/a/a/a;->attachView(Lg/a/a/a/e;)V

    return-void
.end method

.method private initMain()V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/autonavi/skin/NightModeGlobal;->setNightExtra(Z)V

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    const-string v3, "PresentationView"

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v0, v4, :cond_4

    new-instance v0, Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v6, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;->dashboard:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;

    invoke-direct {v0, v6}, Lcom/autosdk/common/storage/MapSharePreference;-><init>(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;)V

    sget-object v6, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->dashboardNaviThemeType:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v0, v6, v5}, Lcom/autosdk/common/storage/MapSharePreference;->e(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;I)I

    move-result v0

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "initMain small themeType = {?}"

    invoke-static {v3, v7, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v0, v4, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setShamoTheme()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setSnowTheme()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setGoldTheme()V

    goto :goto_2

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "initMain full screen"

    invoke-static {v3, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setDefaultTheme()V

    :goto_2
    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->sendDataToCluster()V

    :cond_5

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    const/4 v2,0x0

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/MapLayer;->setLockMapRollAngle(Z)V

    #const/high16 v2, 0x428c0000    # 70.0f
    #const/high16 v2, 0x42700000    # 60.0f
    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/MapLayer;->setMaxCameraDegree(F)V

    new-instance v0, Lcom/autonavi/gbl/map/model/MapParameter;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/MapParameter;-><init>()V

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapParameter;->value1:I

    const/16 v1, 0xf

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapParameter;->value2:I

    iput v2, v0, Lcom/autonavi/gbl/map/model/MapParameter;->value3:I

    iput v2, v0, Lcom/autonavi/gbl/map/model/MapParameter;->value4:I

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    const/16 v3, 0x42

    invoke-virtual {v1, v5, v3, v0}, Lcom/autosdk/bussiness/map/MapController;->setMapBusinessDataPara(IILcom/autonavi/gbl/map/model/MapParameter;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    #const/high16 v1, 0x41800000    # 16.0f
    #const/high16 v1, 0x41880000    # 17.0f
    const/high16 v1, 0x41A00000    # 20.0f

    invoke-virtual {v0, v5, v1}, Lcom/autosdk/bussiness/map/MapController;->setMaxZoomLevel(IF)V

    invoke-virtual {v0, v5}, Lcom/autosdk/bussiness/map/MapController;->setRollMode(I)V

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/d/a/c;->j(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/d/a/c;->q(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/MapLayer;->showFlyLine(Z)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v0

    iget v1, p0, Lcom/byd/automap/presentation/PresentationView;->displayWidth:I

    int-to-double v3, v1

    #const-wide v6, 0x3fe3333333333333L    # 0.6
    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v6

    double-to-int v1, v3

    iget v3, p0, Lcom/byd/automap/presentation/PresentationView;->displayHeight:I

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-virtual {v0, v1, v3, v4}, Lcom/autonavi/gbl/map/OperatorBusiness;->setMapZoomScaleAdaptive(IIF)V

    :cond_7
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(IZ)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byd/automap/presentation/PresentationView;->updateSkyBoxStyle(I)V

    return-void
.end method

.method private initNav()V
    .locals 2

    new-instance v0, Lg/a/c/p;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->view:Landroid/view/View;

    invoke-direct {v0, v1}, Lg/a/c/p;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    new-instance v0, Lextview/presentation/navi/NavExtraPresenterforR;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;-><init>(I)V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v1, v0}, Lg/a/a/a/b;->a(Lg/a/a/a/d;)V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0, v1}, Lg/a/a/a/a;->attachView(Lg/a/a/a/e;)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/h/c/n0/p1;->j(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$initCarPosition$2()V
    .locals 2

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarVisible(Z)V

    return-void
.end method

.method public static synthetic lambda$new$4(Lcom/byd/automap/presentation/PresentationView;)V
    .locals 3

    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Lf/h/c/n0/n1;->d(J)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PresentationView"

    if-eqz v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "onUpdateDirectionInfo, isFastClick return"

    invoke-static {v2, v0, p0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "onUpdateDirectionInfo"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/e/b;->j()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->onUpdateDirectionInfo(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic lambda$new$5(Ljava/lang/ref/WeakReference;I[B)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byd/automap/presentation/PresentationView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PresentationView"

    const-string v4, "receivedInfo2 type: {?} "

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lg/a/d/a;->b(Ljava/nio/ByteBuffer;)Lg/a/d/a;

    move-result-object p2

    if-eqz p2, :cond_4

    const/16 v1, 0xb

    if-ne p1, v1, :cond_4

    invoke-virtual {p2}, Lg/a/d/a;->g()I

    move-result p1

    invoke-virtual {p2}, Lg/a/d/a;->e()I

    move-result v1

    invoke-virtual {p2}, Lg/a/d/a;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v0

    const/4 p1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, p1

    const/4 p1, 0x3

    aput-object v4, v5, p1

    const-string p1, "receivedInfo2 cls: {?}, subId:{?} ,intParam1:{?},strParam1:{?}"

    invoke-static {v2, p1, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v1, v4}, Lcom/byd/automap/presentation/PresentationView;->switchTheme(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lg/a/e/b;->j()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lg/a/e/b;->j()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lf/k/c/q/f;

    invoke-direct {p2, p0}, Lf/k/c/q/f;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    const-wide/16 v0, 0x50

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, v1, v4}, Lcom/byd/automap/presentation/PresentationView;->switchTheme(ILjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$6(Ljava/lang/ref/WeakReference;)Lcom/autosdk/bussiness/common/utils/WrapUtils$ReceivedInfo;
    .locals 1

    new-instance v0, Lf/k/c/q/e;

    invoke-direct {v0, p0}, Lf/k/c/q/e;-><init>(Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method private synthetic lambda$onCreate$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->sendNavScreenState()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onNetworkChange$3()V
    .locals 3

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/bussiness/map/MapController;->setTmcVisible(IZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sendNavScreenState$1()V
    .locals 4

    iget-boolean v0, p0, Lcom/byd/automap/presentation/PresentationView;->mapIsFinish:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/byd/automap/presentation/PresentationView;->mapIsFinish:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "PresentationView"

    const-string v3, "sendNavScreenState mapIsFinish:{?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->setNavScreenState(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->setNavScreenState(I)V

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/byd/automap/presentation/PresentationView;->mapIsFinish:Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$setDefaultTheme$7()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "PresentationView"

    const-string v5, "setDefaultTheme()====theme:{?}, theme.id:{?}"

    invoke-static {v2, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    iget v1, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    sget v5, Lcom/autosdk/common/settings/data/ThemeDataController;->defaultThemeID:I

    if-ne v1, v5, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "setDefaultTheme, isFastClick return"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    aput-object v5, v1, v4

    const-string v5, "setDefaultTheme()====carType:{?}, navExtraView:{?}"

    invoke-static {v2, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->getDefaultTheme()Lcom/autonavi/gbl/data/model/Theme;

    move-result-object v5

    iget-object v5, v5, Lcom/autonavi/gbl/data/model/FileDataItem;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Lcom/autosdk/bussiness/map/MapController;->setMapStylePath(ILjava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/map/MapController;->getMapExtraStyleObserver()Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/map/MapController;->getMapExtraStyleObserver()Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

    move-result-object v1

    sget-object v5, Lcom/autosdk/bussiness/map/MapController;->stringStyles:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-interface {v1, v5}, Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;->onStyleChange(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v1

    sget v5, Lcom/autosdk/common/settings/data/ThemeDataController;->defaultThemeID:I

    invoke-virtual {v1, v5}, Lcom/autosdk/common/settings/data/ThemeDataController;->setExtraCurrentThemeID(I)V

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v5

    iget v6, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v6, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v0

    :goto_1
    invoke-virtual {v1, v0, v5, v6, v4}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    goto :goto_4

    :cond_5
    :goto_2
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v5, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v5, :cond_6

    move v5, v3

    goto :goto_3

    :cond_6
    move v5, v0

    :goto_3
    invoke-virtual {v1, v0, v4, v5, v4}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    :goto_4
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    invoke-direct {p0, v0}, Lcom/byd/automap/presentation/PresentationView;->saveThemeData(I)V

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    invoke-virtual {v0, v1}, Lg/a/c/p;->K(Lcom/autonavi/gbl/data/model/Theme;)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "setDefaultTheme()====to updateView"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->updateViewExtra()V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->u()V

    :cond_7
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->updateViewExtra()V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->r()V

    :cond_8
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->s()V

    :cond_9
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->t()V

    :cond_a
    return-void
.end method

.method private synthetic lambda$setGoldTheme$10()V
    .locals 7

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    iget v0, v0, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->defaultGoldThemeID:I

    const-string v2, "PresentationView"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "setGoldTheme, isFastClick return"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget v4, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "setGoldTheme()====carType:{?}, navExtraView:{?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->getGoldTheme()Lcom/autonavi/gbl/data/model/Theme;

    move-result-object v2

    iget-object v2, v2, Lcom/autonavi/gbl/data/model/FileDataItem;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/autosdk/bussiness/map/MapController;->setMapStylePath(ILjava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/map/MapController;->getMapExtraStyleObserver()Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/map/MapController;->getMapExtraStyleObserver()Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

    move-result-object v1

    sget-object v4, Lcom/autosdk/bussiness/map/MapController;->stringStyles:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v1, v4}, Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;->onStyleChange(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v1

    sget v4, Lcom/autosdk/common/settings/data/ThemeDataController;->defaultGoldThemeID:I

    invoke-virtual {v1, v4}, Lcom/autosdk/common/settings/data/ThemeDataController;->setExtraCurrentThemeID(I)V

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v4

    iget v6, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    move v3, v0

    :goto_0
    invoke-virtual {v1, v0, v4, v3, v5}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    goto :goto_3

    :cond_4
    :goto_1
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v4, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_2
    invoke-virtual {v1, v0, v5, v3, v5}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    :goto_3
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    invoke-direct {p0, v2}, Lcom/byd/automap/presentation/PresentationView;->saveThemeData(I)V

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    invoke-virtual {v0, v1}, Lg/a/c/p;->K(Lcom/autonavi/gbl/data/model/Theme;)V

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiLink5_1()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->t()V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->q()V

    :cond_7
    :goto_4
    return-void
.end method

.method private synthetic lambda$setShamoTheme$8()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "PresentationView"

    const-string v5, "setShamoTheme()====theme:{?}, theme.id:{?}"

    invoke-static {v2, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    iget v1, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    sget v5, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v1, v5, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "setShamoTheme, isFastClick return"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    aput-object v5, v1, v4

    const-string v5, "setShamoTheme()====carType:{?}, navExtraView:{?}"

    invoke-static {v2, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->getShamoTheme()Lcom/autonavi/gbl/data/model/Theme;

    move-result-object v5

    iget-object v5, v5, Lcom/autonavi/gbl/data/model/FileDataItem;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Lcom/autosdk/bussiness/map/MapController;->setMapStylePath(ILjava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/map/MapController;->getMapExtraStyleObserver()Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/map/MapController;->getMapExtraStyleObserver()Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

    move-result-object v1

    sget-object v5, Lcom/autosdk/bussiness/map/MapController;->stringStyles:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-interface {v1, v5}, Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;->onStyleChange(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v1

    sget v5, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    invoke-virtual {v1, v5}, Lcom/autosdk/common/settings/data/ThemeDataController;->setExtraCurrentThemeID(I)V

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v5

    iget v6, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v6, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v0

    :goto_1
    invoke-virtual {v1, v0, v5, v6, v4}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    goto :goto_4

    :cond_5
    :goto_2
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v5, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v5, :cond_6

    move v5, v3

    goto :goto_3

    :cond_6
    move v5, v0

    :goto_3
    invoke-virtual {v1, v0, v4, v5, v4}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    :goto_4
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/byd/automap/presentation/PresentationView;->saveThemeData(I)V

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    invoke-virtual {v0, v1}, Lg/a/c/p;->K(Lcom/autonavi/gbl/data/model/Theme;)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "setShamoTheme()====to updateView"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->updateViewExtra()V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->u()V

    :cond_7
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->updateViewExtra()V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->r()V

    :cond_8
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->s()V

    :cond_9
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiLink5_1()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->t()V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->q()V

    :cond_b
    :goto_5
    return-void
.end method

.method private synthetic lambda$setSnowTheme$9()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "PresentationView"

    const-string v5, "setSnowTheme()====theme:{?}, theme.id:{?}"

    invoke-static {v2, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    iget v1, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    sget v5, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-ne v1, v5, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "setSnowTheme, isFastClick return"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v5, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    aput-object v5, v1, v4

    const-string v5, "setSnowTheme()====carType:{?}, navExtraView:{?}"

    invoke-static {v2, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->getSnowTheme()Lcom/autonavi/gbl/data/model/Theme;

    move-result-object v5

    iget-object v5, v5, Lcom/autonavi/gbl/data/model/FileDataItem;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Lcom/autosdk/bussiness/map/MapController;->setMapStylePath(ILjava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/map/MapController;->getMapExtraStyleObserver()Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/map/MapController;->getMapExtraStyleObserver()Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;

    move-result-object v1

    sget-object v5, Lcom/autosdk/bussiness/map/MapController;->stringStyles:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-interface {v1, v5}, Lcom/autosdk/bussiness/map/observer/MapExtraStyleObserver;->onStyleChange(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v1

    sget v5, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    invoke-virtual {v1, v5}, Lcom/autosdk/common/settings/data/ThemeDataController;->setExtraCurrentThemeID(I)V

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v5, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v5, :cond_5

    move v5, v3

    goto :goto_1

    :cond_5
    move v5, v0

    :goto_1
    invoke-virtual {v1, v0, v4, v5, v4}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/autosdk/bussiness/layer/LayerController;->updateStyle(IZ)V

    goto :goto_4

    :cond_6
    :goto_2
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v5, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v5, :cond_7

    move v5, v3

    goto :goto_3

    :cond_7
    move v5, v0

    :goto_3
    invoke-virtual {v1, v0, v4, v5, v4}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    :cond_8
    :goto_4
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/byd/automap/presentation/PresentationView;->saveThemeData(I)V

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    invoke-virtual {v0, v1}, Lg/a/c/p;->K(Lcom/autonavi/gbl/data/model/Theme;)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "setSnowTheme()====to updateView"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->updateViewExtra()V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->u()V

    :cond_9
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->updateViewExtra()V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->r()V

    :cond_a
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->s()V

    :cond_b
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->t()V

    :cond_c
    return-void
.end method

.method private operateRoadCondition(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PresentationView"

    const-string v4, "operateRoadCondition   trafficType={?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lcom/autosdk/bussiness/map/MapController;->setTmcVisible(IZ)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/autosdk/bussiness/map/MapController;->setTmcVisible(IZ)V

    :goto_1
    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    return-void
.end method

.method private reAdjustMapScale(I)V
    .locals 7

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;

    invoke-direct {v2}, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;-><init>()V

    float-to-double v3, v0

    const-wide v5, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v3, v5

    iput-wide v3, v2, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;->poiScale:D

    iput-wide v3, v2, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;->bgScale:D

    iput-wide v3, v2, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;->bubbleScale:D

    invoke-virtual {v1}, Lcom/autonavi/gbl/map/MapView;->getLayerMgr()Lcom/autonavi/gbl/map/layer/LayerMgr;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/gbl/map/layer/LayerMgr;->setAllPointLayerItemsScale(Lcom/autonavi/gbl/map/layer/model/ScaleInfo;)V

    invoke-virtual {v1}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v0

    #const v1, 0x3f99999a    # 1.2f
    const v1, 0x3fa66666    # 1.3f

    add-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/autonavi/gbl/map/OperatorBusiness;->setMapTextScale(F)V

    :cond_0
    return-void
.end method

.method private registerLocaleChanged()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byd/automap/presentation/PresentationView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resetMapCenter()V
    .locals 10

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PresentationView"

    const-string v4, "resetMapCenter  displayType:{?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isRPlatform()Z

    move-result v1

    const/4 v4, 0x3

    const v5, 0x3f333333    # 0.7f

    const/4 v6, 0x2

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/autosdk/bussiness/map/MapController;->getMapProjectionCenter(I)Lcom/autonavi/gbl/map/model/ProjectionCenter;

    move-result-object v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    iget v7, v1, Lcom/autonavi/gbl/map/model/ProjectionCenter;->percentX:F

    iget v1, v1, Lcom/autonavi/gbl/map/model/ProjectionCenter;->percentY:F

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v0

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->naviStation:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v4

    const-string v0, "resetMapCenter() x:{?},y:{?},displayType:{?},naviStation:{?}"

    invoke-static {v2, v0, v8}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    const-wide v2, 0x3e7ad7f29abcaf48L    # 1.0E-7

    if-ne v0, v4, :cond_8

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->naviStation:I

    const v4, 0x3f0ccccd    # 0.55f

    if-ne v0, v6, :cond_4

    invoke-static {}, Lf/k/v/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3f35c290    # 0.71000004f

    sub-float v5, v0, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v7, v5

    cmpl-double v5, v7, v2

    if-gtz v5, :cond_5

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    if-lez v1, :cond_13

    goto :goto_1

    :cond_1
    invoke-static {}, Lf/k/v/b;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3f333334    # 0.70000005f

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v7, v0

    cmpl-double v0, v7, v2

    if-gtz v0, :cond_2

    sub-float v0, v4, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_13

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const v1, 0x3f333334    # 0.70000005f

    invoke-virtual {v0, v6, v1, v4, v4}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFFF)V

    goto/16 :goto_7

    :cond_3
    const v0, 0x3f28f5c3    # 0.66f

    sub-float v5, v0, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v7, v5

    cmpl-double v5, v7, v2

    if-gtz v5, :cond_5

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    if-lez v1, :cond_13

    goto :goto_2

    :cond_4
    invoke-static {}, Lf/k/v/b;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x3e800000    # 0.25f

    sub-float v5, v0, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v7, v5

    cmpl-double v5, v7, v2

    if-gtz v5, :cond_5

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    if-lez v1, :cond_13

    :cond_5
    :goto_1
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v6, v0, v4, v4}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFFF)V

    goto/16 :goto_7

    :cond_6
    invoke-static {}, Lf/k/v/b;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x3e75c290    # 0.24000001f

    sub-float v5, v0, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v7, v5

    cmpl-double v5, v7, v2

    if-gtz v5, :cond_5

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    if-lez v1, :cond_13

    goto :goto_1

    :cond_7
    const v0, 0x3e4ccccd    # 0.2f

    sub-float v5, v0, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v7, v5

    cmpl-double v5, v7, v2

    if-gtz v5, :cond_5

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    if-lez v1, :cond_13

    :goto_2
    goto :goto_1

    :cond_8
    invoke-static {}, Lf/k/v/b;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x3ef851ec    # 0.485f

    sub-float v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    cmpl-double v4, v7, v2

    if-gtz v4, :cond_9

    sub-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    if-lez v1, :cond_13

    :cond_9
    :goto_3
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v6, v0, v5, v5}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFFF)V

    goto/16 :goto_7

    :cond_a
    invoke-static {}, Lf/k/v/b;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x3ef33333    # 0.475f

    sub-float v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    cmpl-double v4, v7, v2

    if-gtz v4, :cond_9

    sub-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    if-lez v1, :cond_13

    goto :goto_3

    :cond_b
    const v0, 0x3edeb852    # 0.435f

    sub-float v4, v0, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    cmpl-double v4, v7, v2

    if-gtz v4, :cond_9

    sub-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    cmpl-double v1, v7, v2

    if-lez v1, :cond_13

    goto :goto_3

    :cond_c
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3f07ae14    # 0.53f

    if-eqz v0, :cond_f

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    if-ne v0, v4, :cond_e

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiLink5_1()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_4
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    goto :goto_5

    :cond_d
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const v1, 0x3f570a3d    # 0.84f

    :goto_5
    invoke-virtual {v0, v6, v1, v3, v3}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFFF)V

    goto :goto_7

    :cond_e
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    invoke-virtual {v0, v6, v2, v5, v5}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFFF)V

    goto :goto_7

    :cond_f
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    const v5, 0x3f2e147b    # 0.68f

    if-nez v0, :cond_11

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_6

    :cond_10
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    if-ne v0, v4, :cond_e

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const v2, 0x3f266666    # 0.65f

    invoke-virtual {v0, v6, v1, v2, v2}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFFF)V

    goto :goto_7

    :cond_11
    :goto_6
    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    if-ne v0, v4, :cond_e

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4

    :cond_12
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    #const v1, 0x3f560419    # 0.836f
    invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getSmallCarPosition()F

    move-result v1

    goto :goto_5

    :cond_13
    :goto_7
    return-void
.end method

.method private saveThemeData(I)V
    .locals 2

    new-instance v0, Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;->dashboard:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;

    invoke-direct {v0, v1}, Lcom/autosdk/common/storage/MapSharePreference;-><init>(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;)V

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->dashboardNaviThemeType:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v0, v1, p1}, Lcom/autosdk/common/storage/MapSharePreference;->k(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;I)V

    return-void
.end method

.method private sendNavScreenState()V
    .locals 2

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lf/k/c/q/d;

    invoke-direct {v1, p0}, Lf/k/c/q/d;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDefaultCarPosition()V
    .locals 7

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/location/LocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarPosition(DDF)V

    :cond_0
    return-void
.end method

.method private setDefaultTheme()V
    .locals 2

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lf/k/c/q/i;

    invoke-direct {v1, p0}, Lf/k/c/q/i;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setFirstCarPosition()V
    .locals 13

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PresentationView"

    const-string v3, "setFirstCarPosition()=====:"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/autosdk/bussiness/layer/MapLayer;->setFollowMode(Z)V

    invoke-static {}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->getInstance()Lcom/autosdk/bussiness/location/utils/LocationUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->getLocInfo()Lcom/autonavi/gbl/pos/model/LocInfo;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "locInfo:{?} {?}"

    invoke-static {v2, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->getInstance()Lcom/autosdk/bussiness/location/utils/LocationUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->convertLocInfo2Location(Lcom/autonavi/gbl/pos/model/LocInfo;)Landroid/location/Location;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "location:{?}"

    invoke-static {v2, v6, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/autonavi/gbl/pos/model/LocInfo;->matchInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v5, "matchInfo:{?}"

    invoke-static {v2, v5, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/autonavi/gbl/pos/model/LocInfo;->matchInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v1, v1, Lcom/autonavi/gbl/pos/model/LocInfo;->matchInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/autonavi/gbl/pos/model/LocMatchInfo;

    if-eqz v11, :cond_5

    iget-object v5, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v10

    invoke-static {}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->getInstance()Lcom/autosdk/map/cruise/SpeedAndCruiseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->getNavType()I

    move-result v12

    invoke-virtual/range {v5 .. v12}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarPositionMatchInfo(DDFLcom/autonavi/gbl/pos/model/LocMatchInfo;I)V

    goto :goto_2

    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "setFirstCarPosition() setCarPosition:"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4}, Landroid/location/Location;->getBearing()F

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarPosition(DDF)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setDefaultCarPosition()V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->carScaleNomal:[F

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarScaleByMapLevel([F)Z

    return-void
.end method

.method private setGoldTheme()V
    .locals 2

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lf/k/c/q/g;

    invoke-direct {v1, p0}, Lf/k/c/q/g;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setMapMode(I)V
    .locals 6
    const/4 p1, 0x2

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mapviewModeParam:Lcom/autonavi/gbl/map/model/MapviewModeParam;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;

    invoke-direct {v0}, Lcom/autonavi/gbl/map/model/MapviewModeParam;-><init>()V

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mapviewModeParam:Lcom/autonavi/gbl/map/model/MapviewModeParam;

    const/4 v1, 0x2

    iput v1, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I
    :cond_0
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mapviewModeParam:Lcom/autonavi/gbl/map/model/MapviewModeParam;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->bChangeCenter:Z

    const/4 v3, 0x2

    iput v3, v0, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    iget v4, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    const v5, 0x3

    if-ne v4, v5, :cond_else

    #const/high16 v3, 0x41800000    # 16.0f
    #const/high16 v3, 0x41700000    # 15.0f
    #const/high16 v3, 0x41880000    # 17.0f
    invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getInstrumentSmallZoomLevel()F

    move-result v3

    goto :cond_end

    :cond_else

    #const/high16 v3, 0x41880000    # 17.0f
    invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getInstrumentSmallZoomLevel()F

    move-result v3
    :cond_end

    # 仪表处于车道级时保持车道级自身的缩放，不被小屏/全屏切换冲掉
    const-string v4, "zoom"

    invoke-static {v4}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v3

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result p1

    const-string v0, "PresentationView"

    const/4 v2, 0x0

    #const/high16 v3, 0x41800000    # 16.0f
    #const/high16 v3, 0x41880000    # 17.0f

    if-eqz p1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v4, "setMapMode, isNetworkConnected"

    invoke-static {v0, v4, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->mapviewModeParam:Lcom/autonavi/gbl/map/model/MapviewModeParam;

    :goto_1
    iput v3, p1, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    goto :goto_2

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {}, Lf/h/c/n0/d2;->b()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p1, v2

    const-string v4, "setMapMode, NO isNetworkConnected getOfflineMapMark:{?}"

    invoke-static {v0, v4, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/n0/d2;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->isDownloadCurrentCityMap()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->mapviewModeParam:Lcom/autonavi/gbl/map/model/MapviewModeParam;

    const/high16 v3, 0x41100000    # 9.0f

    goto :goto_1

    :cond_3
    new-array p1, v2, [Ljava/lang/Object;

    const-string v4, "setMapMode, isDownloadCurrentCityMap:"

    invoke-static {v0, v4, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :goto_2
    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    iget-object v3, p0, Lcom/byd/automap/presentation/PresentationView;->mapviewModeParam:Lcom/autonavi/gbl/map/model/MapviewModeParam;

    const/4 v4, 0x2

    iput v4, v3, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v3, v5}, Lcom/autosdk/bussiness/map/MapController;->setMapMode(ILcom/autonavi/gbl/map/model/MapviewModeParam;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(IZ)V

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    new-array p1, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mapviewModeParam:Lcom/autonavi/gbl/map/model/MapviewModeParam;

    iget v1, v1, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "setMapMode, mapZoomLevel:{?} "

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/autonavi/gbl/map/MapView;->getOperatorPosture()Lcom/autonavi/gbl/map/OperatorPosture;

    move-result-object p1

    # 车道级下俯仰角交给引擎，普通模式取悬浮面板参数
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->isInLane()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pitch"

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/map/OperatorPosture;->setPitchAngle(F)V

    :cond_4

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    # 兜底：切换显示模式后把车道级的缩放/俯仰重新贴回去
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->reapply()V

    return-void
.end method

.method private setShamoTheme()V
    .locals 2

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lf/k/c/q/c;

    invoke-direct {v1, p0}, Lf/k/c/q/c;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setSnowTheme()V
    .locals 2

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lf/k/c/q/a;

    invoke-direct {v1, p0}, Lf/k/c/q/a;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private switchDisplayType()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "PresentationView"

    const-string v4, "switchDisplayType displayType\uff1a{?},getNaviType()\uff1a{?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void
.end method

.method private declared-synchronized switchTheme(ILjava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const-string v0, "PresentationView"

    const-string v1, "switchTheme intParam1: {?} "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_6

    const/4 v0, 0x7

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setSnowTheme()V

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "14000029"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "111000011"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setGoldTheme()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "14000033"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "14000036"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "14000037"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "14000040"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setDefaultTheme()V

    goto :goto_2

    :cond_5
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "111000003"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "111000019"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "14000041"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "14000045"

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->setShamoTheme()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateMapStytle(Z)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PresentationView"

    const-string v4, "updateMapStytle isNight: {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Lf/h/c/n0/n1;->d(J)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "updateMapStytle, isFastClick return"

    invoke-static {v2, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/autosdk/bussiness/layer/LayerController;->clearPathsCacheStyle(I)V

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v1

    sget v4, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-eq v1, v4, :cond_2

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v1

    sget v4, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v1, v4, :cond_4

    :cond_2
    invoke-static {}, Lcom/autonavi/skin/SkinManager;->getInstance()Lcom/autonavi/skin/SkinManager;

    move-result-object p1

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->view:Landroid/view/View;

    invoke-virtual {p1, v1, v0, v0}, Lcom/autonavi/skin/SkinManager;->updateView(Landroid/view/View;ZZ)Lcom/autonavi/skin/SkinManager$SkinTask;

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    iget v1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    invoke-virtual {p1, v2, v0, v3, v0}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/autosdk/bussiness/layer/LayerController;->updateStyle(IZ)V

    return-void

    :cond_4
    invoke-static {}, Lcom/autonavi/skin/SkinManager;->getInstance()Lcom/autonavi/skin/SkinManager;

    move-result-object v1

    iget-object v4, p0, Lcom/byd/automap/presentation/PresentationView;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/autonavi/skin/SkinManager;->updateViewExtra(Landroid/view/View;)Lcom/autonavi/skin/SkinManager$SkinTask;

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v4, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/autosdk/bussiness/map/MapController;->setExtraMapStyle(IZIZ)V

    invoke-static {}, Lcom/autosdk/bussiness/layer/LayerController;->getInstance()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object p1

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/autosdk/bussiness/layer/LayerController;->updateStyle(IZ)V

    :cond_6
    return-void
.end method

.method private updateViewExtra()V
    .locals 4

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    const-string v1, "PresentationView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
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

    if-eq v0, v3, :cond_1

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v3, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v0, v3, :cond_2

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "updateViewExtra, snow no updateView"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autonavi/skin/SkinManager;->getInstance()Lcom/autonavi/skin/SkinManager;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/autonavi/skin/SkinManager;->updateView(Landroid/view/View;ZZ)Lcom/autonavi/skin/SkinManager$SkinTask;

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "updateViewExtra, snow updateViewExtra"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autonavi/skin/SkinManager;->getInstance()Lcom/autonavi/skin/SkinManager;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/autonavi/skin/SkinManager;->updateViewExtra(Landroid/view/View;)Lcom/autonavi/skin/SkinManager$SkinTask;

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v0, v2}, Lg/a/c/p;->U(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->lambda$initCarPosition$2()V

    return-void
.end method

.method public synthetic b(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/automap/presentation/PresentationView;->lambda$onCreate$0(Z)V

    return-void
.end method

.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->lambda$onNetworkChange$3()V

    return-void
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->lambda$sendNavScreenState$1()V

    return-void
.end method

.method public doMainCruise()V
    .locals 4

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mUserLayer:Lcom/autosdk/bussiness/layer/UserLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/layer/UserLayer;->clearAllItems()V

    :cond_0
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mSearchlayer:Lcom/autosdk/bussiness/layer/SearchLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autosdk/bussiness/layer/SearchLayer;->clearAllItems()V

    :cond_1
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mRouteResultLayer:Lcom/autosdk/bussiness/layer/RouteResultLayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/autosdk/bussiness/layer/RouteResultLayer;->clearAllItems()V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mRouteResultLayer:Lcom/autosdk/bussiness/layer/RouteResultLayer;

    const-wide/16 v2, 0x1784

    invoke-virtual {v0, v2, v3, v1}, Lcom/autosdk/bussiness/layer/RouteResultLayer;->setVisible(JZ)V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mRouteResultLayer:Lcom/autosdk/bussiness/layer/RouteResultLayer;

    const-wide/16 v2, 0x1785

    invoke-virtual {v0, v2, v3, v1}, Lcom/autosdk/bussiness/layer/RouteResultLayer;->setVisible(JZ)V

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getLayerController()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/layer/LayerController;->getDrivingLayer(I)Lcom/autosdk/bussiness/layer/DrivingLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/DrivingLayer;->setLockMapRollAngle(Z)V

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->resetMapCenter()V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->setMainMapCarMode()V

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->initCarPosition()V

    return-void
.end method

.method public synthetic e()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->lambda$setDefaultTheme$7()V

    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->lambda$setGoldTheme$10()V

    return-void
.end method

.method public synthetic g()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->lambda$setShamoTheme$8()V

    return-void
.end method

.method public goToCarDefaultPosition()V
    .locals 6

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setFollowMode(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->resetMapCenter()V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/map/MapController;->getZoomLevel(I)F

    move-result v0

    const/high16 v3, 0x41100000    # 9.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    # 仪表处于车道级时不做回正缩放，避免冲掉车道级视角
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->isInLane()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v3

    #const/high16 v4, 0x41800000    # 16.0f
    #const/high16 v4, 0x41880000    # 17.0f
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v2, v4}, Lcom/autosdk/bussiness/map/MapController;->setZoomLevel(IF)V

    #invoke-static {}, Le/e/c/j0/h0;->b()Le/e/c/j0/h0;

    #move-result-object v5

    #invoke-virtual {v5}, Le/e/c/j0/h0;->getConfigKeyMapviewMode()I
    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v5

    invoke-virtual {v5}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/byd/automap/presentation/PresentationView;->setMapMode(I)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(IZ)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "PresentationView"

    const-string v2, "goToCarDefaultPosition: zoomLevel = "

    invoke-static {v0, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->setMainMapCarMode()V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mDrivingLayer:Lcom/autosdk/bussiness/layer/DrivingLayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/autosdk/bussiness/layer/DrivingLayer;->clearAllItems()V

    :cond_2
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mUserLayer:Lcom/autosdk/bussiness/layer/UserLayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/autosdk/bussiness/layer/UserLayer;->clearAllItems()V

    :cond_3
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mSearchlayer:Lcom/autosdk/bussiness/layer/SearchLayer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/autosdk/bussiness/layer/SearchLayer;->clearAllItems()V

    :cond_4
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mRouteResultLayer:Lcom/autosdk/bussiness/layer/RouteResultLayer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/autosdk/bussiness/layer/RouteResultLayer;->clearAllItems()V

    :cond_5
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->initCarPosition()V

    return-void
.end method

.method public synthetic h()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->lambda$setSnowTheme$9()V

    return-void
.end method

.method public isDownloadCurrentCityMap()Z
    .locals 6

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getLocController()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/location/LocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/data/MapDataController;->getInstance()Lcom/autosdk/bussiness/data/MapDataController;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/autosdk/bussiness/data/MapDataController;->getAdcodeByLonLat(DD)I

    move-result v0

    invoke-static {v0}, Lcom/autosdk/bussiness/data/MapDataController;->isCityDownLoaded(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->createView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->view:Landroid/view/View;

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "PresentationView"

    const-string v4, "onCreate(),isNightExtra=:{?}, widthPixels:{?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiLink5()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v4, 0x7f060f22

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    iput v0, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviStation()I

    move-result v0

    iput v0, p0, Lcom/byd/automap/presentation/PresentationView;->naviStation:I

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getBydAutoHub()Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSpeed()Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->bydAutoSpeed:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/byd/automap/presentation/PresentationView;->bydAutoSpeed:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;->currentSpeed()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {}, Lf/k/v/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, p1

    const/4 v4, 0x3

    invoke-static {}, Lf/h/c/n0/x1;->h()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x4

    invoke-static {}, Lf/h/c/n0/f1;->x()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const-string v4, "onCreate()   displayType=:{?}, bydAutoSpeed=:{?}, getUiStyle:{?},is8_8SizeUI:{?},map version: {?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/location/LocationController;->getGpsLocStatus()Lcom/autosdk/bussiness/location/constant/SdkLocStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->lastLocStatus:Lcom/autosdk/bussiness/location/constant/SdkLocStatus;

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->view:Landroid/view/View;

    const v4, 0x7f0a0aab

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->surfaceView:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->getGLSurfaceAttribute()Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;

    move-result-object v0

    iput v2, v0, Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;->initColor:I

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    new-instance v4, Lf/k/c/q/k;

    invoke-direct {v4, p0}, Lf/k/c/q/k;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    invoke-virtual {v0, v4}, Lcom/autosdk/bussiness/map/MapController;->setMapExtraCreateObserver(Lcom/autosdk/bussiness/map/observer/MapExtraCreateObserver;)V

    invoke-static {}, Lf/h/l/d/b;->c()Lf/h/l/d/b;

    move-result-object v0

    iget-object v4, p0, Lcom/byd/automap/presentation/PresentationView;->surfaceView:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {p0}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    iget v6, p0, Lcom/byd/automap/presentation/PresentationView;->displayWidth:I

    iget v7, p0, Lcom/byd/automap/presentation/PresentationView;->displayHeight:I

    invoke-virtual {v0, v4, v5, v6, v7}, Lf/h/l/d/b;->d(Lcom/autonavi/gbl/map/adapter/MapSurfaceView;III)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getLayerController()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/layer/LayerController;->getMapLayer(I)Lcom/autosdk/bussiness/layer/MapLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    iget-object v4, p0, Lcom/byd/automap/presentation/PresentationView;->mSettingObserver:Lcom/autosdk/bussiness/settings/ISettingObserver;

    invoke-virtual {v0, v4}, Lf/h/c/j0/k0;->addObserver(Lcom/autosdk/bussiness/settings/ISettingObserver;)V

    invoke-static {}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->getInstance()Lcom/autosdk/map/cruise/SpeedAndCruiseManager;

    move-result-object v0

    iget-object v4, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseStateListener:Lf/h/l/d/a;

    invoke-virtual {v0, v2, v4}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->registerListener(ILf/h/l/d/a;)V

    invoke-static {}, Lg/a/e/c;->b()Lg/a/e/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg/a/e/c;->c(Lg/a/a/a/c;)V

    :try_start_0
    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    const-string v4, "auto_container"

    invoke-virtual {v0, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AutoContainerManager;

    iput-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mAutoContainerManager:Landroid/os/AutoContainerManager;

    iget-object v4, p0, Lcom/byd/automap/presentation/PresentationView;->autoContainerCallback:Landroid/os/AutoContainerManager$Callback;

    invoke-virtual {v0, v4}, Landroid/os/AutoContainerManager;->registerCallback(Landroid/os/AutoContainerManager$Callback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "registerCallback e:{?}"

    invoke-static {v1, v0, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->initMain()V

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->doMapTextSize()V

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->initCruise()V

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->initNav()V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->doMainCruise()V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->registerDisplayState()V

    invoke-static {}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->getInstance()Lcom/autosdk/map/cruise/SpeedAndCruiseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->getIsNav()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->getInstance()Lcom/autosdk/map/cruise/SpeedAndCruiseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->getNavType()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseStateListener:Lf/h/l/d/a;

    invoke-interface {v0}, Lf/h/l/d/a;->onCruiseStart()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseStateListener:Lf/h/l/d/a;

    invoke-interface {v0}, Lf/h/l/d/a;->onNavSimStart()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseStateListener:Lf/h/l/d/a;

    invoke-interface {v0}, Lf/h/l/d/a;->onNavStart()V

    :cond_5
    :goto_2

    # 获取中控配置的map mode
    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/byd/automap/presentation/PresentationView;->setMapMode(I)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/byd/automap/presentation/PresentationView;->onNavTypeChanged(I)V

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->surfaceView:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->networkStateChanged(Landroid/content/Context;)V

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object p1

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mOriginalLocationCallback:Lcom/autosdk/bussiness/location/listener/OriginalLocationCallback;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/location/LocationController;->addOriginalGpsLocation(Lcom/autosdk/bussiness/location/listener/OriginalLocationCallback;)V

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autosdk/bussiness/location/LocationController;->addLocInfoObserver(Lcom/autonavi/gbl/pos/observer/IPosLocInfoObserver;)V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->onNetworkChange()V

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->registerLocaleChanged()V

    invoke-static {p0}, Lcom/wzw/day/LocalTimeDayStatusUtil;->addOnDayStatusChangeListener(Lcom/wzw/day/LocalTimeDayStatusUtil$OnDayStatusChangeListener;)V

    return-void
.end method

.method public onDayNightChange(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "PresentationView"

    const-string v2, "isNight={?}  carType={?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/byd/automap/presentation/PresentationView;->updateMapStytle(Z)V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->setMainMapCarMode()V

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->switchDisplayType()V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byd/automap/presentation/PresentationView;->updateSkyBoxStyle(I)V

    return-void
.end method

.method public onLocInfoUpdate(Lcom/autonavi/gbl/pos/model/LocInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->bydAutoSpeed:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/autonavi/gbl/pos/model/LocInfo;->speed:F

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;->changeSpeedFromGps(D)V

    :cond_0
    return-void
.end method

.method public onMenuStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onMeterDayNightChanged(I)V
    .locals 0

    return-void
.end method

.method public onMeterLeftMaskChanged(I)V
    .locals 0

    return-void
.end method

.method public onMeterRightMaskChanged(I)V
    .locals 0

    return-void
.end method

.method public onMeterThemeStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onMeterUpdateMapNaviType(I)V
    .locals 0

    return-void
.end method

.method public onNavTypeChanged(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PresentationView"

    const-string v2, "onNavTypeChanged\uff1a{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->sendDataToCluster()V

    :cond_0
    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->switchDisplayType()V

    return-void
.end method

.method public onNetworkChange()V
    .locals 6

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lextview/presentation/navi/NavExtraPresenterforR;->onNetChange()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v2

    invoke-virtual {v2}, Lf/h/c/j0/l0;->getConfigKeyRoadEvent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "PresentationView"

    const-string v5, "onNetworkChange() SettingSwitch = {?}, Network = {?}}"

    invoke-static {v2, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    const/16 v2, 0x232d

    invoke-virtual {v1, v0, v2, v3}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapIconVisible(IIZ)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    const v2, 0x30d41

    invoke-virtual {v1, v0, v2, v3}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapIconVisible(IIZ)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/l0;->getConfigKeyRoadEvent()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/autosdk/bussiness/map/MapController;->setTmcVisible(IZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lf/k/c/q/h;

    invoke-direct {v2, p0}, Lf/k/c/q/h;-><init>(Lcom/byd/automap/presentation/PresentationView;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/autosdk/bussiness/map/MapController;->setTmcVisible(IZ)V

    :goto_0
    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    return-void
.end method

.method public onReceiveAccountEvent(Lf/h/h/b;)V
    .locals 2
    .annotation runtime Lo/d/a/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PresentationView"

    const-string v1, "onReceiveAccountEvent"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->setMainMapCarMode()V

    return-void
.end method

.method public onReceiveNaviChangeEvent(Lf/h/h/d0;)V
    .locals 6
    .annotation runtime Lo/d/a/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lf/h/h/d0;->b()I

    move-result v0

    const/16 v1, 0x3ee

    const/4 v2, 0x0

    const-string v3, "PresentationView"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3f2

    const/4 v5, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3fa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x401

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f8

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lf/h/h/d0;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "onReceiveNaviChangeEvent: EVENT_NAVI_DIRECTION value={?}, carType:{?}"

    invoke-static {v3, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    invoke-virtual {p1}, Lextview/presentation/navi/NavExtraPresenterforR;->updateNaviInfoAndDirection()V

    goto/16 :goto_0

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lf/h/h/d0;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "onReceiveNaviChangeEvent: EVENT_CAR_LOGO_STYLE_CHANGE value={?}"

    invoke-static {v3, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->setMainMapCarMode()V

    goto/16 :goto_0

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lf/h/h/d0;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "onReceiveNaviChangeEvent: EVENT_NAVI_VIEWPOSTURE_CROSS value={?}, carType:{?}"

    invoke-static {v3, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    invoke-virtual {p1}, Lextview/presentation/navi/NavExtraPresenterforR;->updateViewPostureCrossInfo()V

    goto :goto_0

    :cond_3
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lf/h/h/d0;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "onReceiveNaviChangeEvent: EVENT_NAVI_CROSS_CHANGE value={?}, carType:{?}"

    invoke-static {v3, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    invoke-virtual {p1}, Lextview/presentation/navi/NavExtraPresenterforR;->updateCrossCardInfo()V

    goto :goto_0

    :cond_4
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lf/h/h/d0;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "onReceiveNaviChangeEvent: EVENT_NETWORK_CHANGE value={?}"

    invoke-static {v3, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->onNetworkChange()V

    invoke-virtual {p1}, Lf/h/h/d0;->c()I

    move-result p1

    if-ne p1, v4, :cond_7

    invoke-direct {p0, v5}, Lcom/byd/automap/presentation/PresentationView;->setMapMode(I)V

    goto :goto_0

    :cond_5
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lf/h/h/d0;->c()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/byd/automap/presentation/PresentationView;->setMapMode(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "onReceiveNaviChangeEvent: EVENT_CAR_MODE_CONDITION_CHANGE value={?}"

    invoke-static {v3, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lf/h/h/d0;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "onReceiveNaviChangeEvent: EVENT_ROAD_CONDITION_CHANGE  value={?}"

    invoke-static {v3, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lf/h/h/d0;->c()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/byd/automap/presentation/PresentationView;->operateRoadCondition(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onReceiveNaviChangeEvent(Lf/h/h/n;)V
    .locals 12
    .annotation runtime Lo/d/a/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "PresentationView"

    const-string v2, "onReceiveNaviChangeEvent LocationSyncEvent"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->setMainMapCarMode()V

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/location/LocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->getInstance()Lcom/autosdk/bussiness/location/utils/LocationUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->getLocInfo()Lcom/autonavi/gbl/pos/model/LocInfo;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, p1

    const-string v5, "onReceiveNaviChangeEvent locInfo:{?}"

    invoke-static {v1, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_3

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, v2, Lcom/autonavi/gbl/pos/model/LocInfo;->isSimulate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p1

    const-string p1, "onReceiveNaviChangeEvent locInfo.isSimulate:{?}"

    invoke-static {v1, p1, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, v2, Lcom/autonavi/gbl/pos/model/LocInfo;->isSimulate:I

    if-ne p1, v3, :cond_2

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarPosition(DDF)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->getInstance()Lcom/autosdk/bussiness/location/utils/LocationUtil;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/autosdk/bussiness/location/utils/LocationUtil;->convertLocInfo2Location(Lcom/autonavi/gbl/pos/model/LocInfo;)Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarPosition(DDF)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarPosition(DDF)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onSizeToFull()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PresentationView"

    const-string v2, "onSizeToFull   carType={?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseExtraPresenter:Lextview/presentation/cruise/CruiseExtraPresenter;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    invoke-virtual {v0, v1}, Lextview/presentation/cruise/CruiseExtraPresenter;->h(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lg/a/c/p;->E()V

    :cond_1
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lextview/presentation/navi/NavExtraPresenterforR;->onSizeToFull()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSizeToSmall()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PresentationView"

    const-string v2, "onSizeToSmall   carType={?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    invoke-direct {p0}, Lcom/byd/automap/presentation/PresentationView;->resetMapCenter()V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseExtraPresenter:Lextview/presentation/cruise/CruiseExtraPresenter;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/byd/automap/presentation/PresentationView;->displayType:I

    invoke-virtual {v0, v1}, Lextview/presentation/cruise/CruiseExtraPresenter;->h(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->theme:Lcom/autonavi/gbl/data/model/Theme;

    invoke-virtual {v0, v1}, Lg/a/c/p;->K(Lcom/autonavi/gbl/data/model/Theme;)V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/c/p;->G()V

    :cond_1
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lextview/presentation/navi/NavExtraPresenterforR;->onSizeToSmall()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Presentation;->onStop()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PresentationView"

    const-string v3, "onStop: "

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->unRegisterDisplayState()V

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lo/d/a/c;->j(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lo/d/a/c;->t(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v1

    iget-object v3, p0, Lcom/byd/automap/presentation/PresentationView;->mOriginalLocationCallback:Lcom/autosdk/bussiness/location/listener/OriginalLocationCallback;

    invoke-virtual {v1, v3}, Lcom/autosdk/bussiness/location/LocationController;->removeOriginalGpsLocation(Lcom/autosdk/bussiness/location/listener/OriginalLocationCallback;)V

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/autosdk/bussiness/location/LocationController;->removeLocInfoObserver(Lcom/autonavi/gbl/pos/observer/IPosLocInfoObserver;)V

    invoke-static {}, Lg/a/e/c;->b()Lg/a/e/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lg/a/e/c;->c(Lg/a/a/a/c;)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    iget-object v3, p0, Lcom/byd/automap/presentation/PresentationView;->mSettingObserver:Lcom/autosdk/bussiness/settings/ISettingObserver;

    invoke-virtual {v1, v3}, Lf/h/c/j0/k0;->removeObserver(Lcom/autosdk/bussiness/settings/ISettingObserver;)V

    invoke-static {}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->getInstance()Lcom/autosdk/map/cruise/SpeedAndCruiseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/map/cruise/SpeedAndCruiseManager;->unregisterListener(I)V

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    invoke-virtual {v1, v0}, Lextview/presentation/navi/NavExtraPresenterforR;->stop(Z)V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseExtraPresenter:Lextview/presentation/cruise/CruiseExtraPresenter;

    invoke-virtual {v0}, Lextview/presentation/cruise/CruiseExtraPresenter;->j()V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraPresenterforR:Lextview/presentation/navi/NavExtraPresenterforR;

    invoke-virtual {v0}, Lextview/presentation/navi/NavExtraPresenterforR;->detachView()V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->cruiseExtraPresenter:Lextview/presentation/cruise/CruiseExtraPresenter;

    invoke-virtual {v0}, Lg/a/a/a/a;->detachView()V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->navExtraView:Lg/a/c/p;

    invoke-virtual {v0}, Lg/a/a/a/b;->b()V

    invoke-static {v2}, Lf/h/c/n0/p1;->j(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->surfaceView:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->surfaceView:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/map/MapController;->unBIndSurface(Lcom/autonavi/gbl/map/adapter/MapSurfaceView;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/location/LocationController;->getGpsLocStatus()Lcom/autosdk/bussiness/location/constant/SdkLocStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/byd/automap/presentation/PresentationView;->updateLastLocationBearing(Lcom/autosdk/bussiness/location/constant/SdkLocStatus;)V

    return-void
.end method

.method public registerDisplayState()V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->addNavTypeListener(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy$NavTypeListener;)V

    return-void
.end method

.method public sendDataToCluster()V
    .locals 14

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    iget-object v2, p0, Lcom/byd/automap/presentation/PresentationView;->mBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-virtual {v2, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    iget-object v2, p0, Lcom/byd/automap/presentation/PresentationView;->mBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-virtual {v2, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    iget-object v2, p0, Lcom/byd/automap/presentation/PresentationView;->mBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-virtual {v2, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    iget-object v2, p0, Lcom/byd/automap/presentation/PresentationView;->mBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-virtual {v2, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Lg/a/d/b;->n(Lcom/google/flatbuffers/FlatBufferBuilder;IIIIIIIIIIIII)I

    move-result v0

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-virtual {v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mAutoContainerManager:Landroid/os/AutoContainerManager;

    if-eqz v1, :cond_0

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/os/AutoContainerManager;->sendInfo2(I[B)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PresentationView"

    const-string v2, "\u6570\u636e\u5df2\u53d1\u9001\u81f3\u4eea\u8868\u4fa7:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setMainMapCarMode()V
    .locals 5

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    if-eqz v0, :cond_2

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->getConfigKeyCarID()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "PresentationView"

    const-string v4, "setMainMapCarMode carID={?}"

    invoke-static {v3, v4, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarMode(IZ)V

    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->setSkeletonCarStatic()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/location/LocationController;->isGpsLocated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byd/automap/presentation/PresentationView;->updateSkeletonData(Z)V

    :goto_0
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    iget v1, p0, Lcom/byd/automap/presentation/PresentationView;->carType:I

    if-nez v1, :cond_1

    const/16 v1, 0x7d2

    goto :goto_1

    :cond_1
    const/16 v1, 0x7d1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->updateCarStyle(I)V

    :cond_2
    return-void
.end method

.method public setSkeletonCarMove()V
    .locals 4

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setSkeletonCarStatus(I)V

    :cond_0
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->skeletonCarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->skeletonCarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setSkeletonCarStatic()V
    .locals 2

    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setSkeletonCarStatus(I)V

    :cond_0
    iget-object v0, p0, Lcom/byd/automap/presentation/PresentationView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->skeletonCarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unRegisterDisplayState()V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->removeNavTypeListener(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy$NavTypeListener;)V

    return-void
.end method

.method public updateLastLocationBearing(Lcom/autosdk/bussiness/location/constant/SdkLocStatus;)V
    .locals 2

    sget-object v0, Lcom/autosdk/bussiness/location/constant/SdkLocStatus;->ON_LOCATION_GPS_FAIl:Lcom/autosdk/bussiness/location/constant/SdkLocStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/autosdk/bussiness/location/constant/SdkLocStatus;->ON_LOCATION_FAIL:Lcom/autosdk/bussiness/location/constant/SdkLocStatus;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PresentationView"

    const-string v1, "updateLastLocationBearing() lastLocStatus==: {?}"

    invoke-static {p1, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/location/LocationController;->clearLastLocationBearing()V

    :cond_1
    return-void
.end method

.method public updateSkeletonData(Z)V
    .locals 4

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->getConfigKeyCarID()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    if-eqz v1, :cond_0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v3

    invoke-virtual {v3}, Lf/h/c/j0/k0;->getBydConfigKeyMapTheme()Lcom/autonavi/gbl/data/model/Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/autosdk/bussiness/layer/MapLayer;->setSkeletonData(Landroid/content/Context;IZLcom/autonavi/gbl/data/model/Theme;)V

    iget-object p1, p0, Lcom/byd/automap/presentation/PresentationView;->mMapLayer:Lcom/autosdk/bussiness/layer/MapLayer;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarMode(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/byd/automap/presentation/PresentationView;->setSkeletonCarMove()V

    :cond_1
    return-void
.end method



.method public updateSkyBoxStyle(I)V
     .locals 5

     .line 1
     new-instance v0, Ljava/lang/StringBuilder;

     invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

     const-string v1, "getBydConfigKeyDayNightMode===>"

     invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

     invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

     invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

     move-result-object p1

     const/4 v0, 0x0

     new-array v1, v0, [Ljava/lang/Object;

     const-string v2, "PresentationView"

     invoke-static {v2, p1, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

     .line 2
     sget-boolean p1, Lcom/autosdk/bussiness/settings/SettingConstant;->is3DMap:Z

     if-eqz p1, :cond_0

     return-void

     .line 3
     :cond_0
     invoke-static {}, Lcom/wzw/day/LocalTimeDayStatusUtil;->getDayStatus()I

     move-result p1

     #invoke-static {}, Lcom/autonavi/gbl/map/UtilDayStatusNotify;->getInstance()Lcom/autonavi/gbl/map/UtilDayStatusNotify;

     #move-result-object p1

     #invoke-virtual {p1}, Lcom/autonavi/gbl/map/UtilDayStatusNotify;->getDayStatus()I

     #move-result p1

     const/4 v1, 0x1

     new-array v3, v1, [Ljava/lang/Object;

     .line 6
     invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

     move-result-object v4

     aput-object v4, v3, v0

     const-string v4, "getDayStatus :{?}"

     invoke-static {v2, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

     .line 7
     invoke-virtual {p0, v0, p1}, Lcom/byd/automap/presentation/PresentationView;->updateSkyBoxResource(ZI)V

     return-void
 .end method


.method public updateSkyBoxResource(ZI)V
    .locals 1
    .param p2    # I
        .annotation build Lcom/autonavi/gbl/map/model/DAY_STATUS$DAY_STATUS1;
        .end annotation
    .end param

    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p2, "skybox_night.dat"

    const-string v0, "skybox_night.data"

    goto :goto_0

    :sswitch_1
    const-string p2, "skybox_dusk2.dat"

    const-string v0, "skybox_dusk2.data"

    goto :goto_0

    :sswitch_2
    const-string p2, "skybox_dusk1.dat"

    const-string v0, "skybox_dusk1.data"

    goto :goto_0

    :sswitch_3
    const-string p2, "skybox_day.dat"

    const-string v0, "skybox_day.data"

    goto :goto_0

    :sswitch_4
    const-string p2, "skybox_morning2.dat"

    const-string v0, "skybox_morning2.data"

    goto :goto_0

    :sswitch_5
    const-string p2, "skybox_morning1.dat"

    const-string v0, "skybox_morning1.data"

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/byd/automap/presentation/PresentationView;->updateSkyBoxResource(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10101 -> :sswitch_5
        0x10102 -> :sswitch_4
        0x10201 -> :sswitch_3
        0x10301 -> :sswitch_2
        0x10302 -> :sswitch_1
        0x10401 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateSkyBoxResource(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resourceName:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "PresentationView"

    invoke-static {v2, p3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "\u66f4\u65b0\u5929\u7a7a\u76d2\u5b50\u5931\u8d25: \u8d44\u6e90\u540d\u4e3a\u7a7a"

    invoke-static {v2, p2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

        move-result-object p3

        invoke-virtual {p3}, Lf/h/c/j0/k0;->getBydConfigKeyMapTheme()Lcom/autonavi/gbl/data/model/Theme;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/autonavi/gbl/data/model/FileDataItem;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "\u66f4\u65b0\u5929\u7a7a\u76d2\u5b50: "

    invoke-static {v4, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blRes/ExtraMapAsset/style/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/autosdk/bussiness/common/utils/AssetUtils;->getAssetFileContent(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_4

    array-length v1, p3

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/autonavi/gbl/map/model/MapSkyboxParam;

    invoke-direct {v1}, Lcom/autonavi/gbl/map/model/MapSkyboxParam;-><init>()V

    const/4 v3, 0x2

    iput-boolean v3, v1, Lcom/autonavi/gbl/map/model/MapSkyboxParam;->isOn:Z

    iput-boolean p1, v1, Lcom/autonavi/gbl/map/model/MapSkyboxParam;->is3DRes:Z

    new-instance v4, Lcom/autonavi/gbl/util/model/BinaryStream;

    invoke-direct {v4, p3}, Lcom/autonavi/gbl/util/model/BinaryStream;-><init>([B)V

    iput-object v4, v1, Lcom/autonavi/gbl/map/model/MapSkyboxParam;->DataBuff:Lcom/autonavi/gbl/util/model/BinaryStream;

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p3

    invoke-virtual {p3, v3, v1}, Lcom/autosdk/bussiness/map/MapController;->setBaseMapSkyBoxVisible(ILcom/autonavi/gbl/map/model/MapSkyboxParam;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p3

    invoke-virtual {p3, v3}, Lcom/autosdk/bussiness/map/MapController;->refresh(I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u66f4\u65b0\u5929\u7a7a\u76d2\u5b50 is3DRes="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",resourceName="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_2
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "\u66f4\u65b0\u5929\u7a7a\u76d2\u5b50\u5931\u8d25: \u8d44\u6e90\u5185\u5bb9\u4e3a\u7a7a"

    invoke-static {v2, p2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

# virtual methods
.method public onDayStatusChanged(II)V
    .locals 1

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->getBydConfigKeyDayNightMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/byd/automap/presentation/PresentationView;->updateSkyBoxStyle(I)V

    return-void

.end method