.class public Lcom/byd/automap/activity/MainActivity;
.super Lcom/autosdk/framework/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lf/h/u/j/d;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lf/k/o/c/b/d/f;


# static fields
.field private static final DELAY_TIME_1000:I = 0x3e8

.field private static final KEY_PROCESS_ID:Ljava/lang/String; = "processId"

.field private static final SENSOR_PRIVACY_CHANGED_LISTENER:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

.field private static final TAG:Ljava/lang/String; = "MainActivity"

.field public static mGlobalGpsListener:Lf/k/c/p/g;

.field private static final navStopForEHPListener:Lcom/autosdk/bussiness/navi/NavStopForEHPListener;


# instance fields
.field private final activateInstructKey:Ljava/lang/String;

.field public amapFragmentContainer:Landroid/widget/FrameLayout;

.field private floatWindowClickReceiver:Landroid/content/BroadcastReceiver;

.field public frameLayout:Landroid/widget/FrameLayout;

.field private glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

.field private intercomSwitch:Z

.field private isDestroyed:Z

.field private isMapOnStop:Z

# 从虚拟屏/standard Task 切到主屏 HOME Task 时，防止重复发起销毁与重建。
.field private isDefaultHomeTaskHandoffPending:Z

# 地图桌面切入紧凑窗口时，避免配置回调重复发起 HOME 角色切换。
.field private isMapHomePipRestartPending:Z

.field private isSecondMainActivityFinish:Z

.field private isShowTipsFlag:Z

.field private isSplit:Z

.field private isStart:Z

.field private isStartUp:Z

.field private isTipsViewShowing:Z

.field private listenerMultiDisplay:Ljava/lang/Object;

.field private localIntercomSwitch:Z

.field private locationEnableType:I

.field private mAppDispatchReceiver:Lcom/byd/automap/activity/AppDispatchReceiver;

.field private mFloatWidgetDisposable:Lh/a/a0/b;

.field private final mGglobalGpsStatusListener:Lf/k/c/p/h;

.field private final mInitLaneService:Lf/k/c/l/c;

.field private final mLocationEnableListener:Landroid/location/LocationEnabledListener;

.field private mMainDrEnterParam:Lcom/autonavi/skin/view/SkinTextView;

.field private mMainDrParam:Lcom/autonavi/skin/view/SkinTextView;

.field private mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

.field private mMenuReceiver:Landroid/content/BroadcastReceiver;

.field private mProductActivateInstruct:Ljava/lang/String;

.field private mRequestStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRootViewLocationOnScreen0:I

.field private mRootViewLocationOnScreen1:I

.field private mSendToCarObject:Ljava/lang/Object;

.field private mTeamMessageObserver:Lcom/autosdk/user/observed/TeamMessageObserver;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mVoiceToNaviPoi:Lcom/autosdk/bussiness/common/POI;

.field private mapNonActivatedView:Lcom/byd/automap/view/MapNonActivatedView;

.field private mapTipPageView:Lf/k/c/w/b;

.field private screenViewModel:Lf/h/i/c/o;

.field private final settingObserver:Lcom/autosdk/bussiness/settings/ISettingObserver;

.field private final sort:Lcom/autosdk/bussiness/pilot/IRouteResultForPilotSort;

.field private final taskToBackObserver:Lf/h/c/j0/e0;

.field private updateNoaHandler:Landroid/os/Handler;




# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/byd/automap/activity/MainActivity$p;

    invoke-direct {v0}, Lcom/byd/automap/activity/MainActivity$p;-><init>()V

    sput-object v0, Lcom/byd/automap/activity/MainActivity;->SENSOR_PRIVACY_CHANGED_LISTENER:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    new-instance v0, Lcom/byd/automap/activity/MainActivity$i;

    invoke-direct {v0}, Lcom/byd/automap/activity/MainActivity$i;-><init>()V

    sput-object v0, Lcom/byd/automap/activity/MainActivity;->mGlobalGpsListener:Lf/k/c/p/g;

    new-instance v0, Lcom/byd/automap/activity/MainActivity$k;

    invoke-direct {v0}, Lcom/byd/automap/activity/MainActivity$k;-><init>()V

    sput-object v0, Lcom/byd/automap/activity/MainActivity;->navStopForEHPListener:Lcom/autosdk/bussiness/navi/NavStopForEHPListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/autosdk/framework/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->amapFragmentContainer:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isShowTipsFlag:Z

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isTipsViewShowing:Z

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isMapOnStop:Z

    const-string v1, "product_activate"

    iput-object v1, p0, Lcom/byd/automap/activity/MainActivity;->activateInstructKey:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isStartUp:Z

    new-instance v1, Lf/h/f/e2/f/r1;

    invoke-direct {v1}, Lf/h/f/e2/f/r1;-><init>()V

    iput-object v1, p0, Lcom/byd/automap/activity/MainActivity;->sort:Lcom/autosdk/bussiness/pilot/IRouteResultForPilotSort;

    new-instance v1, Lf/k/c/l/c;

    invoke-direct {v1}, Lf/k/c/l/c;-><init>()V

    iput-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mInitLaneService:Lf/k/c/l/c;

    new-instance v1, Lf/k/c/a/c;

    invoke-direct {v1, p0}, Lf/k/c/a/c;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    iput-object v1, p0, Lcom/byd/automap/activity/MainActivity;->taskToBackObserver:Lf/h/c/j0/e0;

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isSecondMainActivityFinish:Z

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isDestroyed:Z

    new-instance v1, Lcom/byd/automap/activity/MainActivity$j;

    invoke-direct {v1, p0}, Lcom/byd/automap/activity/MainActivity$j;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    iput-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mLocationEnableListener:Landroid/location/LocationEnabledListener;

    new-instance v1, Lcom/byd/automap/activity/MainActivity$m;

    invoke-direct {v1, p0}, Lcom/byd/automap/activity/MainActivity$m;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    iput-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mGglobalGpsStatusListener:Lf/k/c/p/h;

    new-instance v1, Lcom/byd/automap/activity/MainActivity$d;

    invoke-direct {v1, p0}, Lcom/byd/automap/activity/MainActivity$d;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    iput-object v1, p0, Lcom/byd/automap/activity/MainActivity;->settingObserver:Lcom/autosdk/bussiness/settings/ISettingObserver;

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isSplit:Z

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isStart:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/byd/automap/activity/MainActivity;)I
    .locals 0

    iget p0, p0, Lcom/byd/automap/activity/MainActivity;->locationEnableType:I

    return p0
.end method

.method public static synthetic access$002(Lcom/byd/automap/activity/MainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/byd/automap/activity/MainActivity;->locationEnableType:I

    return p1
.end method

.method public static synthetic access$1000(Lcom/byd/automap/activity/MainActivity;)Lcom/autonavi/gbl/map/adapter/MapSurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/byd/automap/activity/MainActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mSendToCarObject:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/byd/automap/activity/MainActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/byd/automap/activity/MainActivity;->showOrHiddenWidgetBg(ZZ)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/byd/automap/activity/MainActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/activity/MainActivity;->updateNoaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/byd/automap/activity/MainActivity;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->handLocAndNoaState(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/byd/automap/activity/MainActivity;)Lcom/autonavi/skin/view/SkinTextView;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/activity/MainActivity;->mMainDrEnterParam:Lcom/autonavi/skin/view/SkinTextView;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/byd/automap/activity/MainActivity;)Lcom/autonavi/skin/view/SkinTextView;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/activity/MainActivity;->mMainDrParam:Lcom/autonavi/skin/view/SkinTextView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/byd/automap/activity/MainActivity;)Lcom/autosdk/bussiness/common/POI;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/activity/MainActivity;->mVoiceToNaviPoi:Lcom/autosdk/bussiness/common/POI;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/byd/automap/activity/MainActivity;Lcom/autosdk/bussiness/common/POI;)Lcom/autosdk/bussiness/common/POI;
    .locals 0

    iput-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mVoiceToNaviPoi:Lcom/autosdk/bussiness/common/POI;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/byd/automap/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initAfter()V

    return-void
.end method

.method public static synthetic access$400(Lcom/byd/automap/activity/MainActivity;)Lcom/autosdk/common/storage/MapSharePreference;
    .locals 0

    iget-object p0, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/byd/automap/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->stopTimer()V

    return-void
.end method

.method public static synthetic access$600(Lcom/byd/automap/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->startMainFragment()V

    return-void
.end method

.method public static synthetic access$700(Lcom/byd/automap/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->check()V

    return-void
.end method

.method public static synthetic access$800(Lcom/byd/automap/activity/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->sendMapStatusBroadcast(I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/byd/automap/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->reAdjustMapScale()V

    return-void
.end method

.method private addSensorListener()V
    .locals 4

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v0

    const v0,0x1

    const/4 v1, 0x0

    const-string v2, "MainActivity"

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_1

    :try_start_0
    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byd/automap/activity/MainActivity;->complianceCheckListen(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byd/automap/activity/MainActivity;->complianceCheckListen(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private check()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "check permission and init map sdk!!!"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/c/p/r;->e()Lf/k/c/p/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/k/c/p/r;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private checkDpiChangedBackground(Landroid/content/res/Configuration;)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "MainActivity"

    const-string v4, "checkDpiChangedBackground currentDpi={?} ,densityDpi={?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->a()I

    move-result v0

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v4, :cond_0

    invoke-static {p0, p1, v2}, Lcom/autosdk/common/utils/DPIUtil;->E(Landroid/content/Context;Landroid/content/res/Configuration;Z)Landroid/content/Context;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "checkDpiChangedBackground after currentDpi={?}"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    return v2
.end method

.method private checkGroupState()V
    .locals 6

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;->team:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;

    invoke-direct {v0, v1}, Lcom/autosdk/common/storage/MapSharePreference;-><init>(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;)V

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->intercomSwitch:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/storage/MapSharePreference;->d(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->intercomSwitch:Z

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->localIntercomSwitch:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/storage/MapSharePreference;->d(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->localIntercomSwitch:Z

    iget-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->intercomSwitch:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lf/h/c/m0/h;->o()Z

    move-result v0

    invoke-static {}, Lf/h/c/m0/j;->j()Lf/h/c/m0/j;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/m0/j;->h()Lcom/autonavi/gbl/user/group/model/GroupResponseInfo;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    if-eqz v1, :cond_0

    move v5, v2

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "MainActivity"

    const-string v4, "isLogin {?} , (info != null) {?}"

    invoke-static {v2, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lf/h/u/j/l/r0;->c()Lf/h/u/j/l/r0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/u/j/l/r0;->i()Z

    :cond_1
    return-void
.end method

.method private checkIsPowerDown()V
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v0

    sget-object v1, Lf/k/c/a/j;->a:Lf/k/c/a/j;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->addPowerLevelListener(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy$OnPowerLevelListener;)V

    return-void
.end method

.method private complianceCheckListen(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lf/h/u/j/l/r0;->d(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p1

    const/4 v0, 0x1

    sget-object v1, Lcom/byd/automap/activity/MainActivity;->SENSOR_PRIVACY_CHANGED_LISTENER:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    invoke-static {v2, v0, p1, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private createNewConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "createNewConfiguration() "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->screenViewModel:Lf/h/i/c/o;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p2, p1}, Lf/h/i/c/o;->a(III)V

    :cond_0
    return-void
.end method

.method private destroy()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->isSecondMainActivityFinish:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->isDestroyed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "MainActivity"

    const-string v4, "onDestroy {?}, isDestroyed:{?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mInitLaneService:Lf/k/c/l/c;

    invoke-virtual {v0}, Lf/k/c/l/c;->e()V

    iget-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isSecondMainActivityFinish:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isDestroyed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/launcher3/quickstep/LauncherAppTransitionManager;->getInstance()Lcom/android/launcher3/quickstep/LauncherAppTransitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/quickstep/LauncherAppTransitionManager;->unregisterRemoteCardAnimations()V

    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/z;->a()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->unRegisterCarPlayReceiver()V

    invoke-static {}, Lcom/autonavi/skin/uitls/AppChannelUtils;->clearFirstStartAppTag()V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mAppDispatchReceiver:Lcom/byd/automap/activity/AppDispatchReceiver;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lc/q/a/a;->b(Landroid/content/Context;)Lc/q/a/a;

    move-result-object v0

    iget-object v4, p0, Lcom/byd/automap/activity/MainActivity;->mAppDispatchReceiver:Lcom/byd/automap/activity/AppDispatchReceiver;

    invoke-virtual {v0, v4}, Lc/q/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->navi_exit()V

    iget-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isDefaultHomeTaskHandoffPending:Z

    if-eqz v0, :cond_check_restart_flags

    # onPause 与 onDestroy 都会进入 destroy；交接场景只做一次 Activity 级解绑。
    sput-boolean v2, Lf/h/c/n0/f1;->e:Z

    iput-boolean v3, p0, Lcom/byd/automap/activity/MainActivity;->isDestroyed:Z

    return-void

    :cond_check_restart_flags
    sget-boolean v0, Lf/h/c/n0/f1;->f:Z

    if-eqz v0, :cond_2

    sput-boolean v2, Lf/h/c/n0/f1;->f:Z

    return-void

    :cond_2
    sget-boolean v0, Lf/h/c/n0/f1;->g:Z

    if-eqz v0, :cond_3

    sput-boolean v2, Lf/h/c/n0/f1;->g:Z

    return-void

    :cond_3
    sget-boolean v0, Lf/h/c/n0/f1;->e:Z

    if-eqz v0, :cond_4

    sput-boolean v2, Lf/h/c/n0/f1;->e:Z

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->stopTimer()V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    if-eqz v0, :cond_5

    sget-object v4, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->businessName:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v0, v4}, Lcom/autosdk/common/storage/MapSharePreference;->p(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;)V

    :cond_5
    invoke-virtual {p0}, Lcom/byd/automap/activity/MainActivity;->unInitForBack()V

    invoke-static {}, Lf/h/c/n0/j2;->a()V

    invoke-static {}, Lf/h/c/j0/p0/a/h;->a()Lf/h/c/j0/p0/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/p0/a/h;->c()V

    :try_start_0
    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lf/h/u/j/l/r0;->d(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object v0

    sget-object v4, Lcom/byd/automap/activity/MainActivity;->SENSOR_PRIVACY_CHANGED_LISTENER:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lf/k/c/p/j;->f()Lf/k/c/p/j;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/c/p/j;->c()V

    :cond_6
    invoke-static {}, Lf/k/c/p/i;->c()Lf/k/c/p/i;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mLocationEnableListener:Landroid/location/LocationEnabledListener;

    invoke-virtual {v0, v1}, Lf/k/c/p/i;->e(Landroid/location/LocationEnabledListener;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->checkIsPowerDown()V

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lf/h/u/j/l/r0;->c()Lf/h/u/j/l/r0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/u/j/l/r0;->f()V

    :cond_7
    invoke-virtual {p0}, Lcom/byd/automap/activity/MainActivity;->clearMapNonActivatedView()V

    invoke-static {}, Lf/k/c/x/h1;->J()Lf/k/c/x/h1;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/c/x/h1;->t0()V

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/d/a/c;->t(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mRequestStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_8
    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMenuReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_9
    invoke-static {}, Lcom/autosdk/bussiness/navi/route/RouteRequestController;->getInstance()Lcom/autosdk/bussiness/navi/route/RouteRequestController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/navi/route/RouteRequestController;->unRegisterRouteForMomenta()V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->floatWindowClickReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_a

    invoke-static {p0}, Lc/q/a/a;->b(Landroid/content/Context;)Lc/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->floatWindowClickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lc/q/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_a
    invoke-static {}, Lcom/autosdk/bussiness/phoneConnect/PhoneConnectManager;->getInstance()Lcom/autosdk/bussiness/phoneConnect/PhoneConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/phoneConnect/PhoneConnectManager;->unInit()V

    invoke-static {}, Lf/k/c/x/n1;->c()Lf/k/c/x/n1;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/c/x/n1;->h()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->unRegisterActivityTop()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->unregisterAosParkingOutStatus()V

    iput-boolean v3, p0, Lcom/byd/automap/activity/MainActivity;->isDestroyed:Z

    :cond_b
    :goto_1
    return-void
.end method

.method private disableMapRotate()V
    .locals 3

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/autosdk/bussiness/map/MapController;->lockMapRollAngle(Lcom/autonavi/gbl/map/MapView;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/autosdk/bussiness/map/MapController;->lockMapPitchAngle(Lcom/autonavi/gbl/map/MapView;Z)V

    :cond_0
    return-void
.end method

.method private doChangeScreen(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getFragmentStack()Lf/h/i/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getFragmentStack()Lf/h/i/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/i/b/h;->h()Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    move-result-object v0

    instance-of v1, v0, Lf/h/i/c/m;

    if-eqz v1, :cond_0

    check-cast v0, Lf/h/i/c/m;

    invoke-virtual {v0, p1}, Lf/h/i/c/m;->G(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method private doChangeScreen(Landroid/content/res/Configuration;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getFragmentStack()Lf/h/i/b/h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getFragmentStack()Lf/h/i/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/i/b/h;->h()Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    move-result-object v0

    instance-of v1, v0, Lcom/autosdk/drive/navi/view/fragment/NaviFragment;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/autosdk/drive/navi/view/fragment/NaviSimFragment;

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->isMapOnStop:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->isStart:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const-string v1, "MainActivity"

    const-string v2, "LayoutChange: "

    invoke-static {v1, v2, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v0, Lf/h/i/c/m;

    invoke-virtual {v0, p1}, Lf/h/i/c/m;->G(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method private doStartUp()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    const-string v3, "doStartUp()"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lf/h/c/n0/o2;->i(Landroid/app/Activity;)V

    sget-object v1, Lf/k/c/a/y;->a:Lf/k/c/a/y;

    invoke-static {v1}, Lcom/autosdk/bussiness/common/task/TaskManager;->run(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mInitLaneService:Lf/k/c/l/c;

    new-instance v3, Lf/k/l/g/a/a;

    invoke-direct {v3, v0}, Lf/k/l/g/a/a;-><init>(Z)V

    invoke-virtual {v1, v3}, Lf/k/c/l/c;->initLaneService(Lf/k/l/g/a/a;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->isNeedShowTipsView()Z

    move-result v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "doStartUp() FloatWidget  isShow {?}  "

    invoke-static {v2, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FloatWidget  hideWindow  "

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/c/x/h1;->J()Lf/k/c/x/h1;

    move-result-object v0

    new-instance v1, Lcom/byd/automap/activity/MainActivity$s;

    invoke-direct {v1, p0}, Lcom/byd/automap/activity/MainActivity$s;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lf/k/c/x/h1;->q0(Lf/k/c/x/s1;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initAfter()V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autosdk/common/settings/ProtocolUtils;->setAgreeClicked(Z)V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/ProtocolUtils;->activeStatusCallBack()V

    invoke-static {}, Lf/k/c/x/g1;->a()Lf/k/c/x/g1;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mGglobalGpsStatusListener:Lf/k/c/p/h;

    invoke-virtual {v0, p0, v1}, Lf/k/c/x/g1;->c(Landroidx/fragment/app/FragmentActivity;Lf/k/c/p/h;)V

    invoke-static {}, Lf/k/c/x/h1;->J()Lf/k/c/x/h1;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/c/x/h1;->D()V

    :goto_0
    return-void
.end method

.method private getLayoutParams(Lcom/autonavi/view/custom/CustomOverspeedView;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->j()Lcom/autosdk/common/utils/DPIUtil$ScreenStatusDetial;

    move-result-object v0

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatusDetial;->PORTRAIT_1_2_BOOTOM:Lcom/autosdk/common/utils/DPIUtil$ScreenStatusDetial;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lf/h/c/n0/l2;->l()I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->j()Lcom/autosdk/common/utils/DPIUtil$ScreenStatusDetial;

    move-result-object v0

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatusDetial;->PORTRAIT_1_2_TOP:Lcom/autosdk/common/utils/DPIUtil$ScreenStatusDetial;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lf/h/c/n0/l2;->n()I

    move-result v0

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lf/h/c/n0/l2;->n()I

    move-result v0

    invoke-static {}, Lf/h/c/n0/l2;->l()I

    move-result v1

    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-object p1
.end method

.method private getProductActivateInstruct()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "product_activate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "MainActivity"

    const-string v3, "[MainActivity]onCreate, productActivate is:{?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handLocAndNoaState(Ljava/lang/StringBuilder;)V
    .locals 20

    move-object/from16 v0, p1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->realSpeed()D

    move-result-wide v1

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/manager/SDKManager;->getLocController()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/location/LocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-wide/from16 v18, v4

    move-wide v4, v6

    move-wide/from16 v6, v18

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/manager/SDKManager;->getLocController()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/location/LocationController;->getLocInfo()Lcom/autonavi/gbl/pos/model/LocInfo;

    move-result-object v3

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    iget v8, v3, Lcom/autonavi/gbl/pos/model/LocInfo;->speed:F

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/2addr v11, v9

    const/4 v9, 0x5

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v12, 0xb

    invoke-virtual {v3, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v13, 0xc

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v14, 0xd

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0xe

    invoke-virtual {v3, v15}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v15, "\u8f66\u9053\u7ea7\u9274\u6743:"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v15, Lf/k/l/g/a/b;->e:Z

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v3

    sget-object v3, Lf/k/l/g/a/b;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v14

    const-string v14, "speed:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " GpsSpeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SD lon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SD lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HD lon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lf/k/r/c/i/c0/w;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HD lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lf/k/r/c/i/c0/w;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Open City:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lf/k/r/d/g/m;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  \u7f13\u5b58:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lf/k/r/d/g/m;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NOA\u914d\u7f6e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lf/k/r/c/i/b0/b/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NOA\u5f00\u5173:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lf/k/r/c/i/b0/b/a;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CNOA\u914d\u7f6e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lf/k/r/c/i/b0/b/a;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SR\u5168\u573a\u666f:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lf/k/r/c/i/b0/b/a;->f:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CNOA\u5f00\u5173:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lf/k/r/c/i/b0/b/a;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HNOA\u5f00\u5173:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lf/k/r/c/i/b0/b/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "NOA\u8ddd\u79bb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lf/k/r/c/i/b0/b/a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private handleOverSpeedView()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->j()Lcom/autosdk/common/utils/DPIUtil$ScreenStatusDetial;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MainActivity"

    const-string v3, "handleOverSpeedView: DPI is {?}"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v0, 0x7f0a05ba

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomOverspeedView;

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "handleOverSpeedView: customOverspeedView is null"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Lf/k/c/a/n;

    invoke-direct {v1, p0, v0}, Lf/k/c/a/n;-><init>(Lcom/byd/automap/activity/MainActivity;Lcom/autonavi/view/custom/CustomOverspeedView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initAfter()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "initAfter()"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->startMainFragmentByProject()V

    return-void
.end method

.method private initCarPosition()V
    .locals 8

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getLayerController()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/LayerController;->getMapLayer(I)Lcom/autosdk/bussiness/layer/MapLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarVisible(Z)V

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/MapLayer;->setFollowMode(Z)V

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/location/LocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v7

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lcom/autosdk/bussiness/layer/MapLayer;->setCarPosition(DDF)V

    invoke-static {v0}, Lf/h/c/n0/l1;->b(Lcom/autosdk/bussiness/layer/MapLayer;)V

    :cond_0
    return-void
.end method

.method private static initCloudSwitch()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sget-object v1, Lf/k/c/a/g0;->a:Lf/k/c/a/g0;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private initData()V
    .locals 4

    new-instance v0, Lc/o/b0;

    invoke-direct {v0, p0}, Lc/o/b0;-><init>(Lc/o/f0;)V

    const-class v1, Lf/h/i/c/o;

    invoke-virtual {v0, v1}, Lc/o/b0;->a(Ljava/lang/Class;)Lc/o/a0;

    move-result-object v0

    check-cast v0, Lf/h/i/c/o;

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->screenViewModel:Lf/h/i/c/o;

    new-instance v0, Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;->homeMap:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;

    invoke-direct {v0, v1}, Lcom/autosdk/common/storage/MapSharePreference;-><init>(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;)V

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/autosdk/common/utils/DPIUtil;->v(Landroid/app/Activity;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MainActivity"

    const-string v3, "onCreate-isMultiWindowMode:"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isShowTipsFlag:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v1, v2, v0}, Lcom/autosdk/common/storage/MapSharePreference;->j(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)V

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v2, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isTipsViewShowing:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v1, v2, v0}, Lcom/autosdk/common/storage/MapSharePreference;->j(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)V

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v2, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isFullScreen:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-static {p0}, Lcom/autosdk/common/utils/DPIUtil;->v(Landroid/app/Activity;)Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/autosdk/common/storage/MapSharePreference;->j(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)V

    :cond_0
    return-void
.end method

.method private initFaShaoUiStyle()V
    .locals 4

    const-string v0, "MainActivity"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f130313

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    const-string v2, "setTheme : isF"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "setTheme error: {?}"

    invoke-static {v0, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private initLauncherTransit()V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/quickstep/LauncherAppTransitionManager;->getInstance()Lcom/android/launcher3/quickstep/LauncherAppTransitionManager;

    move-result-object v0

    new-instance v1, Lcom/byd/automap/activity/MainActivity$n;

    invoke-direct {v1, p0}, Lcom/byd/automap/activity/MainActivity$n;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/quickstep/LauncherAppTransitionManager;->registerCardRemoteAnimationsIfNeed(Lcom/android/launcher3/quickstep/AbsActivity;)V

    return-void
.end method

.method private initMap()V
    .locals 4

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initMapSurfaceView()V

    invoke-static {}, Lcom/byd/automap/presenter/InitPresenter;->getInstance()Lcom/byd/automap/presenter/InitPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-static {p0}, Lf/h/c/n0/x1;->e(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/byd/automap/presenter/InitPresenter;->initMap(Lcom/autonavi/gbl/map/adapter/MapSurfaceView;I)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initMapViewAfter()V

    new-instance v0, Lf/h/d/b;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lf/h/d/b;-><init>(II)V

    iput-object v0, p0, Lcom/autosdk/framework/activity/BaseActivity;->mCarModelController:Lcom/autosdk/bussiness/carmode/ICarModelController;

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/location/LocationController;->isGpsLocated()Z

    move-result v2

    const/16 v3, 0x7d2

    invoke-interface {v0, v2, v3, v1}, Lcom/autosdk/bussiness/carmode/ICarModelController;->setSkeletonData(ZIZ)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initCarPosition()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->setMapMode()V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/byd/automap/activity/MainActivity;->setMapCenter(I)V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->getDefaultDevice()Lcom/autonavi/gbl/map/MapDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapDevice;->renderResume()V

    return-void
.end method

.method private initMapSurfaceView()V
    .locals 4

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    :cond_0
    invoke-static {}, Lf/k/c/z/e;->d()Lf/k/c/z/e;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/c/z/e;->c()Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->amapFragmentContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->amapFragmentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "initMapSurfaceView add SurfaceView"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f080730

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method private initMapViewAfter()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    const-string v3, "initMapViewAfter()"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->reAdjustMapScale()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->disableMapRotate()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->setMapViewLongPressTimeOut()V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/autosdk/bussiness/map/MapController;->hidePoiOn3DMovingAndSliding(IZ)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->setMapCenter()V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapScaleController;->getInstance()Lcom/autosdk/bussiness/map/MapScaleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/map/MapScaleController;->init()V

    return-void
.end method

.method private initPowerLevel()Z
    .locals 7

    const-string v0, "MainActivity"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getPowerLevel()I

    move-result v2

    const-string v3, "[MainActivity]onCreate,level={?}"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v3, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_2

    sput-boolean v4, Lf/h/c/n0/f1;->f:Z

    invoke-static {}, Lf/h/c/n0/f1;->C()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->startEmptyActiivty()V

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->finish()V

    const-string v2, "[MainActivity]onCreate,startEmptyActiivty"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v4, Lf/h/c/n0/f1;->g:Z

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return v4

    :catchall_0
    move-exception v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getPowerLevel failure"

    invoke-static {v0, v4, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    return v1
.end method

.method private initRootViewChangeListener()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lf/k/c/a/o;

    invoke-direct {v1, p0}, Lf/k/c/a/o;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private initSrSwitch()V
    .locals 6

    invoke-static {}, Lf/h/c/n0/v2;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/h/c/n0/v2;->a(Landroid/content/Context;)V

    const/4 v0, 0x2

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/h/c/j0/k0;->setBydConfigKeyTrafficMode(I)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "MainActivity"

    const-string v5, "syncTrafficMode2Copilot mode={?}"

    invoke-static {v3, v5, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/autosdk/bussiness/kld/bean/KIdResponseChangeTrafficModeBean;

    invoke-direct {v2}, Lcom/autosdk/bussiness/kld/bean/KIdResponseChangeTrafficModeBean;-><init>()V

    invoke-virtual {v2, v0}, Lcom/autosdk/bussiness/kld/bean/KIdResponseChangeTrafficModeBean;->setMode(I)V

    invoke-virtual {v2, v1}, Lcom/autosdk/bussiness/kld/bean/BaseKIdSyncSettingResponseBean;->setSucceed(Z)V

    invoke-static {}, Lcom/autosdk/common/kld/KldMessagerController;->r()Lcom/autosdk/common/kld/KldMessagerController;

    move-result-object v0

    const v1, 0x1ae1f

    invoke-static {v2}, Lf/h/c/n0/z1;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/kld/KldMessagerController;->C(ILjava/lang/String;)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0, v4}, Lf/h/c/j0/k0;->setBydConfigKeyMaxScaleOffOn(I)V

    return-void
.end method

.method private initStatusBar()V
    .locals 1

    new-instance v0, Lf/k/c/a/c0;

    invoke-direct {v0, p0}, Lf/k/c/a/c0;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    invoke-static {v0}, Lcom/autosdk/bussiness/common/task/TaskManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initTeamMessageObserver()V
    .locals 4

    new-instance v0, Lcom/autosdk/user/observed/TeamMessageObserver;

    invoke-direct {v0}, Lcom/autosdk/user/observed/TeamMessageObserver;-><init>()V

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mTeamMessageObserver:Lcom/autosdk/user/observed/TeamMessageObserver;

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/user/UserController;->getMsgPushModel()Lcom/autosdk/bussiness/user/model/MsgPushModel;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MainActivity"

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "addTeamMessageListener"

    invoke-static {v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/user/UserController;->getMsgPushModel()Lcom/autosdk/bussiness/user/model/MsgPushModel;

    move-result-object v0

    iget-object v3, p0, Lcom/byd/automap/activity/MainActivity;->mTeamMessageObserver:Lcom/autosdk/user/observed/TeamMessageObserver;

    invoke-virtual {v0, v3}, Lcom/autosdk/bussiness/user/model/MsgPushModel;->addTeamMessageListener(Lcom/autosdk/bussiness/user/listener/TeamMessageListener;)V

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v0

    iget-object v3, p0, Lcom/byd/automap/activity/MainActivity;->mTeamMessageObserver:Lcom/autosdk/user/observed/TeamMessageObserver;

    invoke-virtual {v0, v3}, Lcom/autosdk/bussiness/user/UserController;->groupAddObserver(Lcom/autonavi/gbl/user/group/observer/IGroupServiceObserver;)V

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/user/UserController;->getMsgPushModel()Lcom/autosdk/bussiness/user/model/MsgPushModel;

    move-result-object v0

    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "addSend2carPushMsgListener"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/user/UserController;->getMsgPushModel()Lcom/autosdk/bussiness/user/model/MsgPushModel;

    move-result-object v0

    invoke-static {}, Lf/k/c/o/b;->g()Lf/k/c/o/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/user/model/MsgPushModel;->addSend2carPushMsgListener(Lcom/autosdk/bussiness/user/listener/AimPushMessageListener;)V

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0a005e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->amapFragmentContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0aaf

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a094d

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMainDrParam:Lcom/autonavi/skin/view/SkinTextView;

    const v0, 0x7f0a094c

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMainDrEnterParam:Lcom/autonavi/skin/view/SkinTextView;

    return-void
.end method

.method private isContainsHomeCategory(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "android.intent.category.HOME_ONLY"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHasTask()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getFragmentStack()Lf/h/i/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getFragmentStack()Lf/h/i/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/i/b/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNeedShowTipsView()Z
    .locals 3

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/autosdk/bussiness/settings/SettingConstant;->SP_SHOW_TIPS:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2}, Lf/h/c/k0/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isTaskContainsMain()Z
    .locals 10

    const-string v0, "MainActivity"

    const-string v1, "activity"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    # Activity 的配置携带当前 Task 的真实 activityType，不能用 Intent category 代替。
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v6}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    const-string v7, "[isTaskContainsMain] taskInfo: {?}"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v6, v8, v2

    invoke-static {v0, v7, v8}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_0

    iget-object v7, v6, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v7

    iget v8, v6, Landroid/app/TaskInfo;->taskId:I

    if-eq v7, v8, :cond_0

    iget-object v7, v6, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v7

    if-eq v9, v7, :cond_dedupe_existing_task

    const/4 v8, 0x2

    if-eq v9, v8, :cond_current_home_role

    const/4 v8, 0x1

    if-ne v9, v8, :cond_dedupe_existing_task

    const/4 v8, 0x2

    if-eq v7, v8, :cond_keep_cross_role_task

    goto/16 :cond_dedupe_existing_task

    :cond_current_home_role
    const/4 v8, 0x1

    if-ne v7, v8, :cond_dedupe_existing_task

    :cond_keep_cross_role_task
    # Home 与 standard 属于不同系统角色，允许各自保留一个 MainActivity Task。
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v3

    const-string v6, "[isTaskContainsMain] keep cross-role tasks, currentType={?}, existingType={?}"

    invoke-static {v0, v6, v8}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :cond_0

    :cond_dedupe_existing_task
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget v4, v6, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v1, v4, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "[isTaskContainsMain] exception:{?}"

    invoke-static {v0, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v2
.end method

.method private judgeNeedRestart2(Landroid/os/Bundle;)Z
     .locals 1
     const v0,0x0
     return v0
 .end method

.method private handleMapHomeEnterPip()V
    .locals 5

    iget-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isMapHomePipRestartPending:Z

    if-nez v0, :cond_return

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_1_3:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-eq v0, v1, :cond_compact

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_2_3:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-ne v0, v1, :cond_return

    :cond_compact
    invoke-static {p0}, Lf/h/c/n0/h2;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_return

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/byd/automap/activity/MainActivity;->isMapHomePipRestartPending:Z

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "MainActivity"

    const-string v1, "map home enters compact window, currentHome={?}, screenStatus={?}"

    invoke-static {v0, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lf/h/c/n0/h2;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/byd/automap/activity/MainActivity$u;

    invoke-direct {v1, p0}, Lcom/byd/automap/activity/MainActivity$u;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    invoke-static {p0, v0, v1}, Lf/h/c/n0/h2;->g(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Consumer;)V

    :cond_return
    return-void
.end method

.method private buildDefaultHomeTaskIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lf/h/q/d;

    invoke-interface {v1, v0}, Lf/h/q/d;->getMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    # 与 EmptyJumpUtil 的冷启动分支使用同一套参数复制规则。
    invoke-static {v1, p1, v2}, Lf/k/c/x/c1;->f(Landroid/content/Intent;Landroid/content/Intent;Z)V

    invoke-static {v1}, Lf/h/c/n0/f1;->T(Landroid/content/Intent;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mProductActivateInstruct:Ljava/lang/String;

    if-eqz p1, :cond_product_done

    const-string v3, "product_activate"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_product_done
    return-object v1
.end method

.method private isCurrentDefaultHomeTask()Z
    .locals 3

    invoke-static {p0}, Lf/h/c/n0/x1;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_not_default_home

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isLauncherPlatform()Z

    move-result v0

    if-nez v0, :cond_check_home_type

    # 非 Launcher 平台的 getMainIntent 不添加 HOME_ONLY，主屏 standard Task 即为正确状态。
    const/4 v0, 0x1

    return v0

    :cond_check_home_type
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_not_default_home

    const/4 v0, 0x1

    return v0

    :cond_not_default_home
    const/4 v0, 0x0

    return v0
.end method

.method public handleDefaultHomeTaskHandoff(Landroid/content/Intent;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_return

    if-nez p2, :cond_check_current_task

    const-string v1, "start_from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lf/h/c/v;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_check_current_task

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->isContainsHomeCategory(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_return

    :cond_check_current_task
    iget-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->isDefaultHomeTaskHandoffPending:Z

    if-nez v1, :cond_handled

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->isCurrentDefaultHomeTask()Z

    move-result v1

    if-nez v1, :cond_return

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->buildDefaultHomeTaskIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v3

    new-instance v4, Lcom/byd/automap/activity/MainActivity$v;

    invoke-direct {v4, v3, v2}, Lcom/byd/automap/activity/MainActivity$v;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/byd/automap/activity/MainActivity;->isDefaultHomeTaskHandoffPending:Z

    # 跳过旧实例的地图反初始化；新 HOME Task 会复用同一进程内的地图状态。
    sput-boolean v2, Lf/h/c/n0/f1;->e:Z

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p0}, Lf/h/c/n0/x1;->c(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v5, p2

    const-string p1, "MainActivity"

    const-string p2, "remove stale task before default HOME relaunch, taskId={?}, displayId={?}, fromDispatch={?}"

    invoke-static {p1, p2, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    # 只保留一次异步调度，不再查询旧 Task 或等待其从任务列表消失。
    const-wide/16 v5, 0x64

    invoke-static {v4, v5, v6}, Lcom/autosdk/bussiness/common/task/TaskManager;->postDelayed(Ljava/lang/Runnable;J)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_handled
    const/4 v0, 0x1

    :cond_return
    return v0
.end method

.method public onMapHomeRoleChangedForPip(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "MainActivity"

    const-string v3, "set wallpaper home for compact window result={?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_failed

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_failed

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_return

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_return

    # 必须在移除旧任务前保存虚拟屏 ID，避免重启后被固定拉回主屏。
    invoke-static {p0}, Lf/h/c/n0/x1;->c(Landroid/content/Context;)I

    move-result v2

    # 复用 judgeNeedRestart 的重启路径；新 Activity 因 HOME 已切走不会再次触发。
    sput-boolean v0, Lf/h/c/n0/f1;->e:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mProductActivateInstruct:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/byd/automap/activity/MainActivity;->restartActivity(Ljava/lang/String;I)V

    return-void

    :cond_failed
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/byd/automap/activity/MainActivity;->isMapHomePipRestartPending:Z

    :cond_return
    return-void
.end method

.method private judgeNeedRestart(Landroid/os/Bundle;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->needRestartActivity(Landroid/os/Bundle;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_restart

    new-array p1, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "needRestartActivity skip restart in multi-window"

    invoke-static {v1, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->reAdjustMapScale()V

    return v0

    :cond_restart
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "MainActivity"

    const-string v1, "needRestartActivity"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    sput-boolean p1, Lf/h/c/n0/f1;->e:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mProductActivateInstruct:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/byd/automap/activity/MainActivity;->restartActivity(Ljava/lang/String;I)V

    return p1

    :cond_0
    return v0
.end method

.method private judgeStarted()Z
    .locals 3

    # isTaskContainsMain 只在同一 activityType 内判重，跨 Home/standard 角色继续当前实例。
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->isTaskContainsMain()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "[onCreate] same-role task contains MainActivity"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lf/k/c/x/k1;->s(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isSecondMainActivityFinish:Z

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->finish()V

    return v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$askIsOrNoOpenVoicePermission$23()V
    .locals 2

    invoke-static {p0}, Lf/h/u/j/l/r0;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lf/h/u/j/l/r0;->c()Lf/h/u/j/l/r0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/h/u/j/l/r0;->a(Z)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$askIsOrNoOpenVoicePermission$24()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$checkIsPowerDown$20(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerLevelChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    invoke-static {}, Lf/h/u/c/b;->g()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$doStartUp$10()V
    .locals 13

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "MainActivity"

    const-string v6, "widthPixels = {?} heightPixels = {?}"

    invoke-static {v3, v6, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformUI()Z

    move-result v2

    const/high16 v6, 0x43200000    # 160.0f

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isYW()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lf/h/c/n0/o2;->h(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lf/h/c/n0/o2;->f(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v9

    int-to-double v10, v0

    mul-double/2addr v10, v7

    double-to-int v10, v10

    int-to-double v11, v2

    mul-double/2addr v11, v7

    double-to-int v7, v11

    invoke-virtual {v9, v10, v7, v6}, Lcom/autosdk/bussiness/map/MapController;->setMapZoomScaleAdaptive(IIF)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "isPlatformUI: width = {?} height = {?}"

    invoke-static {v3, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    mul-double/2addr v2, v7

    double-to-int v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v0

    mul-double/2addr v3, v7

    double-to-int v0, v3

    invoke-virtual {v1, v2, v0, v6}, Lcom/autosdk/bussiness/map/MapController;->setMapZoomScaleAdaptive(IIF)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$handleOverSpeedView$21(Lcom/autonavi/view/custom/CustomOverspeedView;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->getLayoutParams(Lcom/autonavi/view/custom/CustomOverspeedView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/h/c/n0/l2;->l()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "MainActivity"

    const-string v1, "handleOverSpeedView: activity is finish..."

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$initCloudSwitch$5()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/byd/automap/utils/MapFuncConfigManagerTwo;->h()Lcom/byd/automap/utils/MapFuncConfigManagerTwo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byd/automap/utils/MapFuncConfigManagerTwo;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error happened in server func retrieving process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "MainActivity"

    invoke-static {v3, v1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method private synthetic lambda$initRootViewChangeListener$4(Landroid/view/View;IIIIIIII)V
    .locals 6

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    if-nez p8, :cond_0

    if-nez p9, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    aget v3, v2, p1

    const/4 v4, 0x1

    aget v2, v2, v4

    const-string v5, "MainActivity"

    if-ne p2, p6, :cond_3

    if-ne p3, p7, :cond_3

    if-ne p4, p8, :cond_3

    if-eq p5, p9, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/byd/automap/activity/MainActivity;->mRootViewLocationOnScreen0:I

    if-ne p2, v3, :cond_2

    iget p2, p0, Lcom/byd/automap/activity/MainActivity;->mRootViewLocationOnScreen1:I

    if-eq p2, v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/autosdk/common/utils/DPIUtil;->I(Landroid/view/View;)V

    invoke-static {}, Lcom/automap/carlife/CarLifeDataHelper;->B()Lcom/automap/carlife/CarLifeDataHelper;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/automap/carlife/CarLifeDataHelper;->u0(Landroid/content/res/Configuration;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget-boolean p3, p0, Lcom/byd/automap/activity/MainActivity;->isMapOnStop:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p2, p1

    iget-boolean p1, p0, Lcom/byd/automap/activity/MainActivity;->isStart:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v4

    iget-boolean p1, p0, Lcom/byd/automap/activity/MainActivity;->isSplit:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "LayoutChange: {?},{?},{?}"

    invoke-static {v5, p1, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/byd/automap/activity/MainActivity;->checkDpiChangedBackground(Landroid/content/res/Configuration;)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/byd/automap/activity/MainActivity;->doChangeScreen(Landroid/content/res/Configuration;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    const-string p2, "initRootViewChangeListener: left {?}, oldLeft {?}"

    invoke-static {v5, p2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p6, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p6, p1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p6, v4

    invoke-static {v5, p2, p6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p1

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-static {v5, p2, p3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p1

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v4

    invoke-static {v5, p2, p3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iput v3, p0, Lcom/byd/automap/activity/MainActivity;->mRootViewLocationOnScreen0:I

    iput v2, p0, Lcom/byd/automap/activity/MainActivity;->mRootViewLocationOnScreen1:I

    return-void
.end method

.method public static synthetic lambda$initStatusBar$2(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lf/h/c/z;->v(ZZ)V

    return-void
.end method

.method private synthetic lambda$initStatusBar$3()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const-string v1, "MainActivity"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "night = {?}"

    invoke-static {v1, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lf/h/c/z;->n(Z)V

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->PORTRAIT_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lf/h/c/z;->v(ZZ)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mFloatWidgetDisposable:Lh/a/a0/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lh/a/a0/b;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mFloatWidgetDisposable:Lh/a/a0/b;

    invoke-interface {v0}, Lh/a/a0/b;->dispose()V

    :cond_2
    invoke-static {}, Lf/h/c/y;->a()Lf/h/c/y;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/y;->d()Lh/a/n;

    move-result-object v0

    sget-object v1, Lf/k/c/a/q;->a:Lf/k/c/a/q;

    invoke-virtual {v0, v1}, Lh/a/n;->subscribe(Lh/a/d0/g;)Lh/a/a0/b;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mFloatWidgetDisposable:Lh/a/a0/b;

    goto :goto_1

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "permissionsResultSuccess: activity is finish..."

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onResume$6(Lcom/autonavi/gbl/user/msgpush/model/AimPoiInfo;Lf/h/q/d;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "UserConstant.START_PAGE_BOOT_COMPLETED_MSG_POI "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/autosdk/bussiness/user/utils/MessageDateConvertUtils;->convertAimPushMsgToPoi(Lcom/autonavi/gbl/user/msgpush/model/AimPoiInfo;)Lcom/autosdk/bussiness/common/POI;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lf/h/c/n0/w2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/autosdk/bussiness/common/POI;->setFrom(Ljava/lang/String;)V

    const-string v1, "module_service_drive"

    invoke-interface {p2, v1}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/h/q/g;

    invoke-interface {p2}, Lf/h/q/d;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {v1, p2, p1, v0}, Lf/h/q/g;->v(Landroid/content/Context;Lcom/autosdk/bussiness/common/POI;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$onResume$7(Lf/h/q/d;Lcom/autonavi/gbl/user/msgpush/model/AimRoutePushInfo;)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "UserConstant.START_PAGE_BOOT_COMPLETED_MSG_ROUTE "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "module_service_drive"

    invoke-interface {p1, v0}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lf/h/q/g;

    invoke-interface {p1}, Lf/h/q/d;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p2, Lcom/autonavi/gbl/user/msgpush/model/AimRoutePushInfo;->path:Lcom/autonavi/gbl/user/msgpush/model/RoutepathrestorationPathInfo;

    iget-object v4, p2, Lcom/autonavi/gbl/user/msgpush/model/AimRoutePushInfo;->routeParam:Lcom/autonavi/gbl/user/msgpush/model/MobileRouteParam;

    const/4 p1, 0x0

    invoke-static {p1}, Lf/h/c/n0/w2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/autonavi/gbl/user/msgpush/model/AimRoutePushInfo;->naviId:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lf/h/q/g;->x(Landroid/content/Context;Lcom/autonavi/gbl/user/msgpush/model/RoutepathrestorationPathInfo;Lcom/autonavi/gbl/user/msgpush/model/MobileRouteParam;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onResume$8(Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "UserConstant.START_PAGE_BOOT_COMPLETED_MSG_DESTINATION "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/byd/automap/activity/MainActivity;->startPlanRouteGoToDestination(Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;)V

    return-void
.end method

.method private synthetic lambda$onResume$9()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/z;->j()V

    return-void
.end method

.method private synthetic lambda$permissionsResultSuccess$1()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MainActivity"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "permissionsResultSuccess dispatch"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/c/j/i;->c()Lf/k/c/j/i;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lf/k/c/j/i;->a(Lcom/byd/automap/activity/MainActivity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "permissionsResultSuccess: activity is finish..."

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$protocolCallProcess$11()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lf/h/q/d;

    const-string v1, "module_service_user"

    invoke-interface {v0, v1}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/h/q/n;

    invoke-interface {v0}, Lf/h/q/n;->i()V

    return-void
.end method

.method private synthetic lambda$protocolCallProcess$12()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/ProtocolUtils;->getCurLocationResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x7532

    invoke-virtual {v1, v0, v2}, Lcom/autosdk/common/settings/ProtocolUtils;->giveACallBack(ZI)Z

    return-void
.end method

.method private synthetic lambda$protocolCallProcess$13(Lf/h/q/d;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "module_service_search"

    invoke-interface {p1, v0}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/h/q/j;

    const-string v0, "map_widget_route_type_go_home"

    invoke-interface {p1, v0}, Lf/h/q/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$protocolCallProcess$14(Lf/h/q/d;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "module_service_search"

    invoke-interface {p1, v0}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/h/q/j;

    const-string v0, "map_widget_route_type_goto_work"

    invoke-interface {p1, v0}, Lf/h/q/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$protocolCallProcess$15()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/common/settings/ProtocolUtils;->isHomeSet()Z

    move-result v1

    const/16 v2, 0x753a

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/settings/ProtocolUtils;->giveACallBack(ZI)Z

    return-void
.end method

.method private synthetic lambda$protocolCallProcess$16()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/common/settings/ProtocolUtils;->isCompanySet()Z

    move-result v1

    const/16 v2, 0x753a

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/settings/ProtocolUtils;->giveACallBack(ZI)Z

    return-void
.end method

.method private synthetic lambda$protocolCallProcess$17(Lf/h/q/d;Lcom/autosdk/bussiness/common/POI;Lcom/autosdk/bussiness/common/POI;Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "module_service_drive"

    invoke-interface {p1, v0}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/h/q/g;

    const-string v0, "voice"

    invoke-virtual {p2, v0}, Lcom/autosdk/bussiness/common/POI;->setFrom(Ljava/lang/String;)V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-interface {p1, v0, p3, p2, p4}, Lf/h/q/g;->u(Landroid/content/Context;Lcom/autosdk/bussiness/common/POI;Lcom/autosdk/bussiness/common/POI;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$protocolCallProcess$18(Lf/h/q/d;Lcom/autosdk/bussiness/common/POI;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "module_service_drive"

    invoke-interface {p1, v0}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/h/q/g;

    const-string v0, "voice"

    invoke-virtual {p2, v0}, Lcom/autosdk/bussiness/common/POI;->setFrom(Ljava/lang/String;)V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lf/h/q/g;->d(Landroid/content/Context;Lcom/autosdk/bussiness/common/POI;)V

    return-void
.end method

.method private synthetic lambda$protocolCallProcess$19()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lf/h/q/d;

    const-string v1, "module_service_route_history"

    invoke-interface {v0, v1}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/h/q/j;

    invoke-interface {v0}, Lf/h/q/j;->e()V

    return-void
.end method

.method private synthetic lambda$showOrHiddenWidgetBg$22(ZZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lf/h/c/z;->v(ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showTipPageView$0(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isPemUseTips:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/storage/MapSharePreference;->j(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)V

    :cond_0
    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mapTipPageView:Lf/k/c/w/b;

    return-void
.end method

.method private navi_exit()V
    .locals 3

    invoke-static {}, Lcom/autosdk/bussiness/track/MapTrackUtil;->getInstance()Lcom/autosdk/bussiness/track/MapTrackUtil;

    move-result-object v0

    iget v0, v0, Lcom/autosdk/bussiness/track/MapTrackUtil;->mapStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/autosdk/bussiness/track/TrackEventBus;

    invoke-direct {v0}, Lcom/autosdk/bussiness/track/TrackEventBus;-><init>()V

    sget-boolean v2, Lcom/autosdk/bussiness/track/MapTrackUtil;->isAccOff:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    iput v1, v0, Lcom/autosdk/bussiness/track/TrackEventBus;->type:I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/autosdk/bussiness/track/MapTrackUtil;->isAccOff:Z

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/d/a/c;->l(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private needRestartActivity(Landroid/os/Bundle;)Z
    .locals 7

    const-string v0, "MainActivity"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.intent.category.HOME_ONLY"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "needRestartActivity is home_only intent :{?}"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkPlatform()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->is300Platform()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isBPlatform()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    const-string v5, "[isHomeRootTask] taskInfo: {?}"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v0, v5, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/TaskInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityType=2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "[isHomeRootTask] false\uff0cneedRestartActivity"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const-string v3, "[isHomeRootTask] exception:{?}"

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    return v2

    :cond_3
    const-string v0, "processId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method private onConfigurationChangeScreen()V
    .locals 6

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/byd/automap/activity/MainActivity;->setCarScale()V

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->a()I

    move-result v1

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    const-string v3, "MainActivity"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "currentDpi={?} ,densityDpi={?}"

    invoke-static {v3, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v0, v5}, Lcom/autosdk/common/utils/DPIUtil;->E(Landroid/content/Context;Landroid/content/res/Configuration;Z)Landroid/content/Context;

    :cond_0
    iget-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->isStart:Z

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/byd/automap/activity/MainActivity;->isSplit:Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/byd/automap/activity/MainActivity;->isStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/byd/automap/activity/MainActivity;->isSplit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->reAdjustMapScale()V

    invoke-static {}, Lf/h/k/d/e;->e()Lf/h/k/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/k/d/e;->g()V

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->J()V

    invoke-direct {p0, v0}, Lcom/byd/automap/activity/MainActivity;->doChangeScreen(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->handleOverSpeedView()V

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->PORTRAIT_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v1

    invoke-virtual {v0, v1, v4}, Lf/h/c/z;->v(ZZ)V

    :cond_3
    return-void
.end method

.method private permissionCheck(Ljava/lang/String;)V
    .locals 6

    const-string p1, "kd"

    invoke-static {p0, p1}, Lf/h/c/n0/f1;->H(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lf/k/c/x/y0;

    invoke-direct {p1}, Lf/k/c/x/y0;-><init>()V

    const-string v0, "sys.byd.boot_business"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lf/k/c/x/y0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "permissionCheck:  business:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "activated"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mTimer:Ljava/util/Timer;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/byd/automap/activity/MainActivity$a;

    invoke-direct {v1, p0}, Lcom/byd/automap/activity/MainActivity$a;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x9c4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->check()V

    :goto_0
    return-void
.end method

.method private productionLineActivation()V
    .locals 1

    invoke-static {p0}, Lf/h/c/v;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf/h/c/n0/y1;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lf/h/c/n0/d1;->e()V

    :cond_0
    return-void
.end method

.method private protocolCallProcess()V
    .locals 15

    move-object v6, p0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lf/h/q/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v7, "protocol_type"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "MainActivity"

    const-string v4, "protocolCallProcess hasExtra:protocol_type"

    invoke-static {v3, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v8, "protocol_type_to_set_company_view"

    const-string v9, "protocol_type_to_set_home_view"

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "protocol_type_my_location"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "protocol_type_start_navi"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "protocol_continue_navi_task"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_4
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_5
    const-string v5, "protocol_type_user_favorates"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_6
    const-string v5, "protocol_type_go_company"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_7
    const-string v5, "protocol_type_go_home"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_8
    const-string v5, "protocol_type_home_query"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_9
    const-string v5, "protocol_type_company_query"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    move v4, v10

    goto :goto_0

    :sswitch_a
    const-string v5, "protocol_type_history_page"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    move v4, v0

    :goto_0
    const-string v5, "protocolCallProcess hasExtra:{?}"

    const-wide/16 v13, 0x3e8

    const-wide/16 v11, 0x5dc

    packed-switch v4, :pswitch_data_0

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "protocolCallProcess: stringExtra is {?}"

    invoke-static {v3, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_0
    new-array v1, v10, [Ljava/lang/Object;

    aput-object v8, v1, v0

    invoke-static {v3, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/autosdk/common/settings/ProtocolUtils;->got2HomeOrCompanyView(I)V

    goto/16 :goto_4

    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "protocolCallProcess hasExtra:protocol_type_my_location"

    invoke-static {v3, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/location/LocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    new-instance v1, Lcom/autosdk/bussiness/common/GeoPoint;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autosdk/bussiness/common/GeoPoint;-><init>(DD)V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autosdk/common/settings/ProtocolUtils;->getCarLocation(Lcom/autosdk/bussiness/common/GeoPoint;)Z

    new-instance v0, Lf/k/c/a/w;

    invoke-direct {v0, p0}, Lf/k/c/a/w;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    :goto_1
    invoke-static {v0, v13, v14}, Lcom/autosdk/bussiness/common/task/TaskManager;->postDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "poiName"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "lat"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "lng"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/autosdk/common/settings/ProtocolUtils;->convertPoi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/autosdk/bussiness/common/POI;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "passLat"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "passLng"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/location/LocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v1, v8, v5, v0}, Lcom/autosdk/common/settings/ProtocolUtils;->convertPoi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/autosdk/bussiness/common/POI;

    move-result-object v5

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "passPoiName"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/autosdk/common/settings/ProtocolUtils;->convertPoi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/autosdk/bussiness/common/POI;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lf/k/c/a/b0;

    move-object v0, v9

    move-object v1, p0

    move-object v4, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lf/k/c/a/b0;-><init>(Lcom/byd/automap/activity/MainActivity;Lf/h/q/d;Lcom/autosdk/bussiness/common/POI;Lcom/autosdk/bussiness/common/POI;Ljava/util/ArrayList;)V

    invoke-static {v9, v11, v12}, Lcom/autosdk/bussiness/common/task/TaskManager;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_4

    :cond_b
    new-instance v1, Lf/k/c/a/r;

    invoke-direct {v1, p0, v2, v0}, Lf/k/c/a/r;-><init>(Lcom/byd/automap/activity/MainActivity;Lf/h/q/d;Lcom/autosdk/bussiness/common/POI;)V

    invoke-static {v1, v11, v12}, Lcom/autosdk/bussiness/common/task/TaskManager;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_4

    :pswitch_3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "protocolCallProcess hasExtra:protocol_continue_navi_task"

    invoke-static {v3, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_4
    new-array v1, v10, [Ljava/lang/Object;

    aput-object v9, v1, v0

    invoke-static {v3, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/common/settings/ProtocolUtils;->got2HomeOrCompanyView(I)V

    goto :goto_4

    :pswitch_5
    new-instance v0, Lf/k/c/a/p;

    invoke-direct {v0, p0}, Lf/k/c/a/p;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    :goto_2
    const-wide/16 v1, 0xfa0

    invoke-static {v0, v1, v2}, Lcom/autosdk/bussiness/common/task/TaskManager;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_4

    :pswitch_6
    new-instance v0, Lf/k/c/a/z;

    invoke-direct {v0, p0, v2}, Lf/k/c/a/z;-><init>(Lcom/byd/automap/activity/MainActivity;Lf/h/q/d;)V

    goto :goto_3

    :pswitch_7
    new-instance v0, Lf/k/c/a/e0;

    invoke-direct {v0, p0, v2}, Lf/k/c/a/e0;-><init>(Lcom/byd/automap/activity/MainActivity;Lf/h/q/d;)V

    :goto_3
    invoke-static {v0, v11, v12}, Lcom/autosdk/bussiness/common/task/TaskManager;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_4

    :pswitch_8
    new-instance v0, Lf/k/c/a/f0;

    invoke-direct {v0, p0}, Lf/k/c/a/f0;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    goto/16 :goto_1

    :pswitch_9
    new-instance v0, Lf/k/c/a/x;

    invoke-direct {v0, p0}, Lf/k/c/a/x;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    goto/16 :goto_1

    :pswitch_a
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "protocolCallProcess hasExtra:protocol_type_history_page"

    invoke-static {v3, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lf/k/c/a/s;

    invoke-direct {v0, p0}, Lf/k/c/a/s;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    goto :goto_2

    :cond_c
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "protocol_type_voice_search"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72dc21a8 -> :sswitch_a
        -0x6cbae4b8 -> :sswitch_9
        -0x5589601a -> :sswitch_8
        -0x4ce4dfe8 -> :sswitch_7
        -0x46dce55c -> :sswitch_6
        -0x2d7a3097 -> :sswitch_5
        -0x11d1005e -> :sswitch_4
        -0xd7d3213 -> :sswitch_3
        0x2ec6fe1 -> :sswitch_2
        0x88a222a -> :sswitch_1
        0x2b496e6a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reAdjustMapScale()V
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    const-string v3, "reAdjustMapScale"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    invoke-static {v1}, Lf/h/c/n0/g2;->d(Z)F

    move-result v1

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lez v8, :cond_split_size_fallback

    if-lez v9, :cond_split_size_fallback

    goto :goto_split_size_ready

    :cond_split_size_fallback
    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_split_size_ready
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "reAdjustMapScale viewport width={?}, height={?}"

    invoke-static {v2, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v4

    const/high16 v5, 0x43200000    # 160.0f

    invoke-virtual {v4, v8, v9, v5}, Lcom/autosdk/bussiness/map/MapController;->setMapZoomScaleAdaptive(IIF)V

    new-instance v4, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;

    invoke-direct {v4}, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;-><init>()V

    float-to-double v5, v1

    iput-wide v5, v4, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;->poiScale:D

    iput-wide v5, v4, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;->bgScale:D

    iput-wide v5, v4, Lcom/autonavi/gbl/map/layer/model/ScaleInfo;->bubbleScale:D

    invoke-virtual {v3}, Lcom/autonavi/gbl/map/MapView;->getLayerMgr()Lcom/autonavi/gbl/map/layer/LayerMgr;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/autonavi/gbl/map/layer/LayerMgr;->setAllPointLayerItemsScale(Lcom/autonavi/gbl/map/layer/model/ScaleInfo;)V

    invoke-static {v8, v9}, Lf/h/c/n0/g2;->b(II)F

    move-result v4

    sput v4, Lf/h/c/j0/m0;->d:F

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->w()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget v4, Lf/h/c/j0/m0;->d:F

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    sget v4, Lf/h/c/j0/m0;->d:F

    :goto_1
    sget-boolean v5, Lcom/autosdk/bussiness/settings/SettingConstant;->is3DMap:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->w()Z

    move-result v5

    if-eqz v5, :cond_2

    float-to-double v4, v4

    const-wide v6, 0x3ff6666666666666L    # 1.4

    goto :goto_2

    :cond_2
    float-to-double v4, v4

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    :goto_2
    mul-double/2addr v4, v6

    double-to-float v4, v4

    :cond_3
    invoke-virtual {v3}, Lcom/autonavi/gbl/map/MapView;->getOperatorBusiness()Lcom/autonavi/gbl/map/OperatorBusiness;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/autonavi/gbl/map/OperatorBusiness;->setMapTextScale(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reAdjustMapScaleAndLevel: mapScale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lf/h/c/j0/m0;->d:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", poiScale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private registerActivityTop()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->listenerMultiDisplay:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Lcom/byd/automap/activity/MainActivity$19;

    invoke-direct {v0, p0}, Lcom/byd/automap/activity/MainActivity$19;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->listenerMultiDisplay:Ljava/lang/Object;

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->listenerMultiDisplay:Ljava/lang/Object;

    check-cast v1, Landroid/app/IActivityListener$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerActivityListener(Landroid/app/IActivityListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    const-string v3, "registerActivityTopListenerMultiDisplay error {?}"

    invoke-static {v2, v3, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private registerAosParkingOutStatus()V
    .locals 2

    invoke-static {}, Lf/k/o/c/b/d/d;->a()Lf/k/o/c/b/d/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/k/o/c/b/d/d;->d(Lf/k/o/c/b/d/f;)V

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v0

    sget-object v1, Lcom/byd/automap/activity/MainActivity;->navStopForEHPListener:Lcom/autosdk/bussiness/navi/NavStopForEHPListener;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/navi/NaviController;->registerNavStopListener(Lcom/autosdk/bussiness/navi/NavStopForEHPListener;)V

    return-void
.end method

.method private registerCarPlayReceiver()V
    .locals 1

    invoke-static {}, Lf/h/c/w;->a()Lf/h/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/w;->b()V

    return-void
.end method

.method private registerFloatWindowReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->floatWindowClickReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/byd/automap/activity/MainActivity$h;

    invoke-direct {v0, p0}, Lcom/byd/automap/activity/MainActivity$h;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->floatWindowClickReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "ACTION_FLOAT_WINDOW_CLICK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc/q/a/a;->b(Landroid/content/Context;)Lc/q/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/byd/automap/activity/MainActivity;->floatWindowClickReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lc/q/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerRequestStateReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mRequestStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/byd/automap/activity/MainActivity$b;

    invoke-direct {v1, p0}, Lcom/byd/automap/activity/MainActivity$b;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    iput-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mRequestStateReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mRequestStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restartActivity(Ljava/lang/String;I)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v2, "MainActivity"

    const-string v3, "restartActivity displayId={?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lf/h/q/d;

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v3

    invoke-interface {v1, v3}, Lf/h/q/d;->getMainIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "product_activate"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v3, :cond_6

    const-string p1, "map_widget_route_type"

    invoke-virtual {v3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "onCreate, getIntent().hasExtra, : ExtraData: "

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "map_widget_reach_type"

    invoke-virtual {v3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "message_info"

    invoke-virtual {v3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-array v4, v0, [Ljava/lang/Object;

    const-string v6, "onCreate, getIntent().hasExtra, : START_MAIN_INTENT_KEY_MSG_INFO"

    invoke-static {v2, v6, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    const-string v7, "message_type"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const-string p1, "protocol_type"

    invoke-virtual {v3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "protocol_type_start_navi"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    const-string p1, "main_activity_jump_from"

    invoke-virtual {v3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate ExtraData UserConstant.JUMP_FROME : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    sget-object p1, Lf/h/c/v;->d:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p1, Lf/h/c/v;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private savePermissionStatus()V
    .locals 3

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isAllPermissionSuccess:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/storage/MapSharePreference;->j(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "savePermissionStatus: Preference is null..."

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private sendMapStatusBroadcast(I)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2723

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "EXTRA_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "IS_BYD_MAP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lf/h/q/d;

    invoke-interface {v1}, Lf/h/q/d;->isForeground()Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    const-string v4, "EXTRA_IS_FOREGROUND"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EXTRA_IS_NAVI_LIFECYCLE"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "MainActivity"

    const-string v1, "sendMapStatusBroadcast stopValue:{?}  foreground:{?}"

    invoke-static {p1, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private sendTrackUseDuration()V
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "track_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "track_use_duration"

    const-string v5, "0min"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTrackUseDuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "MainActivity"

    invoke-static {v8, v6, v7}, Lcom/autosdk/bussiness/common/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Lcom/autosdk/bussiness/track/event/value/basedata/BaseUserDuration;

    invoke-direct {v6}, Lcom/autosdk/bussiness/track/event/value/basedata/BaseUserDuration;-><init>()V

    invoke-virtual {v6, v3}, Lcom/autosdk/bussiness/track/event/value/basedata/BaseUserDuration;->setDura(Ljava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/track/MapTrackUtil;->getInstance()Lcom/autosdk/bussiness/track/MapTrackUtil;

    move-result-object v3

    const-string v7, "base_use_dura"

    invoke-virtual {v3, v7, v6}, Lcom/autosdk/bussiness/track/MapTrackUtil;->sendBehaviorEvent(Ljava/lang/String;Ljava/lang/Object;)I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "off_time"

    const-wide/16 v7, 0x0

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "track_cruise_start_time"

    invoke-interface {v3, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v13, "track_cruise_time"

    const/4 v14, 0x0

    invoke-interface {v3, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    const-string v7, "h:"

    const-string v8, "min"

    const-wide/32 v18, 0xea60

    const-wide/16 v20, 0x3c

    if-nez v15, :cond_0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v22, v3

    move v3, v2

    move-object/from16 v2, v22

    goto :goto_2

    :cond_0
    const-wide/16 v15, 0x0

    cmp-long v17, v11, v15

    if-eqz v17, :cond_2

    cmp-long v17, v9, v11

    if-lez v17, :cond_2

    sub-long v11, v9, v11

    div-long v11, v11, v18

    move-object/from16 v22, v3

    div-long v2, v11, v20

    mul-long v23, v2, v20

    sub-long v11, v11, v23

    long-to-int v11, v11

    cmp-long v12, v2, v15

    if-lez v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Lcom/autosdk/bussiness/track/event/value/home/TrackCruiseExitModel;

    invoke-direct {v3}, Lcom/autosdk/bussiness/track/event/value/home/TrackCruiseExitModel;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/autosdk/bussiness/track/event/value/home/TrackCruiseExitModel;->setMode(I)V

    invoke-virtual {v3, v2}, Lcom/autosdk/bussiness/track/event/value/home/TrackCruiseExitModel;->setDuration(Ljava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/track/MapTrackUtil;->getInstance()Lcom/autosdk/bussiness/track/MapTrackUtil;

    move-result-object v11

    const-string v12, "cruise_exit"

    invoke-virtual {v11, v12, v3}, Lcom/autosdk/bussiness/track/MapTrackUtil;->sendBehaviorEvent(Ljava/lang/String;Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    move-object/from16 v22, v3

    move-object v2, v5

    :goto_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "track_navi_start_time"

    const-wide/16 v14, 0x0

    invoke-interface {v11, v12, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v7, 0x0

    invoke-interface {v3, v13, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v3, v22

    goto :goto_4

    :cond_3
    cmp-long v3, v16, v14

    if-eqz v3, :cond_5

    cmp-long v3, v9, v16

    if-lez v3, :cond_5

    sub-long v9, v9, v16

    div-long v9, v9, v18

    div-long v14, v9, v20

    mul-long v20, v20, v14

    sub-long v9, v9, v20

    long-to-int v3, v9

    const-wide/16 v9, 0x0

    cmp-long v11, v14, v9

    if-lez v11, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    new-instance v7, Lcom/autosdk/bussiness/track/event/value/navi/NaviExit;

    invoke-direct {v7}, Lcom/autosdk/bussiness/track/event/value/navi/NaviExit;-><init>()V

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/autosdk/bussiness/track/event/value/navi/NaviExit;->setMode(I)V

    invoke-virtual {v7, v3}, Lcom/autosdk/bussiness/track/event/value/navi/NaviExit;->setDuration(Ljava/lang/String;)V

    invoke-static {}, Lcom/autosdk/bussiness/track/MapTrackUtil;->getInstance()Lcom/autosdk/bussiness/track/MapTrackUtil;

    move-result-object v8

    const-string v9, "navi_exit"

    invoke-virtual {v8, v9, v7}, Lcom/autosdk/bussiness/track/MapTrackUtil;->sendBehaviorEvent(Ljava/lang/String;Ljava/lang/Object;)I

    goto :goto_4

    :cond_5
    move-object v3, v5

    :goto_4
    new-instance v7, Lcom/autosdk/bussiness/track/event/value/basedata/BaseExit;

    invoke-direct {v7}, Lcom/autosdk/bussiness/track/event/value/basedata/BaseExit;-><init>()V

    invoke-virtual {v7, v2}, Lcom/autosdk/bussiness/track/event/value/basedata/BaseExit;->setCruiset(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/autosdk/bussiness/track/event/value/basedata/BaseExit;->setDuration(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v8, 0x3

    const-string v9, "kill_mode"

    invoke-interface {v3, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/autosdk/bussiness/track/event/value/basedata/BaseExit;->setMode(I)V

    invoke-static {}, Lcom/autosdk/bussiness/track/MapTrackUtil;->getInstance()Lcom/autosdk/bussiness/track/MapTrackUtil;

    move-result-object v3

    const-string v8, "base_exit"

    invoke-virtual {v3, v8, v7}, Lcom/autosdk/bussiness/track/MapTrackUtil;->sendBehaviorEvent(Ljava/lang/String;Ljava/lang/Object;)I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "track_navi_time"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v12, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private sendWidgetTrack(Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendWidgetTrack==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "start_from"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "MainActivity"

    invoke-static {v4, v0, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lf/h/c/v;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/autosdk/bussiness/track/event/value/home/MapTrackWidgetModel;

    invoke-direct {v0}, Lcom/autosdk/bussiness/track/event/value/home/MapTrackWidgetModel;-><init>()V

    const-string v1, "map_widget_route_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "map_widget_reach_module"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/track/event/value/home/MapTrackWidgetModel;->setButton(I)V

    goto :goto_1

    :cond_0
    const-string v1, "map_widget_route_type_around_charge_station"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "map_widget_route_type_along_way_charge_station"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "map_widget_route_type_along_way_module"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/track/event/value/home/MapTrackWidgetModel;->setButton(I)V

    goto :goto_1

    :cond_2
    const-string v1, "map_widget_route_type_go_home"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, v3}, Lcom/autosdk/bussiness/track/event/value/home/MapTrackWidgetModel;->setButton(I)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0, v4}, Lcom/autosdk/bussiness/track/event/value/home/MapTrackWidgetModel;->setButton(I)V

    :cond_4
    :goto_1
    invoke-static {}, Lf/h/c/n0/f1;->n()Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    move-result-object p1

    instance-of p1, p1, Lcom/autosdk/drive/navi/view/fragment/NaviFragment;

    if-eqz p1, :cond_5

    invoke-virtual {v0, v4}, Lcom/autosdk/bussiness/track/event/value/home/MapTrackWidgetModel;->setStatus(I)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/navi/NaviController;->isCruising()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0, v3}, Lcom/autosdk/bussiness/track/event/value/home/MapTrackWidgetModel;->setStatus(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v2}, Lcom/autosdk/bussiness/track/event/value/home/MapTrackWidgetModel;->setStatus(I)V

    :goto_2
    invoke-static {}, Lcom/autosdk/bussiness/track/MapTrackUtil;->getInstance()Lcom/autosdk/bussiness/track/MapTrackUtil;

    move-result-object p1

    const-string v1, "base_widget"

    invoke-virtual {p1, v1, v0}, Lcom/autosdk/bussiness/track/MapTrackUtil;->sendBehaviorEvent(Ljava/lang/String;Ljava/lang/Object;)I

    :cond_7
    return-void
.end method

.method private static setCarScale()V
    .locals 3

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getLayerController()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/LayerController;->getMapLayer(I)Lcom/autosdk/bussiness/layer/MapLayer;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/byd/automap/activity/MainActivity$l;->a:[I

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/manager/SDKManager;->getLayerController()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/autosdk/bussiness/layer/LayerController;->getMapLayer(I)Lcom/autosdk/bussiness/layer/MapLayer;

    move-result-object v1

    invoke-static {v1, v0}, Lf/h/c/n0/l1;->c(Lcom/autosdk/bussiness/layer/MapLayer;Z)V

    :cond_1
    return-void
.end method

.method private setMainMapCarCenterPercent(FF)V
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/autosdk/bussiness/map/MapController;->setProjectionCenterPercent(IFF)V

    return-void
.end method

.method private setMapCenter()V
    .locals 9

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/location/LocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/autonavi/gbl/common/model/Coord3DDouble;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/autonavi/gbl/common/model/Coord3DDouble;-><init>(DDD)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v8}, Lcom/autosdk/bussiness/map/MapController;->setMapCenter(ILcom/autonavi/gbl/common/model/Coord3DDouble;)V

    :cond_0
    return-void
.end method

.method private setMapCenter(I)V
    .locals 4

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformUI()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isYW()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lf/h/f/b2/o/b;->a(I)[F

    move-result-object p1

    aget v0, p1, v1

    aget p1, p1, v2

    invoke-direct {p0, v0, p1}, Lcom/byd/automap/activity/MainActivity;->setMainMapCarCenterPercent(FF)V

    return-void

    :cond_0
    if-nez p1, :cond_3

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object p1

    sget-object v0, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->PORTRAIT_1_2:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    const/high16 v1, 0x3f000000    # 0.5f

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->j()Lcom/autosdk/common/utils/DPIUtil$ScreenStatusDetial;

    move-result-object p1

    sget-object v0, Lcom/autosdk/common/utils/DPIUtil$ScreenStatusDetial;->PORTRAIT_1_2_BOOTOM:Lcom/autosdk/common/utils/DPIUtil$ScreenStatusDetial;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    const v0, 0x3eeb851f    # 0.46f

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    const v0, 0x3f0a3d71    # 0.54f

    :goto_0
    invoke-virtual {p1, v2, v1, v0}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFF)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    invoke-virtual {p1, v2, v1, v1}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFF)V

    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v3, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-eq v0, v3, :cond_6

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v3, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->PORTRAIT_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-ne v0, v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v3, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_1_2:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-ne v0, v3, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/byd/automap/activity/MainActivity;->setMapCenter(IZ)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/byd/automap/activity/MainActivity;->setMapCenter(IZ)V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "MainActivity"

    const-string v1, "updateMapCenterPosition, else branch"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-direct {p0, p1, v2}, Lcom/byd/automap/activity/MainActivity;->setMapCenter(IZ)V

    :goto_3
    return-void
.end method

.method private setMapCenter(IZ)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(I)V

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f000000    # 0.5f

    const v1, 0x3f2147ae    # 0.63f

    invoke-virtual {p1, v0, p2, v1}, Lcom/autosdk/bussiness/map/MapController;->setMapProjectionCenter(IFF)V

    :goto_0
    return-void
.end method

.method private setMapMode()V
    .locals 4

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/manager/SDKManager;->getLayerController()Lcom/autosdk/bussiness/layer/LayerController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/layer/LayerController;->getMapLayer(I)Lcom/autosdk/bussiness/layer/MapLayer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    move-result v0

    const/high16 v2, 0x41400000    # 12.0f

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x418f3333    # 17.9f

    goto :goto_0

    :cond_1
    const/high16 v2, 0x41800000    # 16.0f

    goto :goto_0

    :cond_2
    const/high16 v2, 0x41700000    # 15.0f

    :goto_0
    new-instance v3, Lcom/autonavi/gbl/map/model/MapviewModeParam;

    invoke-direct {v3}, Lcom/autonavi/gbl/map/model/MapviewModeParam;-><init>()V

    iput-boolean v1, v3, Lcom/autonavi/gbl/map/model/MapviewModeParam;->bChangeCenter:Z

    iput v0, v3, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mode:I

    iput v2, v3, Lcom/autonavi/gbl/map/model/MapviewModeParam;->mapZoomLevel:F

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/autosdk/bussiness/map/MapController;->setMapMode(ILcom/autonavi/gbl/map/model/MapviewModeParam;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/common/utils/OperatorTool;->getMainCameraOption()Lcom/autonavi/gbl/map/CameraOption;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autonavi/gbl/map/CameraOption;->setMapCenterMode(I)Lcom/autonavi/gbl/map/CameraOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/CameraOption;->commit()I

    :cond_3
    return-void
.end method

.method private setMapViewLongPressTimeOut()V
    .locals 3

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/map/MapController;->getMapView(I)Lcom/autonavi/gbl/map/MapView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/autonavi/gbl/map/MapView;->getOperatorGesture()Lcom/autonavi/gbl/map/OperatorGesture;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/gbl/map/OperatorGesture;->setLongPressTimeOut(J)V

    :cond_0
    return-void
.end method

.method private setScreenOn(Z)V
    .locals 1

    const/16 v0, 0x80

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method private setShadeStateIfNeed(ZLandroid/widget/FrameLayout;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const-string v2, "emptyActivity"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    if-nez p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v3, v4

    const/4 p3, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, p3

    const-string p3, "MainActivity"

    const-string v0, "[setShadeState]open={?},layout.null={?},intent.null={?},fromEmptyJump={?}"

    invoke-static {p3, v0, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isRPlatform()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    invoke-static {}, Lcom/byd/automap/view/ShadeViewManage;->getInstance()Lcom/byd/automap/view/ShadeViewManage;

    move-result-object p1

    iget-object p2, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0, p2}, Lcom/byd/automap/view/ShadeViewManage;->initShade(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/byd/automap/view/ShadeViewManage;->getInstance()Lcom/byd/automap/view/ShadeViewManage;

    move-result-object p1

    iget-object p2, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/byd/automap/view/ShadeViewManage;->removeShadeView(Landroid/widget/FrameLayout;)V

    :goto_3
    return-void
.end method

.method private showAndHideWeatherIcon(Z)V
    .locals 0

    return-void
.end method

.method private showOrHiddenWidgetBg(ZZ)V
    .locals 1

    new-instance v0, Lf/k/c/a/j0;

    invoke-direct {v0, p0, p1, p2}, Lf/k/c/a/j0;-><init>(Lcom/byd/automap/activity/MainActivity;ZZ)V

    invoke-static {v0}, Lcom/autosdk/bussiness/common/task/TaskManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showTipPageView()V
    .locals 2

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mapTipPageView:Lf/k/c/w/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mapTipPageView:Lf/k/c/w/b;

    :cond_0
    new-instance v0, Lf/k/c/w/b;

    invoke-direct {v0, p0}, Lf/k/c/w/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mapTipPageView:Lf/k/c/w/b;

    new-instance v1, Lf/k/c/a/i0;

    invoke-direct {v1, p0}, Lf/k/c/a/i0;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lf/k/c/w/b;->j(Lf/k/c/w/b$c;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lf/h/c/y;->a()Lf/h/c/y;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/y;->c()V

    return-void
.end method

.method private startEmptyActiivty()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/byd/automap/activity/OffEmptyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startMainFragment()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "startMainFragment() "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lf/h/q/d;

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "module_service_basemap_kd"

    goto :goto_0

    :cond_0
    const-string v1, "module_service_basemap"

    :goto_0
    invoke-interface {v0, v1}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/h/q/i;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lf/h/q/i;->d(I)V

    return-void
.end method

.method private startMainFragmentByProject()V
    .locals 7

    const-string v0, "kd"

    invoke-static {p0, v0}, Lf/h/c/n0/f1;->H(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v2, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->businessName:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v0, v2, v1}, Lcom/autosdk/common/storage/MapSharePreference;->i(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mTimer:Ljava/util/Timer;

    :cond_2
    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/byd/automap/activity/MainActivity$t;

    invoke-direct {v2, p0}, Lcom/byd/automap/activity/MainActivity$t;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x9c4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->startMainFragment()V

    :goto_1
    return-void
.end method

.method private startNavigationByNotificationBar(Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "MainActivity"

    if-eqz p1, :cond_2

    const-string v2, "message_info"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "startNavigationByNotificationBar, getIntent().hasExtra:  START_MAIN_INTENT_KEY_MSG_INFO"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "message_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lf/h/q/d;

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "module_service_basemap_kd"

    goto :goto_0

    :cond_1
    const-string v2, "module_service_basemap"

    :goto_0
    invoke-interface {v1, v2}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/h/q/i;

    const/4 v2, 0x2

    invoke-interface {v1, v0, p1, v2}, Lf/h/q/i;->a(Ljava/lang/String;II)V

    return-void

    :cond_2
    :goto_1
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "startNavigationByNotificationBar intent is null or not has extra"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private startPatchService()V
    .locals 6

    sget-object v0, Lcom/byd/automap/utils/MapFuncConfigManagerTwo$ID;->HOTFIX_QUERY:Lcom/byd/automap/utils/MapFuncConfigManagerTwo$ID;

    iget-object v0, v0, Lcom/byd/automap/utils/MapFuncConfigManagerTwo$ID;->name:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v1}, Lf/h/c/k0/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v2, Lcom/byd/automap/utils/MapFuncConfigManagerTwo$ID;->HOTFIX_FORCE_UNINSTALL:Lcom/byd/automap/utils/MapFuncConfigManagerTwo$ID;

    iget-object v2, v2, Lcom/byd/automap/utils/MapFuncConfigManagerTwo$ID;->name:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lf/h/c/k0/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "MainActivity"

    const-string v5, "[startPatchService] enable query = {?}"

    invoke-static {v4, v5, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/byd/syncpatch/SyncPatchTool;->INSTANCE:Lcom/byd/syncpatch/SyncPatchTool;

    invoke-static {}, Lcom/byd/automap/application/AutoApplication;->getRealApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/byd/syncpatch/SyncPatchTool;->startSync(Landroid/content/Context;Ljava/lang/Boolean;)Z

    sget-object v1, Lf/k/c/a/a;->a:Lf/k/c/a/a;

    invoke-virtual {v0, v1}, Lcom/byd/syncpatch/SyncPatchTool;->setGetContext(Lcom/byd/syncpatch/SyncPatchTool$GetContext;)V

    :cond_0
    return-void
.end method

.method private stopTimer()V
    .locals 1

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private trackBaseStart()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    const-string v3, "trackBaseStart() "

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "start_from"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lf/h/c/v;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const-string v2, "voice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    :goto_0
    invoke-static {v0}, Lf/h/c/n0/s2;->b(I)V

    return-void
.end method

.method private unRegisterActivityTop()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->listenerMultiDisplay:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/byd/automap/activity/MainActivity;->listenerMultiDisplay:Ljava/lang/Object;

    check-cast v2, Landroid/app/IActivityListener$Stub;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterActivityListener(Landroid/app/IActivityListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->listenerMultiDisplay:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "MainActivity"

    const-string v3, "unregisterActivityTopListenerMultiDisplay error {?}"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v1

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->listenerMultiDisplay:Ljava/lang/Object;

    throw v1
.end method

.method private unRegisterCarPlayReceiver()V
    .locals 1

    invoke-static {}, Lf/h/c/w;->a()Lf/h/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/w;->d()V

    return-void
.end method

.method private unregisterAosParkingOutStatus()V
    .locals 2

    sget-object v0, Lcom/byd/automap/activity/MainActivity;->navStopForEHPListener:Lcom/autosdk/bussiness/navi/NavStopForEHPListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/navi/NaviController;->unregisterNavStopListener(Lcom/autosdk/bussiness/navi/NavStopForEHPListener;)V

    :cond_0
    invoke-static {}, Lf/k/o/c/b/d/d;->a()Lf/k/o/c/b/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/o/c/b/d/d;->e()V

    return-void
.end method


# virtual methods
.method public askIsOrNoOpenShowTip(Z)V
    .locals 2

    invoke-static {}, Lf/k/c/p/j;->f()Lf/k/c/p/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lf/k/c/p/j;->j(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public askIsOrNoOpenVoicePermission()V
    .locals 4

    invoke-static {p0}, Lf/k/c/x/p1;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lf/h/u/j/l/r0;->c()Lf/h/u/j/l/r0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/h/u/j/l/r0;->a(Z)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lf/k/c/a/i;

    invoke-direct {v0, p0}, Lf/k/c/a/i;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    invoke-static {p0, v0}, Lf/k/c/p/u;->b(Landroidx/fragment/app/FragmentActivity;Lf/k/c/p/p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MainActivity"

    invoke-static {v3, v1, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lf/k/c/a/a0;->a:Lf/k/c/a/a0;

    invoke-static {p0, v0}, Lf/k/c/p/u;->b(Landroidx/fragment/app/FragmentActivity;Lf/k/c/p/p;)V

    :goto_0
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isRPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MainActivity"

    const-string v4, "attachBaseContext densityDpi is: {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v0, v3}, Lcom/autosdk/common/utils/DPIUtil;->E(Landroid/content/Context;Landroid/content/res/Configuration;Z)Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/byd/automap/activity/MainActivity$o;

    const v2, 0x7f1302fc

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/byd/automap/activity/MainActivity$o;-><init>(Lcom/byd/automap/activity/MainActivity;Landroid/content/Context;ILandroid/content/res/Configuration;)V

    invoke-super {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    # attachBaseContext 阶段 Display ID 尚不可靠；通过当前宽度小于应用全屏宽度
    # 识别 ActivityView，并在首页视图创建前初始化 ScreenStatus。
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_attach_default

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-lez v2, :cond_attach_default

    if-ge v2, v3, :cond_attach_default

    invoke-static {p1, v0}, Lcom/autosdk/common/utils/DPIUtil;->G(Landroid/content/Context;Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "MainActivity"

    const-string v1, "virtual display dpi initialized before onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_attach_default
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public backgroundRender()V
    .locals 6

    const-string v0, "MainActivity"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "backgroundFps +++"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v1, v3}, Lcom/autosdk/bussiness/map/MapController;->setRenderFpsByMode(III)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v2

    invoke-virtual {v2, v3, v1, v3}, Lcom/autosdk/bussiness/map/MapController;->setRenderFpsByMode(III)V

    new-instance v2, Lcom/autonavi/gbl/map/model/MapParameter;

    invoke-direct {v2}, Lcom/autonavi/gbl/map/model/MapParameter;-><init>()V

    iput v1, v2, Lcom/autonavi/gbl/map/model/MapParameter;->value1:I

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v3, v5, v2}, Lcom/autosdk/bussiness/map/MapController;->setMapBusinessDataPara(IILcom/autonavi/gbl/map/model/MapParameter;)V

    const-string v2, "backgroundFps ---"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "backgroundFps exception"

    invoke-static {v0, v3, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public clearMapNonActivatedView()V
    .locals 1

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mapNonActivatedView:Lcom/byd/automap/view/MapNonActivatedView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byd/automap/view/MapNonActivatedView;->hideNonActivatedView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mapNonActivatedView:Lcom/byd/automap/view/MapNonActivatedView;

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public doWeatherShow(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->showAndHideWeatherIcon(Z)V

    return-void
.end method

.method public synthetic e()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->lambda$askIsOrNoOpenVoicePermission$23()V

    return-void
.end method

.method public synthetic f(Lcom/autonavi/view/custom/CustomOverspeedView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->lambda$handleOverSpeedView$21(Lcom/autonavi/view/custom/CustomOverspeedView;)V

    return-void
.end method

.method public foregroundRender()V
    .locals 6

    const-string v0, "MainActivity"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "foregroundFps +++"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v1, v1, v3}, Lcom/autosdk/bussiness/map/MapController;->setRenderFpsByMode(III)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1, v3}, Lcom/autosdk/bussiness/map/MapController;->setRenderFpsByMode(III)V

    new-instance v2, Lcom/autonavi/gbl/map/model/MapParameter;

    invoke-direct {v2}, Lcom/autonavi/gbl/map/model/MapParameter;-><init>()V

    const/4 v3, -0x1

    iput v3, v2, Lcom/autonavi/gbl/map/model/MapParameter;->value1:I

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/manager/SDKManager;->getMapController()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v3, v4, v5, v2}, Lcom/autosdk/bussiness/map/MapController;->setMapBusinessDataPara(IILcom/autonavi/gbl/map/model/MapParameter;)V

    const-string v2, "foregroundFps ---"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "foregroundFps exception"

    invoke-static {v0, v3, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic g(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/byd/automap/activity/MainActivity;->lambda$initRootViewChangeListener$4(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public getContainerId()I
    .locals 1

    const v0, 0x7f0a0077

    return v0
.end method

.method public getParentViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public synthetic h()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->lambda$initStatusBar$3()V

    return-void
.end method

.method public handleApn3ConnectStateChangedEvent(Lf/h/c/t;)V
    .locals 3
    .annotation runtime Lo/d/a/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "MainActivity"

    const-string v2, "handleApn3ConnectStateChangedEvent networkConnected:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lf/h/h/f0;

    invoke-direct {v0, p1}, Lf/h/h/f0;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/byd/automap/activity/MainActivity;->onEvent(Lf/h/h/f0;)V

    return-void
.end method

.method public hideTipPageView()V
    .locals 3

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/byd/automap/activity/MainActivity;->mapTipPageView:Lf/k/c/w/b;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mapTipPageView:Lf/k/c/w/b;

    :cond_0
    return-void
.end method

.method public synthetic i(Lcom/autonavi/gbl/user/msgpush/model/AimPoiInfo;Lf/h/q/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/byd/automap/activity/MainActivity;->lambda$onResume$6(Lcom/autonavi/gbl/user/msgpush/model/AimPoiInfo;Lf/h/q/d;)V

    return-void
.end method

.method public initFromBack()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    const-string v3, "initFromBack()"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->registerRequestStateReceiver()V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/common/settings/ProtocolUtils;->registerTtsReceiver()V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/byd/automap/activity/MainActivity;->taskToBackObserver:Lf/h/c/j0/e0;

    invoke-virtual {v1, v3}, Lcom/autosdk/common/settings/ProtocolUtils;->setTaskToBackObserver(Lf/h/c/j0/e0;)V

    new-instance v1, Lcom/autosdk/user/observed/TeamMessageObserver;

    invoke-direct {v1}, Lcom/autosdk/user/observed/TeamMessageObserver;-><init>()V

    iput-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mTeamMessageObserver:Lcom/autosdk/user/observed/TeamMessageObserver;

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/user/UserController;->getMsgPushModel()Lcom/autosdk/bussiness/user/model/MsgPushModel;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "addTeamMessageListener"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/user/UserController;->getMsgPushModel()Lcom/autosdk/bussiness/user/model/MsgPushModel;

    move-result-object v1

    iget-object v3, p0, Lcom/byd/automap/activity/MainActivity;->mTeamMessageObserver:Lcom/autosdk/user/observed/TeamMessageObserver;

    invoke-virtual {v1, v3}, Lcom/autosdk/bussiness/user/model/MsgPushModel;->addTeamMessageListener(Lcom/autosdk/bussiness/user/listener/TeamMessageListener;)V

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v1

    iget-object v3, p0, Lcom/byd/automap/activity/MainActivity;->mTeamMessageObserver:Lcom/autosdk/user/observed/TeamMessageObserver;

    invoke-virtual {v1, v3}, Lcom/autosdk/bussiness/user/UserController;->groupAddObserver(Lcom/autonavi/gbl/user/group/observer/IGroupServiceObserver;)V

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/user/UserController;->getMsgPushModel()Lcom/autosdk/bussiness/user/model/MsgPushModel;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "addSend2carPushMsgListener"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/user/UserController;->getMsgPushModel()Lcom/autosdk/bussiness/user/model/MsgPushModel;

    move-result-object v1

    invoke-static {}, Lf/k/c/o/b;->g()Lf/k/c/o/b;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/autosdk/bussiness/user/model/MsgPushModel;->addSend2carPushMsgListener(Lcom/autosdk/bussiness/user/listener/AimPushMessageListener;)V

    :cond_1
    invoke-static {}, Lcom/autosdk/drive/navi/utils/UserTrackUtil;->getInstance()Lcom/autosdk/drive/navi/utils/UserTrackUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/drive/navi/utils/UserTrackUtil;->addUserTrackObserver()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/byd/automap/activity/MainActivity;->startNavigationByNotificationBar(Landroid/content/Intent;)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    iget-object v3, p0, Lcom/byd/automap/activity/MainActivity;->settingObserver:Lcom/autosdk/bussiness/settings/ISettingObserver;

    invoke-virtual {v1, v3}, Lf/h/c/j0/k0;->addObserver(Lcom/autosdk/bussiness/settings/ISettingObserver;)V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "initFromBack() addObserver"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isStartUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isStartUp:Z

    return v0
.end method

.method public synthetic j(Lf/h/q/d;Lcom/autonavi/gbl/user/msgpush/model/AimRoutePushInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/byd/automap/activity/MainActivity;->lambda$onResume$7(Lf/h/q/d;Lcom/autonavi/gbl/user/msgpush/model/AimRoutePushInfo;)V

    return-void
.end method

.method public synthetic k(Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->lambda$onResume$8(Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;)V

    return-void
.end method

.method public synthetic l()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->lambda$onResume$9()V

    return-void
.end method

.method public loadPermission()Z
    .locals 2

    invoke-static {}, Lf/k/c/p/r;->e()Lf/k/c/p/r;

    move-result-object v0

    sget-object v1, Lf/k/c/p/r;->b:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lf/k/c/p/r;->i(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lf/k/c/p/r;->e()Lf/k/c/p/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/k/c/p/r;->o(Landroid/app/Activity;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic m()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->lambda$permissionsResultSuccess$1()V

    return-void
.end method

.method public moveTask()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "moveTask() "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public multimediaPrivacy()V
    .locals 1

    invoke-static {}, Lf/k/c/x/m1;->a()Lf/k/c/x/m1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/k/c/x/m1;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->lambda$protocolCallProcess$11()V

    return-void
.end method

.method public synthetic o()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->lambda$protocolCallProcess$12()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    const-string v3, "onActivityResult() "

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x1f41

    if-ne p1, v1, :cond_0

    invoke-static {}, Lf/k/c/p/r;->e()Lf/k/c/p/r;

    move-result-object v1

    sget v3, Lf/k/c/p/r;->c:I

    invoke-virtual {v1, p0, v3}, Lf/k/c/p/r;->a(Landroid/app/Activity;I)V

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    const/16 p2, 0x66

    if-ne p1, p2, :cond_3

    if-eqz p3, :cond_2

    const-string p2, "privacy_state"

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "privacyState="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "onActivityResult: privacyState is {?}"

    invoke-static {v2, p2, p3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lf/h/u/j/l/r0;->c()Lf/h/u/j/l/r0;

    move-result-object p2

    invoke-virtual {p2}, Lf/h/u/j/l/r0;->b()Z

    goto :goto_0

    :cond_2
    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "onActivityResult: data is null..."

    invoke-static {v2, p3, p2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const/16 p2, 0x203

    if-ne p1, p2, :cond_7

    invoke-static {}, Lf/k/c/p/i;->c()Lf/k/c/p/i;

    move-result-object p1

    invoke-virtual {p1}, Lf/k/c/p/i;->d()I

    move-result p1

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_6

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "onActivityResult LocationEnabledType Open AccessLocationEvent"

    invoke-static {v2, p2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/q/o;->c()Lf/h/q/o;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/q/o;->h()V

    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mSendToCarObject:Ljava/lang/Object;

    if-eqz p1, :cond_4

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object p1

    iget-object p2, p0, Lcom/byd/automap/activity/MainActivity;->mSendToCarObject:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p1, p2}, Lo/d/a/c;->l(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mVoiceToNaviPoi:Lcom/autosdk/bussiness/common/POI;

    if-eqz p1, :cond_5

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object p1

    new-instance p2, Lf/h/h/v0;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mVoiceToNaviPoi:Lcom/autosdk/bussiness/common/POI;

    invoke-direct {p2, p3, v0}, Lf/h/h/v0;-><init>(Ljava/util/ArrayList;Lcom/autosdk/bussiness/common/POI;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object p1

    new-instance p2, Lf/h/h/a;

    invoke-direct {p2}, Lf/h/h/a;-><init>()V

    goto :goto_1

    :cond_6
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "onActivityResult LocationEnabledType close"

    invoke-static {v2, p2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lf/k/c/x/h1;->J()Lf/k/c/x/h1;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/c/x/h1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lf/h/c/n0/f1;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lf/k/c/x/h1;->J()Lf/k/c/x/h1;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/c/x/h1;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "onBackPressed ignore"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-super {p0}, Lcom/autosdk/framework/activity/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/z;->c()Lcom/autonavi/skin/view/SkinImageView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    const v1, 0x7f0a105c

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {v0, v1}, Lf/h/c/z;->r(Lcom/autonavi/skin/view/SkinImageView;)V

    :cond_0
    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lf/h/c/z;->n(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getFragmentStack()Lf/h/i/b/h;

    move-result-object v0

    const-string v1, "MainActivity"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getFragmentStack()Lf/h/i/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/i/b/h;->h()Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v0, "onConfigurationChanged get last fragment: {?}"

    invoke-static {v1, v0, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, "isInMultiWindowMode:{?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v4, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isFullScreen:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/autosdk/common/storage/MapSharePreference;->j(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1, v3}, Lcom/autosdk/common/utils/DPIUtil;->E(Landroid/content/Context;Landroid/content/res/Configuration;Z)Landroid/content/Context;

    # Activity 首次创建在虚拟屏时，BaseActivity.onCreate 可能未添加透明状态栏 flag。
    # 迁回主屏后 Activity 不会重建，仅在主屏全屏状态补回与冷启动一致的窗口属性。
    invoke-static {p0}, Lf/h/c/n0/x1;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_translucent_status_done

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v4, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-eq v0, v4, :cond_restore_translucent_status

    sget-object v4, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->PORTRAIT_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-ne v0, v4, :cond_translucent_status_done

    :cond_restore_translucent_status
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_translucent_status_done
    # DPI 状态更新后再判断，确保全屏进入 1/3 或 2/3 时读取到新尺寸。
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->handleMapHomeEnterPip()V

    invoke-static {p0}, Lf/h/c/n0/o2;->g(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/autosdk/common/utils/DPIUtil;->I(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/byd/automap/activity/MainActivity;->createNewConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lf/k/c/x/h1;->J()Lf/k/c/x/h1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/k/c/x/h1;->f0(Landroid/content/Context;)V

    invoke-static {}, Lf/k/c/p/j;->f()Lf/k/c/p/j;

    move-result-object v0

    invoke-virtual {v0}, Lf/k/c/p/j;->g()V

    invoke-static {}, Lf/k/c/p/r;->e()Lf/k/c/p/r;

    move-result-object v0

    iget-object v0, v0, Lf/k/c/p/r;->f:Lf/k/c/p/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mapNonActivatedView:Lcom/byd/automap/view/MapNonActivatedView;

    if-nez v0, :cond_3

    invoke-static {}, Lf/k/c/p/r;->e()Lf/k/c/p/r;

    move-result-object v0

    iget-object v0, v0, Lf/k/c/p/r;->f:Lf/k/c/p/n;

    invoke-virtual {v0, p0}, Lf/k/c/p/n;->g(Landroid/app/Activity;)V

    :cond_3
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->isNeedShowTipsView()Z

    move-result v0

    iget-object v4, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    if-eqz v4, :cond_4

    sget-object v5, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isShowTipsFlag:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v4, v5, v2}, Lcom/autosdk/common/storage/MapSharePreference;->d(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/byd/automap/activity/MainActivity;->isShowTipsFlag:Z

    iget-object v4, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v5, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isTipsViewShowing:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v4, v5, v2}, Lcom/autosdk/common/storage/MapSharePreference;->d(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/byd/automap/activity/MainActivity;->isTipsViewShowing:Z

    :cond_4
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    iget-boolean v5, p0, Lcom/byd/automap/activity/MainActivity;->isShowTipsFlag:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    iget-boolean v5, p0, Lcom/byd/automap/activity/MainActivity;->isTipsViewShowing:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "[onConfigurationChanged] use tips isShow: {?}, isShowTipsFlag:{?}, isTipsViewShowing: {?} "

    invoke-static {v1, v2, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isShowTipsFlag:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isTipsViewShowing:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lf/h/c/n0/f1;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lf/k/c/x/h1;->J()Lf/k/c/x/h1;

    move-result-object v0

    new-instance v2, Lcom/byd/automap/activity/MainActivity$c;

    invoke-direct {v2, p0}, Lcom/byd/automap/activity/MainActivity$c;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    invoke-virtual {v0, v2}, Lf/k/c/x/h1;->q0(Lf/k/c/x/s1;)V

    :cond_5
    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mapTipPageView:Lf/k/c/w/b;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->showTipPageView()V

    :cond_6
    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mapNonActivatedView:Lcom/byd/automap/view/MapNonActivatedView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/byd/automap/view/MapNonActivatedView;->onConfigurationChanged(Landroid/content/Context;)V

    :cond_7
    invoke-static {}, Lf/k/x/b;->b()Lf/k/x/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lf/k/x/b;->a(Landroid/content/Context;Landroid/content/res/Configuration;)V

    invoke-static {}, Lf/h/u/c/b;->n()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->onConfigurationChangeScreen()V

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "onConfigurationChanged() end "

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/autosdk/framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/byd/weather/DynamicWeather;->start()V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mInitLaneService:Lf/k/c/l/c;

    invoke-virtual {v0}, Lf/k/c/l/c;->d()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initFaShaoUiStyle()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->getProductActivateInstruct()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mProductActivateInstruct:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "MainActivity"

    const-string v4, "[MainActivity]onCreate,ActivateInstruct: {?}"

    invoke-static {v0, v4, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initPowerLevel()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->judgeNeedRestart(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->judgeStarted()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-array p1, v3, [Ljava/lang/Object;

    const-string v2, "onCreate"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "map_widget_route_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "map_widget_route_type_around_charge_station"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "is_start_by_widget_search"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->startPatchService()V

    invoke-static {}, Lf/k/c/x/h1;->J()Lf/k/c/x/h1;

    move-result-object p1

    invoke-virtual {p1, p0}, Lf/k/c/x/h1;->t(Landroid/app/Activity;)V

    new-array p1, v1, [Ljava/lang/Object;

    sget-boolean v2, Lcom/autosdk/bussiness/settings/SettingConstant;->is3DMap:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, p1, v3

    const-string v2, "onCreate: SettingConstant.is3DMap == {?}"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/k0;->getBydConfigKeyDayNightMode()I

    move-result p1

    invoke-static {p1}, Lf/h/c/j0/h0;->a(I)V

    invoke-static {}, Lcom/autonavi/skin/ColorModeGlobal;->getInstance()Lcom/autonavi/skin/ColorModeGlobal;

    move-result-object v2

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v4

    invoke-virtual {v4}, Lf/h/c/j0/k0;->getBydConfigKeyColorOffOn()I

    move-result v4

    if-ne v4, v1, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/autonavi/skin/ColorModeGlobal;->setColorOn(Z)V

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "day night mode is = {?}"

    invoke-static {v0, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/byd/automap/activity/MainActivity;->setScreenOn(Z)V

    invoke-static {p0, v1}, Lcom/byd/automap/service/DashBroadService;->startService(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initData()V

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/autosdk/common/utils/DPIUtil;->E(Landroid/content/Context;Landroid/content/res/Configuration;Z)Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/autosdk/common/utils/DPIUtil;->I(Landroid/view/View;)V

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/autosdk/common/utils/DPIUtil;->k(Landroid/content/Context;Z)Lcom/autosdk/common/utils/DPIUtil$ScreenType;

    move-result-object v2

    aput-object v2, p1, v3

    const-string v2, "[onCreate] screen type = {?}"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, 0x7f0d0028

    invoke-virtual {p0, p1}, Lcom/autosdk/framework/activity/BaseActivity;->setContentView(I)V

    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/byd/automap/activity/MainActivity;->isContainsHomeCategory(Landroid/content/Intent;)Z

    move-result v2

    invoke-virtual {p1, v2}, Lf/h/c/z;->x(Z)V

    invoke-static {}, Lf/k/c/x/n1;->c()Lf/k/c/x/n1;

    move-result-object p1

    invoke-virtual {p1}, Lf/k/c/x/n1;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    new-array p1, v3, [Ljava/lang/Object;

    const-string v1, "show oneshoot, change window BackgroundDrawable"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "#080C0F"

    goto :goto_1

    :cond_5
    const-string v2, "#F1F3F4"

    :goto_1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "is_start_from_one_shoot"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move v1, v3

    :cond_6
    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/d/a/c;->q(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initView()V

    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mProductActivateInstruct:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->permissionCheck(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initLauncherTransit()V

    new-array p1, v3, [Ljava/lang/Object;

    const-string v2, "initView"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v3, [Ljava/lang/Object;

    const-string v2, "add shade view !"

    invoke-static {v0, v2, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v1, p1, v0}, Lcom/byd/automap/activity/MainActivity;->setShadeStateIfNeed(ZLandroid/widget/FrameLayout;Landroid/content/Intent;)V

    invoke-static {}, Lf/k/c/p/i;->c()Lf/k/c/p/i;

    move-result-object p1

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mLocationEnableListener:Landroid/location/LocationEnabledListener;

    invoke-virtual {p1, v0}, Lf/k/c/p/i;->a(Landroid/location/LocationEnabledListener;)V

    invoke-static {p0}, Lf/h/c/n0/o2;->g(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->addSensorListener()V

    invoke-static {}, Lf/h/f/d2/a/h;->p()Lf/h/f/d2/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/f/d2/a/h;->w()V

    invoke-static {}, Lcom/autosdk/bussiness/navi/route/RouteRequestController;->getInstance()Lcom/autosdk/bussiness/navi/route/RouteRequestController;

    move-result-object p1

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->sort:Lcom/autosdk/bussiness/pilot/IRouteResultForPilotSort;

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/navi/route/RouteRequestController;->registerRouteForMoment(Lcom/autosdk/bussiness/pilot/IRouteResultForPilotSort;)V

    new-instance p1, Lcom/byd/automap/activity/AppDispatchReceiver;

    invoke-direct {p1, p0}, Lcom/byd/automap/activity/AppDispatchReceiver;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    iput-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mAppDispatchReceiver:Lcom/byd/automap/activity/AppDispatchReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.byd.map.action.APP_DISPATCH"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lc/q/a/a;->b(Landroid/content/Context;)Lc/q/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mAppDispatchReceiver:Lcom/byd/automap/activity/AppDispatchReceiver;

    invoke-virtual {v0, v1, p1}, Lc/q/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->registerFloatWindowReceiver()V

    invoke-static {}, Lcom/autosdk/bussiness/phoneConnect/PhoneConnectManager;->getInstance()Lcom/autosdk/bussiness/phoneConnect/PhoneConnectManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/phoneConnect/PhoneConnectManager;->init(Landroid/app/Application;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->registerActivityTop()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->registerAosParkingOutStatus()V

    invoke-static {}, Lcom/autosdk/sr/SDSRUtils;->getInstance()Lcom/autosdk/sr/SDSRUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/sr/SDSRUtils;->init()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->registerCarPlayReceiver()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initSrSwitch()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/autosdk/framework/activity/BaseActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->destroy()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "onDetachedFromWindow()"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lf/h/h/f0;)V
    .locals 2
    .annotation runtime Lo/d/a/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    iget-boolean p1, p1, Lf/h/h/f0;->a:Z

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/byd/automap/utils/MapFuncConfigManagerTwo;->h()Lcom/byd/automap/utils/MapFuncConfigManagerTwo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byd/automap/utils/MapFuncConfigManagerTwo;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error happened in server func retrieving process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    invoke-static {v1, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lf/h/c/j0/p0/c/c;->c()Lf/h/c/j0/p0/c/c;

    move-result-object p1

    new-instance v0, Lcom/byd/automap/activity/MainActivity$g;

    invoke-direct {v0, p0}, Lcom/byd/automap/activity/MainActivity$g;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    invoke-virtual {p1, v0}, Lf/h/c/j0/p0/c/c;->e(Lf/h/c/j0/p0/c/c$e;)V

    :cond_0
    return-void
.end method

.method public isInMultiWindowMode()Z
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_multi_window

    # ActivityView 运行在独立 Display，但只有已经识别为分屏比例时才补充
    # 多窗口语义，避免把全尺寸副屏误判为分屏。
    invoke-static {p0}, Lf/h/c/n0/x1;->e(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_full_screen

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-eq v0, v1, :cond_full_screen

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->PORTRAIT_FULL:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-eq v0, v1, :cond_full_screen

    :cond_multi_window
    const/4 v0, 0x1

    return v0

    :cond_full_screen
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    invoke-static {v1, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MainActivity"

    const-string v3, "onMultiWindowModeChanged:{?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    const p2, 0x7f0a0d7e

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move v3, p1

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v3, :cond_multi_window_scale_done

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->reAdjustMapScale()V

    :cond_multi_window_scale_done
    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_1
    # 外部桌面重新打开紧凑窗口时，可能只回调多窗口状态而不重新创建 Activity。
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->handleMapHomeEnterPip()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navigation_icon_map_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "---onNewIntent, intent ROUTE_TYPE: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "map_widget_route_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " getIntent(): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "MainActivity"

    invoke-static {v5, v0, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->isContainsHomeCategory(Landroid/content/Intent;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lf/h/c/z;->x(Z)V

    iget-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isMapOnStop:Z

    const/4 v4, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Lf/h/c/n0/f1;->F(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lf/h/q/d;

    invoke-interface {v0}, Lf/h/q/d;->isForeground()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "isRoleApp:{?}, isAppForground:{?}"

    invoke-static {v5, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Lf/h/c/n0/f1;->F(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lf/h/q/d;

    invoke-interface {p1}, Lf/h/q/d;->isForeground()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lf/h/q/d;

    invoke-interface {p1}, Lf/h/q/d;->isForeground()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {p0}, Lf/h/c/n0/f1;->O(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byd/automap/activity/MainActivity;->startNavigationByNotificationBar(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isMapOnStop:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->isHasTask()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->isContainsHomeCategory(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "map_widget_type_module"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->fragDealsHomeBtnWhetherMainOrSub()Z

    move-result p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "onNew Intent isMainFragmentDealsHomeButton {?}"

    invoke-static {v5, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/byd/automap/activity/MainActivity;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1}, Lf/h/v/v;->d(Landroid/view/View;)Z

    move-result p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "onNew Intent isHideKeyBoard {?}"

    invoke-static {v5, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lcom/byd/automap/activity/MainActivity;->isMapOnStop:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->isTopMainFragment()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object p1

    new-instance v0, Lf/h/h/d0;

    const/16 v1, 0x3f6

    invoke-direct {v0, v1, v4}, Lf/h/h/d0;-><init>(IZ)V

    invoke-virtual {p1, v0}, Lo/d/a/c;->l(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    # 外部桌面可能通过 singleTask 的 onNewIntent 复用当前地图 Activity。
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->handleMapHomeEnterPip()V

    return-void
.end method

.method public onParkingOutStatusModeChange(I)V
    .locals 1

    invoke-static {}, Lcom/autosdk/drive/TtsController;->l()Lcom/autosdk/drive/TtsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/drive/TtsController;->w(I)V

    return-void
.end method

.method public onPause()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    sget v2, Lcom/autosdk/common/settings/ProtocolUtils;->mDialogShowedCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MainActivity"

    const-string v4, "onPause sDialogShowedCount: {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lf/h/u/c/b;->g()V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "onPause isFinishing: {?}"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->destroy()V

    :cond_1
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {}, Lf/k/c/p/r;->e()Lf/k/c/p/r;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p0}, Lf/k/c/p/r;->m(I[ILandroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 11

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    # 外部桌面可绕过地图按钮直接重新授予 HOME 角色；恢复前台时补做一次紧凑窗口校验。
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->handleMapHomeEnterPip()V

    iget-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isMapHomePipRestartPending:Z

    if-eqz v0, :cond_home_pip_check_done

    return-void

    :cond_home_pip_check_done

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isMapOnStop:Z

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    const-string v3, "onResume()===start:"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lf/h/c/z;->n(Z)V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lf/h/q/d;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lf/k/c/x/k1;->i()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lf/k/c/x/k1;->i()Landroid/content/Intent;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Lf/k/c/x/k1;->s(Landroid/content/Intent;)V

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "[onResume] use main cache intent."

    invoke-static {v2, v6, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/byd/automap/activity/MainActivity;->sendWidgetTrack(Landroid/content/Intent;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Lf/h/c/v;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v5, Lf/h/c/v;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v5, Lf/h/c/v;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_1
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    aput-object v7, v6, v0

    aput-object v3, v6, v4

    const-string v7, "[onResume] extra: {?}, getIntent(): {?}"

    invoke-static {v2, v7, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/c/j/i;->c()Lf/k/c/j/i;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, p0, v7}, Lf/k/c/j/i;->a(Lcom/byd/automap/activity/MainActivity;Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->protocolCallProcess()V

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "protocolCallProcess() "

    invoke-static {v2, v7, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "start_page_boot_completed_msg_key"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "start_page_boot_completed_msg_poi"

    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v8, 0x7d0

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v10, "msg_poi_content_key"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v10, Lcom/autonavi/gbl/user/msgpush/model/AimPoiInfo;

    invoke-static {v6, v10}, Lf/h/c/n0/z1;->h(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/gbl/user/msgpush/model/AimPoiInfo;

    new-instance v10, Lf/k/c/a/t;

    invoke-direct {v10, p0, v6, v1}, Lf/k/c/a/t;-><init>(Lcom/byd/automap/activity/MainActivity;Lcom/autonavi/gbl/user/msgpush/model/AimPoiInfo;Lf/h/q/d;)V

    :goto_0
    invoke-static {v10, v8, v9}, Lcom/autosdk/bussiness/common/task/TaskManager;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "start_page_boot_completed_msg_route"

    invoke-static {v6, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v10, "msg_route_content_key"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v10, Lcom/autonavi/gbl/user/msgpush/model/AimRoutePushInfo;

    invoke-static {v6, v10}, Lf/h/c/n0/z1;->h(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/gbl/user/msgpush/model/AimRoutePushInfo;

    new-instance v10, Lf/k/c/a/h0;

    invoke-direct {v10, p0, v1, v6}, Lf/k/c/a/h0;-><init>(Lcom/byd/automap/activity/MainActivity;Lf/h/q/d;Lcom/autonavi/gbl/user/msgpush/model/AimRoutePushInfo;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "start_page_boot_completed_msg_destination"

    invoke-static {v1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "msg_destination_content_key"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v6, Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;

    invoke-static {v1, v6}, Lf/h/c/n0/z1;->h(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;

    new-instance v6, Lf/k/c/a/d0;

    invoke-direct {v6, p0, v1}, Lf/k/c/a/d0;-><init>(Lcom/byd/automap/activity/MainActivity;Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;)V

    invoke-static {v6, v8, v9}, Lcom/autosdk/bussiness/common/task/TaskManager;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_1
    invoke-virtual {v3, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "setIntent "

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->isNeedShowTipsView()Z

    move-result v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v1, "onResume() FloatWidget  isShow {?}  "

    invoke-static {v2, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lf/k/c/x/h1;->J()Lf/k/c/x/h1;

    move-result-object v1

    invoke-virtual {v1}, Lf/k/c/x/h1;->P()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lf/h/c/y;->a()Lf/h/c/y;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/y;->c()V

    :cond_6
    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getFragmentStack()Lf/h/i/b/h;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getFragmentStack()Lf/h/i/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/i/b/h;->h()Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const-string v6, "onResume() get last fragment: {?}"

    invoke-static {v2, v6, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/byd/automap/activity/MainActivity;->checkDpiChangedBackground(Landroid/content/res/Configuration;)Z

    move-result v3

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->s()Z

    move-result v6

    instance-of v7, v1, Lcom/autosdk/drive/navi/view/fragment/NaviFragment;

    if-nez v7, :cond_8

    instance-of v7, v1, Lcom/autosdk/drive/navi/view/fragment/NaviSimFragment;

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    move v7, v0

    goto :goto_3

    :cond_8
    :goto_2
    move v7, v4

    :goto_3
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v5

    const-string v4, "onResume: dpiChangedBackground={?},inMultiWindowMode={?},isNaviTop={?}"

    invoke-static {v2, v4, v8}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformUI()Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz v7, :cond_a

    if-nez v3, :cond_9

    if-eqz v6, :cond_a

    :cond_9
    check-cast v1, Lf/h/i/c/m;

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lf/h/i/c/m;->G(Landroid/content/res/Configuration;)V

    :cond_a
    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "onResume() end "

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    if-eqz v1, :cond_b

    sget-object v2, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isAllPermissionSuccess:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v1, v2, v0}, Lcom/autosdk/common/storage/MapSharePreference;->d(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lf/k/c/a/v;

    invoke-direct {v0, p0}, Lf/k/c/a/v;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/autosdk/bussiness/common/task/TaskManager;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_b
    invoke-static {}, Lf/h/u/j/l/r0;->c()Lf/h/u/j/l/r0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/h/u/j/l/r0;->g(Lf/h/u/j/d;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->checkGroupState()V

    return-void
.end method

.method public onRouteReceiverEvent(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lo/d/a/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    instance-of v0, p1, Lcom/autonavi/gbl/user/msgpush/model/AimRoutePushMsg;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/autosdk/bussiness/common/POI;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mSendToCarObject:Ljava/lang/Object;

    invoke-static {}, Lf/k/c/x/g1;->a()Lf/k/c/x/g1;

    move-result-object v0

    new-instance v1, Lcom/byd/automap/activity/MainActivity$q;

    invoke-direct {v1, p0, p1}, Lcom/byd/automap/activity/MainActivity$q;-><init>(Lcom/byd/automap/activity/MainActivity;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lf/k/c/x/g1;->c(Landroidx/fragment/app/FragmentActivity;Lf/k/c/p/h;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "onSaveInstanceState()"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "processId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/autosdk/framework/activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->isStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainActivity"

    invoke-static {v3, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isStart:Z

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iput-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->isDestroyed:Z

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isAllPermissionSuccess:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v0, v2, v1}, Lcom/autosdk/common/storage/MapSharePreference;->d(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/byd/automap/activity/MainActivity;->foregroundRender()V

    :cond_0
    new-instance v0, Lf/h/h/j;

    invoke-direct {v0}, Lf/h/h/j;-><init>()V

    invoke-virtual {p0, v0}, Lcom/byd/automap/activity/MainActivity;->updateDrView(Lf/h/h/j;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/autosdk/common/utils/DPIUtil;->E(Landroid/content/Context;Landroid/content/res/Configuration;Z)Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/autosdk/common/utils/DPIUtil;->I(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    invoke-static {}, Lf/h/c/n0/f1;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lf/h/u/c/b;->g()V

    :cond_0
    invoke-virtual {p0}, Lcom/byd/automap/activity/MainActivity;->backgroundRender()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isSplit:Z

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isStart:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/byd/automap/activity/MainActivity;->isMapOnStop:Z

    iget-object v2, p0, Lcom/byd/automap/activity/MainActivity;->mMapSharePreference:Lcom/autosdk/common/storage/MapSharePreference;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->isStop:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v2, v3, v1}, Lcom/autosdk/common/storage/MapSharePreference;->j(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)V

    :cond_1
    invoke-static {}, Lcom/automap/carlife/CarLifeDataHelper;->B()Lcom/automap/carlife/CarLifeDataHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/automap/carlife/CarLifeDataHelper;->E()V

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "onStop"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onVoiceGoHomeReceiverEvent(Lf/h/h/v0;)V
    .locals 2
    .annotation runtime Lo/d/a/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lf/h/h/v0;->a()Lcom/autosdk/bussiness/common/POI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lf/h/h/v0;->a()Lcom/autosdk/bussiness/common/POI;

    move-result-object v0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mVoiceToNaviPoi:Lcom/autosdk/bussiness/common/POI;

    invoke-static {}, Lf/k/c/x/g1;->a()Lf/k/c/x/g1;

    move-result-object v0

    new-instance v1, Lcom/byd/automap/activity/MainActivity$r;

    invoke-direct {v1, p0, p1}, Lcom/byd/automap/activity/MainActivity$r;-><init>(Lcom/byd/automap/activity/MainActivity;Lf/h/h/v0;)V

    invoke-virtual {v0, p0, v1}, Lf/k/c/x/g1;->c(Landroidx/fragment/app/FragmentActivity;Lf/k/c/p/h;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MainActivity"

    const-string v1, "onVoiceGoHomeReceiverEvent: end poi is null..."

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public synthetic p(Lf/h/q/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->lambda$protocolCallProcess$13(Lf/h/q/d;)V

    return-void
.end method

.method public permissionsResultSuccess()V
    .locals 6

    invoke-static {}, Lcom/byd/automap/activity/MainActivity;->initCloudSwitch()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initMap()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->doStartUp()V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/byd/automap/activity/MainActivity;->setShadeStateIfNeed(ZLandroid/widget/FrameLayout;Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->savePermissionStatus()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/byd/automap/activity/MainActivity;->isStartUp:Z

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const-string v3, "MainActivity"

    const-string v4, "permissionsResultSuccess: {?}"

    invoke-static {v3, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->productionLineActivation()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->sendTrackUseDuration()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->trackBaseStart()V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initRootViewChangeListener()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/autosdk/common/utils/DPIUtil;->I(Landroid/view/View;)V

    invoke-static {}, Lcom/byd/automap/presenter/InitPresenter;->getInstance()Lcom/byd/automap/presenter/InitPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byd/automap/presenter/InitPresenter;->isInitOk()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/byd/automap/activity/MainActivity;->initFromBack()V

    invoke-virtual {p0}, Lcom/autosdk/framework/activity/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lcom/autosdk/common/utils/DPIUtil;->E(Landroid/content/Context;Landroid/content/res/Configuration;Z)Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->registerRequestStateReceiver()V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/common/settings/ProtocolUtils;->registerTtsReceiver()V

    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v1

    iget-object v4, p0, Lcom/byd/automap/activity/MainActivity;->taskToBackObserver:Lf/h/c/j0/e0;

    invoke-virtual {v1, v4}, Lcom/autosdk/common/settings/ProtocolUtils;->setTaskToBackObserver(Lf/h/c/j0/e0;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initTeamMessageObserver()V

    invoke-static {}, Lcom/autosdk/drive/navi/utils/UserTrackUtil;->getInstance()Lcom/autosdk/drive/navi/utils/UserTrackUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/drive/navi/utils/UserTrackUtil;->addUserTrackObserver()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/byd/automap/activity/MainActivity;->startNavigationByNotificationBar(Landroid/content/Intent;)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    iget-object v4, p0, Lcom/byd/automap/activity/MainActivity;->settingObserver:Lcom/autosdk/bussiness/settings/ISettingObserver;

    invoke-virtual {v1, v4}, Lf/h/c/j0/k0;->addObserver(Lcom/autosdk/bussiness/settings/ISettingObserver;)V

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "addObserver "

    invoke-static {v3, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lf/k/c/k/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "test"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "\u6d4b\u8bd5\u670d\u52a1\u5668"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, -0x10000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/byd/automap/activity/MainActivity;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v5, -0x2

    invoke-virtual {v4, v1, v5, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_1
    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->isNeedShowTipsView()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {}, Lf/h/c/n0/x1;->b()Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lf/h/c/n0/f1;->P()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "agree!!"

    invoke-static {v3, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->setMapSendingState(I)V

    :cond_2
    invoke-static {}, Lf/k/c/x/w0;->b()Lf/k/c/x/w0;

    move-result-object v1

    invoke-virtual {v1}, Lf/k/c/x/w0;->a()Lf/k/c/x/v0;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lf/k/c/x/w0;->b()Lf/k/c/x/w0;

    move-result-object v1

    invoke-virtual {v1}, Lf/k/c/x/w0;->a()Lf/k/c/x/v0;

    move-result-object v1

    invoke-interface {v1, v0}, Lf/k/c/x/v0;->a(Z)V

    :cond_3
    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v0

    new-instance v1, Lf/h/h/o;

    invoke-direct {v1}, Lf/h/h/o;-><init>()V

    invoke-virtual {v0, v1}, Lo/d/a/c;->l(Ljava/lang/Object;)V

    new-instance v0, Lf/k/c/a/u;

    invoke-direct {v0, p0}, Lf/k/c/a/u;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    invoke-static {v0}, Lcom/autosdk/bussiness/common/task/TaskManager;->post(Ljava/lang/Runnable;)V

    invoke-static {}, Lf/h/c/z;->b()Lf/h/c/z;

    move-result-object v0

    const v1, 0x7f0a05ba

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/view/custom/CustomOverspeedView;

    const v2, 0x7f0a105c

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/autonavi/skin/view/SkinImageView;

    const v3, 0x7f0a0d7f

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/autonavi/skin/view/SkinImageView;

    const v4, 0x7f0a0d7e

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lf/h/c/z;->d(Lcom/autonavi/view/custom/CustomOverspeedView;Lcom/autonavi/skin/view/SkinImageView;Lcom/autonavi/skin/view/SkinImageView;Lcom/autonavi/skin/view/SkinImageView;)V

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->initStatusBar()V

    return-void
.end method

.method public synthetic q(Lf/h/q/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->lambda$protocolCallProcess$14(Lf/h/q/d;)V

    return-void
.end method

.method public synthetic r()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->lambda$protocolCallProcess$15()V

    return-void
.end method

.method public synthetic s()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->lambda$protocolCallProcess$16()V

    return-void
.end method

.method public showVoiceFloat()V
    .locals 0

    invoke-static {p0}, Lf/h/u/c/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public startPlanRouteGoToDestination(Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;)V
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MainActivity"

    const-string v3, "startPlanRouteGoToDestination"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getInstance()Lcom/autosdk/bussiness/manager/SDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/manager/SDKManager;->getLocController()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/location/LocationController;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPlanRouteGoToDestination location:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/autosdk/bussiness/common/GeoPoint;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/autosdk/bussiness/common/GeoPoint;-><init>(DD)V

    const-string v1, "\u5f53\u524d\u4f4d\u7f6e"

    invoke-static {v1, v0}, Lcom/autosdk/bussiness/common/POIFactory;->createPOI(Ljava/lang/String;Lcom/autosdk/bussiness/common/GeoPoint;)Lcom/autosdk/bussiness/common/POI;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;->midPois:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;

    invoke-static {}, Lcom/autosdk/bussiness/common/POIFactory;->createPOI()Lcom/autosdk/bussiness/common/POI;

    move-result-object v4

    iget-object v5, v3, Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;->poiId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/autosdk/bussiness/common/POI;->setId(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/autosdk/bussiness/common/POI;->setAddr(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/autosdk/bussiness/common/POI;->setName(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/autosdk/bussiness/common/POI;->getPoint()Lcom/autosdk/bussiness/common/GeoPoint;

    move-result-object v5

    iget-object v3, v3, Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;->poiLoc:Lcom/autonavi/gbl/common/model/Coord2DDouble;

    iget-wide v6, v3, Lcom/autonavi/gbl/common/model/Coord2DDouble;->lon:D

    iget-wide v8, v3, Lcom/autonavi/gbl/common/model/Coord2DDouble;->lat:D

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/autosdk/bussiness/common/GeoPoint;->setLonLat(DD)Lcom/autosdk/bussiness/common/GeoPoint;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/common/POIFactory;->createPOI()Lcom/autosdk/bussiness/common/POI;

    move-result-object v2

    iget-object v3, p1, Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;->endPoi:Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;

    iget-object v3, v3, Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/autosdk/bussiness/common/POI;->setName(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;->endPoi:Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;

    iget-object v3, v3, Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;->poiId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/autosdk/bussiness/common/POI;->setId(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;->endPoi:Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;

    iget-object v3, v3, Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;->poiLoc:Lcom/autonavi/gbl/common/model/Coord2DDouble;

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/common/POI;->getPoint()Lcom/autosdk/bussiness/common/GeoPoint;

    move-result-object v3

    iget-object p1, p1, Lcom/autonavi/gbl/user/msgpush/model/DestinationInfo;->endPoi:Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/user/msgpush/model/MsgPoiInfo;->poiLoc:Lcom/autonavi/gbl/common/model/Coord2DDouble;

    iget-wide v4, p1, Lcom/autonavi/gbl/common/model/Coord2DDouble;->lon:D

    iget-wide v6, p1, Lcom/autonavi/gbl/common/model/Coord2DDouble;->lat:D

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/autosdk/bussiness/common/GeoPoint;->setLonLat(DD)Lcom/autosdk/bussiness/common/GeoPoint;

    :cond_2
    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lf/h/q/d;

    const-string v3, "module_service_drive"

    invoke-interface {p1, v3}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/h/q/g;

    invoke-interface {p1}, Lf/h/q/d;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v3, p1, v0, v2, v1}, Lf/h/q/g;->s(Landroid/content/Context;Lcom/autosdk/bussiness/common/POI;Lcom/autosdk/bussiness/common/POI;Ljava/util/ArrayList;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {p2}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->getGLSurfaceAttribute()Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;

    move-result-object p2

    iget p2, p2, Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;->initColor:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-object p2, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    invoke-virtual {p2}, Lcom/autonavi/gbl/map/adapter/MapSurfaceView;->getGLSurfaceAttribute()Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;

    move-result-object p2

    iget-boolean p2, p2, Lcom/autonavi/gbl/map/model/EGLSurfaceAttr;->isNeedInitDraw:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "MainActivity"

    const-string p3, "surfaceChanged initColor {?} InitDraw {?}"

    invoke-static {p2, p3, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MainActivity"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MainActivity"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic t(Lf/h/q/d;Lcom/autosdk/bussiness/common/POI;Lcom/autosdk/bussiness/common/POI;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byd/automap/activity/MainActivity;->lambda$protocolCallProcess$17(Lf/h/q/d;Lcom/autosdk/bussiness/common/POI;Lcom/autosdk/bussiness/common/POI;Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic u(Lf/h/q/d;Lcom/autosdk/bussiness/common/POI;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/byd/automap/activity/MainActivity;->lambda$protocolCallProcess$18(Lf/h/q/d;Lcom/autosdk/bussiness/common/POI;)V

    return-void
.end method

.method public unInitForBack()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MainActivity"

    const-string v2, "unInitForBack() "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/map/MapController;->uninit4UseNewInit()V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/byd/automap/activity/MainActivity;->glMapSurface:Lcom/autonavi/gbl/map/adapter/MapSurfaceView;

    :cond_0
    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/ProtocolUtils;->unRegisterTtsReceiver()V

    invoke-static {}, Lf/h/c/m0/j;->j()Lf/h/c/m0/j;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/m0/j;->d()V

    iget-object v0, p0, Lcom/byd/automap/activity/MainActivity;->mTeamMessageObserver:Lcom/autosdk/user/observed/TeamMessageObserver;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/user/UserController;->getMsgPushModel()Lcom/autosdk/bussiness/user/model/MsgPushModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/user/UserController;->getMsgPushModel()Lcom/autosdk/bussiness/user/model/MsgPushModel;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mTeamMessageObserver:Lcom/autosdk/user/observed/TeamMessageObserver;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/user/model/MsgPushModel;->removeTeamMessageListener(Lcom/autosdk/bussiness/user/listener/TeamMessageListener;)V

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/user/UserController;->getInstance()Lcom/autosdk/bussiness/user/UserController;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->mTeamMessageObserver:Lcom/autosdk/user/observed/TeamMessageObserver;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/user/UserController;->groupRemoveObserver(Lcom/autonavi/gbl/user/group/observer/IGroupServiceObserver;)V

    :cond_2
    invoke-static {}, Lcom/autosdk/common/settings/ProtocolUtils;->getInstance()Lcom/autosdk/common/settings/ProtocolUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/ProtocolUtils;->removeTaskToBackObserver()V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lf/h/q/d;

    const-string v1, "fragment_manager_service"

    invoke-interface {v0, v1}, Lf/h/q/d;->getAutoService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/h/i/b/g;

    invoke-virtual {v0}, Lf/h/i/b/g;->onDestroy()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/autosdk/settings/DialogManager;->g()Lcom/autosdk/settings/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/settings/DialogManager;->c()V

    :cond_3
    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    iget-object v1, p0, Lcom/byd/automap/activity/MainActivity;->settingObserver:Lcom/autosdk/bussiness/settings/ISettingObserver;

    invoke-virtual {v0, v1}, Lf/h/c/j0/k0;->removeObserver(Lcom/autosdk/bussiness/settings/ISettingObserver;)V

    return-void
.end method

.method public updateDrView(Lf/h/h/j;)V
    .locals 3
    .annotation runtime Lo/d/a/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "dr_info_show_status"

    invoke-static {p1, v1, v0}, Lf/h/c/k0/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->updateNoaHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/byd/automap/activity/MainActivity;->updateNoaHandler:Landroid/os/Handler;

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/sensor/DrConfig;->getLocType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object p1

    new-instance v0, Lcom/byd/automap/activity/MainActivity$e;

    invoke-direct {v0, p0}, Lcom/byd/automap/activity/MainActivity$e;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->mMainDrEnterParam:Lcom/autonavi/skin/view/SkinTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->updateNoaHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->updateNoaHandler:Landroid/os/Handler;

    new-instance v0, Lcom/byd/automap/activity/MainActivity$f;

    invoke-direct {v0, p0}, Lcom/byd/automap/activity/MainActivity$f;-><init>(Lcom/byd/automap/activity/MainActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/byd/automap/activity/MainActivity;->updateNoaHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/autosdk/bussiness/location/LocationController;->getInstance()Lcom/autosdk/bussiness/location/LocationController;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/autosdk/bussiness/location/LocationController;->setDRInfoListener(Lcom/autosdk/bussiness/location/LocationController$DRInfoListener;)V

    :goto_1
    return-void
.end method

.method public synthetic v()V
    .locals 0

    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->lambda$protocolCallProcess$19()V

    return-void
.end method

.method public synthetic w(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/byd/automap/activity/MainActivity;->lambda$showOrHiddenWidgetBg$22(ZZ)V

    return-void
.end method

.method public synthetic x(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/byd/automap/activity/MainActivity;->lambda$showTipPageView$0(Landroid/view/View;)V

    return-void
.end method
