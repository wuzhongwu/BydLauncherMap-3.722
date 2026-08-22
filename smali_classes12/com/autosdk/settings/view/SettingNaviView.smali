.class public Lcom/autosdk/settings/view/SettingNaviView;
.super Lcom/autosdk/settings/view/BaseSettingView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autosdk/settings/view/BaseSettingView<",
        "Lf/h/i/c/l;",
        "Lf/h/r/e/w0;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingNaviView"


# instance fields
.field private baseScrollView:Lcom/autonavi/auto/common/view/BaseScrollView;

.field private clSettingNavi:Lcom/autonavi/skin/view/SkinConstraintLayout;

.field private groupBigRoad:Landroid/view/View;

.field private groupFastest:Landroid/view/View;

.field private groupLimitWeight:Landroid/view/View;

.field private groupPickupTruck:Landroid/view/View;

.field private m3DUpView:Lcom/autonavi/skin/view/SkinTextView;

.field private mBtnFlyLine:Lcom/autonavi/view/custom/CustomBtnSwitchView;

.field private mBtnLaneShow:Lcom/autonavi/view/custom/CustomBtnSwitchView;

.field private mBuildingSwitchId:I

.field private mWeatherSwitchId:I

.field private mMockGpsSwitchId:I

.field private mCarHeadUpView:Lcom/autonavi/skin/view/SkinTextView;

.field public mContentView:Lcom/autonavi/auto/common/view/BaseScrollView;

.field private mCustomBtnDarkLightView:Lcom/autonavi/view/custom/CustomBtnDarkLightView;

.field private mDarkLightBackgroundView:Lcom/autonavi/skin/view/SkinTextView;

.field private mDarkLightModeAnimationIsEnd:Z

.field private mDarkLightTextView:Lcom/autonavi/skin/view/SkinTextView;

.field private mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

.field private mLaneGroup:Landroidx/constraintlayout/widget/Group;

.field private final mLaneMsp:Lcom/autosdk/common/storage/MapSharePreference;

.field private mNaviBcvAvoidJanIsSelect:Z

.field private mNorthUpView:Lcom/autonavi/skin/view/SkinTextView;

.field private mPlanPrefStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPlateNumber:Ljava/lang/String;

.field private mPresenter:Lf/h/r/e/w0;

.field private mRoutePrefer:I

.field private mSettingBtnNaviRecommend:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private mSettingMapBtnDark:Lcom/autonavi/skin/view/SkinTextView;

.field private mSettingMapBtnDarkLightAuto:Lcom/autonavi/skin/view/SkinTextView;

.field private mSettingMapBtnDarkLightModeAnimation:Lcom/autonavi/skin/view/SkinImageView;

.field private mSettingMapBtnLight:Lcom/autonavi/skin/view/SkinTextView;

.field private mSettingNaviAvoid:Landroid/view/View;

.field private mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private mSettingNaviEyeRadio:Lcom/autonavi/view/custom/CustomBtnRadio5View;

.field private mSettingNaviImagePlateNumberGreen:Landroid/view/View;

.field private mSettingNaviImagePlateNumberNo:Lcom/autonavi/skin/view/SkinConstraintLayout;

.field private mSettingNaviPlateNumberBlue:Landroid/view/View;

.field private mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

.field private mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

.field public mSettingNavibtnswLimit:Landroid/view/ViewGroup;

.field private mSivAnimation:Lcom/autonavi/skin/view/SkinImageView;

.field private mSivAnimationIsEnd:Z

.field private mTextFlyLine:Lcom/autonavi/skin/view/SkinTextView;

.field private mTruckPlanPrefStatusMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private settingBtncVehicleLogoAirship:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private settingBtncVehicleLogoDefault:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private settingBtncVehicleLogoSpeed:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private settingBtncVehicleLogoVehicle:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

.field private settingMapCbtnsvCollectionPoin:Landroid/view/ViewGroup;

.field private settingMapCbtnsvRoadStatus:Landroid/view/ViewGroup;

.field private settingMapCbtnsvScale:Landroid/view/ViewGroup;

.field private settingMapCbtnsvScaleAuto:Landroid/view/ViewGroup;

.field private settingMapColorStatus:Landroid/view/ViewGroup;

.field private settingMapImgVehicleLogoAirship:Lcom/autonavi/skin/view/SkinLottieAnimationView;

.field private settingMapImgVehicleLogoDefault:Lcom/autonavi/skin/view/SkinLottieAnimationView;

.field private settingMapImgVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinLottieAnimationView;

.field private settingMapImgVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinLottieAnimationView;

.field private settingMapTvScaleTv:Lcom/autonavi/skin/view/SkinTextView;

.field private settingMapTvScaleTvAuto:Lcom/autonavi/skin/view/SkinTextView;

.field private settingMapTvVehicleLogoAirship:Lcom/autonavi/skin/view/SkinTextView;

.field private settingMapTvVehicleLogoDefault:Lcom/autonavi/skin/view/SkinTextView;

.field private settingMapTvVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinTextView;

.field private settingMapTvVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinTextView;

.field private settingNaviAvoidChargeImage:Lcom/autonavi/skin/view/SkinImageView;

.field private settingNaviAvoidChargeText:Lcom/autonavi/skin/view/SkinTextView;

.field private settingNaviAvoidHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

.field private settingNaviAvoidHighwayText:Lcom/autonavi/skin/view/SkinTextView;

.field private settingNaviAvoidJanImage:Lcom/autonavi/skin/view/SkinImageView;

.field private settingNaviAvoidJanText:Lcom/autonavi/skin/view/SkinTextView;

.field private settingNaviBigRoadImage:Lcom/autonavi/skin/view/SkinImageView;

.field private settingNaviBigRoadText:Lcom/autonavi/skin/view/SkinTextView;

.field private settingNaviCbtnsvSuspendedWindow:Landroid/view/ViewGroup;

.field private settingNaviFastestImage:Lcom/autonavi/skin/view/SkinImageView;

.field private settingNaviFastestText:Lcom/autonavi/skin/view/SkinTextView;

.field private settingNaviLimitWeight:Landroid/view/View;

.field private settingNaviPickupTruckSwitch:Landroid/view/View;

.field private settingNaviRecommendImage:Lcom/autonavi/skin/view/SkinImageView;

.field private settingNaviRecommendText:Lcom/autonavi/skin/view/SkinTextView;

.field private settingNaviSmallMapTv:Lcom/autonavi/skin/view/SkinTextView;

.field private settingNaviTrafficTv:Lcom/autonavi/skin/view/SkinTextView;

.field private settingNaviTvPickupTruckTips:Landroid/widget/TextView;

.field private settingNaviUsingHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

.field private settingNaviUsingHighwayText:Lcom/autonavi/skin/view/SkinTextView;

.field private settingNaviWindowTv:Lcom/autonavi/skin/view/SkinTextView;

.field private settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

.field private settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

.field private settingsMapMapTextSizeBig:Lcom/autonavi/skin/view/SkinImageView;

.field private settingsMapMapTextSizeBigTv:Lcom/autonavi/skin/view/SkinTextView;

.field private settingsMapMapTextSizeStandard:Lcom/autonavi/skin/view/SkinImageView;

.field private settingsMapMapTextSizeStandardTv:Lcom/autonavi/skin/view/SkinTextView;

.field private stvTextCity:Lcom/autonavi/skin/view/SkinTextView;

.field private stvTextCityEnergy:Lcom/autonavi/skin/view/SkinTextView;

.field private stvTextPlateNumber:Lcom/autonavi/skin/view/SkinTextView;

.field private stvTextPlateNumberEnergy:Lcom/autonavi/skin/view/SkinTextView;

.field private stvTextProvince:Lcom/autonavi/skin/view/SkinTextView;

.field private stvTextProvinceEnergy:Lcom/autonavi/skin/view/SkinTextView;


# direct methods
.method public constructor <init>(Lcom/autosdk/framework/fragmentcontainer/BaseFragment;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/BaseSettingView;-><init>(Lcom/autosdk/framework/fragmentcontainer/BaseFragment;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNaviBcvAvoidJanIsSelect:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSivAnimationIsEnd:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlateNumber:Ljava/lang/String;

    new-instance v1, Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v2, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;->laneNavi:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;

    invoke-direct {v1, v2}, Lcom/autosdk/common/storage/MapSharePreference;-><init>(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;)V

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mLaneMsp:Lcom/autosdk/common/storage/MapSharePreference;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlanPrefStatusMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mTruckPlanPrefStatusMap:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightModeAnimationIsEnd:Z

    iput-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    return-void
.end method

.method public static synthetic access$000(Lcom/autosdk/settings/view/SettingNaviView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapColorStatus:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/autosdk/settings/view/SettingNaviView;)Lf/h/r/e/w0;
    .locals 0

    iget-object p0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/autosdk/settings/view/SettingNaviView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightModeAnimationIsEnd:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/autosdk/settings/view/SettingNaviView;)Lcom/autonavi/skin/view/SkinImageView;
    .locals 0

    iget-object p0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightModeAnimation:Lcom/autonavi/skin/view/SkinImageView;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/autosdk/settings/view/SettingNaviView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->handleDarkLightMode(I)V

    return-void
.end method

.method public static synthetic access$502(Lcom/autosdk/settings/view/SettingNaviView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSivAnimationIsEnd:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/autosdk/settings/view/SettingNaviView;)Lcom/autonavi/skin/view/SkinImageView;
    .locals 0

    iget-object p0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSivAnimation:Lcom/autonavi/skin/view/SkinImageView;

    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method private getPlanPref()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNaviBcvAvoidJanIsSelect:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "8"

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, "4"

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    const-string v1, "2"

    :cond_7
    :goto_3
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "SettingNaviView"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private handleDarkLightMode(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SettingNaviView"

    const-string v2, "mapView DayNightMode = {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/automap/carlife/CarLifeDataHelper;->B()Lcom/automap/carlife/CarLifeDataHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/automap/carlife/CarLifeDataHelper;->q0(I)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->d()Z

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x64

    if-eqz v0, :cond_1

    if-ne v2, p1, :cond_0

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    sget-object v0, Lcom/autosdk/bussiness/settings/SettingMethod;->NOTIFIY_ADN_SAVE:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {p1, v1, v0}, Lf/h/c/j0/k0;->setBydConfigKeyDayNightMode(ILcom/autosdk/bussiness/settings/SettingMethod;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    sget-object v1, Lcom/autosdk/bussiness/settings/SettingMethod;->NOTIFIY_ADN_SAVE:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {v0, p1, v1}, Lf/h/c/j0/k0;->setBydConfigKeyDayNightMode(ILcom/autosdk/bussiness/settings/SettingMethod;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    if-ne v1, p1, :cond_0

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    sget-object v0, Lcom/autosdk/bussiness/settings/SettingMethod;->NOTIFIY_ADN_SAVE:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {p1, v2, v0}, Lf/h/c/j0/k0;->setBydConfigKeyDayNightMode(ILcom/autosdk/bussiness/settings/SettingMethod;)I

    :goto_0
    return-void
.end method

.method private initSwitchSrView()V
    .locals 3

    invoke-static {}, Lf/h/c/n0/v2;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/autosdk/settings/R$id;->setting_map_tv_scale_auto_theme:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(II)V

    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_scale_auto:I

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(II)V

    sget v0, Lcom/autosdk/settings/R$id;->setting_map_tv_scale_auto:I

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(II)V

    sget v0, Lcom/autosdk/settings/R$id;->setting_map_tv_scale_tv_auto:I

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(II)V

    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_tv_traffic_bg:I

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(II)V

    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_tv_traffic:I

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(II)V

    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_smallmap:I

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(II)V

    sget v2, Lcom/autosdk/settings/R$id;->setting_navi_smallmap_tv:I

    invoke-virtual {p0, v2, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(II)V

    sget v2, Lcom/autosdk/settings/R$id;->setting_navi_traffic:I

    invoke-virtual {p0, v2, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(II)V

    sget v2, Lcom/autosdk/settings/R$id;->setting_navi_traffic_tv:I

    invoke-virtual {p0, v2, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(II)V

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method private isNeedReroutePlanPref(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNaviBcvAvoidJanIsSelect:Z

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    const-string v2, "4"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    const-string v3, "8"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v1, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    :cond_4
    return v2
.end method

.method private isPreferChanged()Z
    .locals 2

    iget v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mRoutePrefer:I

    invoke-static {}, Lf/h/c/j0/q0/b;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$dealWithNaviChangeEvent$6()V
    .locals 2

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/h/c/j0/l0;->setConfigKeyRoadEvent(I)I

    return-void
.end method

.method public static synthetic lambda$initViews$0()V
    .locals 2

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/h/c/j0/l0;->setConfigKeyRoadEvent(I)I

    return-void
.end method

.method private synthetic lambda$onClick$2()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewCarID(I)V

    return-void
.end method

.method private synthetic lambda$onClick$3()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewCarID(I)V

    return-void
.end method

.method private synthetic lambda$onClick$4()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewCarID(I)V

    return-void
.end method

.method private synthetic lambda$onClick$5()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewCarID(I)V

    return-void
.end method

.method private synthetic lambda$setBydConfigKeyDayNightMode$7(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewDarkLightModeAnimation(IZ)V

    return-void
.end method

.method private synthetic lambda$updateViewDarkLightModeAnimation$8(ILcom/autonavi/skin/view/SkinTextView;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightModeAnimation:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/autosdk/settings/view/SettingNaviView$d;

    invoke-direct {v1, p0, p1}, Lcom/autosdk/settings/view/SettingNaviView$d;-><init>(Lcom/autosdk/settings/view/SettingNaviView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p2}, Landroid/widget/TextView;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateViewSivAnimation$1(Lcom/autonavi/skin/view/SkinTextView;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSivAnimation:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/autosdk/settings/view/SettingNaviView$c;

    invoke-direct {v1, p0}, Lcom/autosdk/settings/view/SettingNaviView$c;-><init>(Lcom/autosdk/settings/view/SettingNaviView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private notNetWorkRoutePref()V
    .locals 12

    const/16 v0, 0x9

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanImage:Lcom/autonavi/skin/view/SkinImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanText:Lcom/autonavi/skin/view/SkinTextView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadImage:Lcom/autonavi/skin/view/SkinImageView;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadText:Lcom/autonavi/skin/view/SkinTextView;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestImage:Lcom/autonavi/skin/view/SkinImageView;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestText:Lcom/autonavi/skin/view/SkinTextView;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    invoke-virtual {p0, v3, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewEnabled(Z[Landroid/view/View;)V

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v1, v0, v8

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v1, v0, v9

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v1, v0, v11

    invoke-virtual {p0, v3, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    return-void
.end method

.method private setBydConfigKeyDayNightMode(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SettingNaviView"

    const-string v2, "setBydConfigKeyDayNightMode   value ={?} "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lf/h/r/f/b1;

    invoke-direct {v0, p0, p1}, Lf/h/r/f/b1;-><init>(Lcom/autosdk/settings/view/SettingNaviView;I)V

    invoke-static {v0}, Lcom/autosdk/bussiness/common/task/TaskManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setPlateNumberBg()V
    .locals 2

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviPlateNumberBlue:Landroid/view/View;

    const v1, 0x3f19999a    # 0.6f

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberGreen:Landroid/view/View;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviPlateNumberBlue:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberGreen:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private setViewSelected(Landroid/view/View;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showColorDialog()V
    .locals 4

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SettingNaviView"

    const-string v2, "showColorDialog: activity is null..."

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/autosdk/settings/DialogManager;->g()Lcom/autosdk/settings/DialogManager;

    move-result-object v1

    sget-object v2, Lcom/autosdk/settings/DialogManager$DialogType;->colorDialog:Lcom/autosdk/settings/DialogManager$DialogType;

    invoke-virtual {v1, v0, v2}, Lcom/autosdk/settings/DialogManager;->f(Landroid/content/Context;Lcom/autosdk/settings/DialogManager$DialogType;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lf/h/r/f/d2;

    sget v1, Lcom/autosdk/settings/R$layout;->fragment_setting_dialog_confirm:I

    invoke-virtual {v0, v1}, Lf/h/r/f/d2;->setContentView(I)V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/autosdk/R$string;->reboot_to_work:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h/r/f/d2;->u(Ljava/lang/String;)Lf/h/r/f/d2;

    move-result-object v0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/autosdk/R$string;->reboot_now:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h/r/f/d2;->i(Ljava/lang/String;)Lf/h/r/f/d2;

    move-result-object v0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/autosdk/R$string;->dialog_right:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h/r/f/d2;->f(Ljava/lang/String;)Lf/h/r/f/d2;

    move-result-object v0

    new-instance v1, Lcom/autosdk/settings/view/SettingNaviView$e;

    invoke-direct {v1, p0}, Lcom/autosdk/settings/view/SettingNaviView$e;-><init>(Lcom/autosdk/settings/view/SettingNaviView;)V

    invoke-virtual {v0, v1}, Lf/h/r/f/d2;->o(Lf/h/r/f/d2$a;)Lf/h/r/f/d2;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/v/p;->show()V

    invoke-static {}, Lcom/autosdk/settings/DialogManager;->g()Lcom/autosdk/settings/DialogManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autosdk/settings/DialogManager;->h(Lcom/autosdk/settings/DialogManager$DialogType;)V

    return-void
.end method

.method private syncRoutePrefer2Copilot()V
    .locals 3

    invoke-static {}, Lcom/autosdk/common/kld/KldMessagerController;->r()Lcom/autosdk/common/kld/KldMessagerController;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/kld/KldMessagerController;->M(J)V

    return-void
.end method

.method private applyBuilding(Z)V
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(IZ)V

    invoke-virtual {v0, v1, p1}, Lcom/autosdk/bussiness/map/MapController;->setBuildingNormal(IZ)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(IZ)V

    invoke-virtual {v0, v1, p1}, Lcom/autosdk/bussiness/map/MapController;->setBuildingNormal(IZ)V

    return-void
.end method

.method private isBuildingShow()Z
    .locals 4

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "byd_building_show"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setBuildingShow(Z)V
    .locals 3

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "byd_building_show"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private isWeatherEnabled()Z
    .locals 4

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "byd_dynamic_weather"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setWeatherEnabled(Z)V
    .locals 3

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "byd_dynamic_weather"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private initWeatherSwitch()V
    .locals 4

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "btn_dynamic_weather"

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mWeatherSwitchId:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->isWeatherEnabled()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    invoke-static {v1}, Lcom/byd/weather/DynamicWeather;->setEnabled(Z)V

    return-void
.end method

.method private refreshWeatherSwitch()V
    .locals 2

    iget v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mWeatherSwitchId:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->isWeatherEnabled()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method private static carModelIdNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tv_car_model_default"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tv_car_model_hc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tv_car_model_r2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tv_car_model_u8l"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tv_car_model_r1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "tv_car_model_custom"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static carModelValues()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "HcModel/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "R2/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "U8L/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "R1/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Custom/"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static carModelViewId(Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getCarModel()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "byd_car_model"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method private setCarModel(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "byd_car_model"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "model"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private applyCarModelSelection()V
    .locals 7

    iget-object v0, p0, Lcom/autosdk/settings/view/BaseUIView;->mMainView:Landroid/view/View;

    if-nez v0, :cond_view_ready

    return-void

    :cond_view_ready
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->getCarModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/settings/view/SettingNaviView;->carModelIdNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/autosdk/settings/view/SettingNaviView;->carModelValues()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_end

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/autosdk/settings/view/SettingNaviView;->carModelViewId(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_next

    invoke-virtual {p0, v4}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_next

    aget-object v6, v2, v3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    :cond_next
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_end
    const-string v0, "tv_car_model_custom_status"

    invoke-static {v0}, Lcom/autosdk/settings/view/SettingNaviView;->carModelViewId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_status_skip

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_status_skip

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/byd/carmodel/CarModelPackageManager;->currentLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_status_skip
    return-void
.end method

.method private initCarModelSelector()V
    .locals 4

    invoke-static {}, Lcom/autosdk/settings/view/SettingNaviView;->carModelIdNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_end

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/autosdk/settings/view/SettingNaviView;->carModelViewId(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_next

    invoke-virtual {p0, v2}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_next

    invoke-virtual {p0, v3, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    :cond_next
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_end
    iget-object v1, p0, Lcom/autosdk/settings/view/BaseUIView;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_focus_skip

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    :cond_focus_skip
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->applyCarModelSelection()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_nofocus

    iget-object v0, p0, Lcom/autosdk/settings/view/BaseUIView;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_nofocus

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->applyCarModelSelection()V

    invoke-static {}, Lcom/byd/carmodel/CarModelPackageManager;->consumeRestartPrompt()Z

    move-result v1

    if-eqz v1, :cond_nofocus

    invoke-direct {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->showCarModelRestartDialog(Landroid/view/View;)V

    :cond_nofocus
    return-void
.end method

.method private handleCarModelClick(Landroid/view/View;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {}, Lcom/autosdk/settings/view/SettingNaviView;->carModelIdNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/autosdk/settings/view/SettingNaviView;->carModelValues()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_end

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/autosdk/settings/view/SettingNaviView;->carModelViewId(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_next

    if-ne v0, v4, :cond_next

    aget-object v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v5, "Custom/"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_builtin

    invoke-static {v6}, Lcom/byd/carmodel/CarModelPackageManager;->handleCustomClick(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_custom_done

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->applyCarModelSelection()V

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->showCarModelRestartDialog(Landroid/view/View;)V

    :cond_custom_done
    const/4 v5, 0x1

    return v5

    :cond_builtin
    invoke-static {v6}, Lcom/byd/carmodel/CarModelResolver;->deactivate(Landroid/content/Context;)V

    invoke-direct {p0, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setCarModel(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->applyCarModelSelection()V

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->showCarModelRestartDialog(Landroid/view/View;)V

    const/4 v5, 0x1

    return v5

    :cond_next
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_end
    const/4 v5, 0x0

    return v5
.end method

.method private showCarModelRestartDialog(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8f66\u9053\u7ea7\u8f66\u6a21"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u8f66\u9053\u7ea7\u8f66\u6a21\u4fee\u6539\u5b8c\u6210\uff0c\u91cd\u542f\u540e\u751f\u6548\u3002\u662f\u5426\u7acb\u5373\u91cd\u542f\u5730\u56fe\uff1f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a\u91cd\u542f"

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_exit

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_exit

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_exit

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_exit
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private initBuildingSwitch()V
    .locals 4

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "btn_build_show"

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBuildingSwitchId:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->isBuildingShow()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    invoke-direct {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->applyBuilding(Z)V

    return-void
.end method

.method private refreshBuildingSwitch()V
    .locals 2

    iget v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBuildingSwitchId:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->isBuildingShow()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method private initMockGpsSwitch()V
    .locals 4

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "btn_mock_gps"

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mMockGpsSwitchId:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    invoke-static {}, Lcom/byd/mockgps/MockGpsUi;->isActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method private refreshMockGpsSwitch()V
    .locals 2

    iget v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mMockGpsSwitchId:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/byd/mockgps/MockGpsUi;->isActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method private static clusterLaneIdNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "tv_cluster_lane_follow"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tv_cluster_lane_always"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tv_cluster_lane_off"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private applyClusterLaneSelection()V
    .locals 5

    iget-object v0, p0, Lcom/autosdk/settings/view/BaseUIView;->mMainView:Landroid/view/View;

    if-nez v0, :cond_view_ready

    return-void

    :cond_view_ready
    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->getMode()I

    move-result v0

    invoke-static {}, Lcom/autosdk/settings/view/SettingNaviView;->clusterLaneIdNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_end

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/autosdk/settings/view/SettingNaviView;->carModelViewId(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_next

    invoke-virtual {p0, v3}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_next

    if-ne v2, v0, :cond_unselected

    const/4 v4, 0x1

    goto :goto_1

    :cond_unselected
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    :cond_next
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_end
    return-void
.end method

.method private initClusterLaneSelector()V
    .locals 3

    invoke-static {}, Lcom/autosdk/settings/view/SettingNaviView;->clusterLaneIdNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_end

    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/autosdk/settings/view/SettingNaviView;->carModelViewId(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_next

    invoke-virtual {p0, v2}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_next

    invoke-virtual {p0, v2, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    :cond_next
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_end
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->applyClusterLaneSelection()V

    return-void
.end method

.method private handleClusterLaneClick(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {}, Lcom/autosdk/settings/view/SettingNaviView;->clusterLaneIdNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_end

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/autosdk/settings/view/SettingNaviView;->carModelViewId(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_next

    if-ne v0, v3, :cond_next

    invoke-static {v2}, Lcom/byd/lane/ClusterLaneMode;->setMode(I)V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->applyClusterLaneSelection()V

    const/4 v0, 0x1

    return v0

    :cond_next
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_end
    const/4 v0, 0x0

    return v0
.end method

.method private updateLaneSwitchState(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mLaneMsp:Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->laneNaviEnable:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/storage/MapSharePreference;->d(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)Z

    move-result v0

    invoke-static {}, Lf/k/r/f/b;->c()Z

    move-result v1

    goto :cond_0

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    const/16 v3, 0x8

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mLaneMsp:Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v3, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->laneOpen:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {p1, v3, v2}, Lcom/autosdk/common/storage/MapSharePreference;->d(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)Z

    move-result p1

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBtnLaneShow:Lcom/autonavi/view/custom/CustomBtnSwitchView;

    invoke-virtual {p0, v3, p1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "SettingNaviView"

    const-string v0, "laneShow:{?} isLaneSr:{?} open:{?}"

    invoke-static {p1, v0, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private updateNumberView(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/l0;->getConfigKeyPowerType()I

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    invoke-virtual {v0, p1}, Lf/h/r/e/w0;->R0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlateNumber:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberNo:Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {p0, v5, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    const/4 v7, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberGreen:Landroid/view/View;

    invoke-virtual {p0, v5, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviPlateNumberBlue:Landroid/view/View;

    invoke-virtual {p0, v4, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextCity:Lcom/autonavi/skin/view/SkinTextView;

    aget-object v5, v0, v1

    invoke-virtual {p0, v4, v5}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextProvince:Lcom/autonavi/skin/view/SkinTextView;

    aget-object v5, v0, v3

    invoke-virtual {p0, v4, v5}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextPlateNumber:Lcom/autonavi/skin/view/SkinTextView;

    aget-object v0, v0, v7

    :goto_0
    invoke-virtual {p0, v4, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_2

    iget-object v5, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberGreen:Landroid/view/View;

    invoke-virtual {p0, v5, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviPlateNumberBlue:Landroid/view/View;

    invoke-virtual {p0, v5, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextCityEnergy:Lcom/autonavi/skin/view/SkinTextView;

    aget-object v5, v0, v1

    invoke-virtual {p0, v4, v5}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextProvinceEnergy:Lcom/autonavi/skin/view/SkinTextView;

    aget-object v5, v0, v3

    invoke-virtual {p0, v4, v5}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextPlateNumberEnergy:Lcom/autonavi/skin/view/SkinTextView;

    aget-object v0, v0, v7

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberGreen:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviPlateNumberBlue:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberNo:Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {p0, v0, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    :goto_2
    move-object p1, v2

    :cond_3
    iput-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlateNumber:Ljava/lang/String;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v4, "SettingNaviView"

    const-string v5, "updateNumberView e:{?}"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v4, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    if-nez p1, :cond_4

    move-object p1, v2

    :cond_4
    iput-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlateNumber:Ljava/lang/String;

    throw v0
.end method


# virtual methods
.method public synthetic K()V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->lambda$onClick$2()V

    return-void
.end method

.method public synthetic S()V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->lambda$onClick$3()V

    return-void
.end method

.method public bridge synthetic addOnLayoutChangeListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->addOnLayoutChangeListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private adaptRoutePreferForLandscapeTwoThird()V
    .locals 3

    invoke-static {}, Lcom/autosdk/common/utils/DPIUtil;->i()Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;->LANDSCAPE_2_3:Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;

    if-ne v0, v1, :cond_8

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviRecommendImage:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidChargeImage:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanImage:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadImage:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestImage:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviUsingHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviRecommendText:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$id;->setting_navi_recommond_route:I

    invoke-direct {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->centerRoutePreferText(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidChargeText:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$id;->setting_navi_bcv_avoid_charge:I

    invoke-direct {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->centerRoutePreferText(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanText:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$id;->setting_navi_bcv_avoid_jan:I

    invoke-direct {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->centerRoutePreferText(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidHighwayText:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$id;->setting_navi_bcv_avoid_highway:I

    invoke-direct {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->centerRoutePreferText(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadText:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$id;->setting_navi_bcv_big_road:I

    invoke-direct {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->centerRoutePreferText(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestText:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$id;->setting_navi_bcv_fastest:I

    invoke-direct {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->centerRoutePreferText(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviUsingHighwayText:Lcom/autonavi/skin/view/SkinTextView;

    sget v2, Lcom/autosdk/settings/R$id;->setting_navi_bcv_using_highway:I

    invoke-direct {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->centerRoutePreferText(Landroid/view/View;I)V

    :cond_8
    return-void
.end method

.method private centerRoutePreferText(Landroid/view/View;I)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic attachPresenter(Lf/h/i/c/k;)V
    .locals 0

    check-cast p1, Lf/h/r/e/w0;

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->attachPresenter(Lf/h/r/e/w0;)V

    return-void
.end method

.method public attachPresenter(Lf/h/r/e/w0;)V
    .locals 0

    iput-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    return-void
.end method

.method public synthetic c0()V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->lambda$onClick$4()V

    return-void
.end method

.method public bridge synthetic clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V
    .locals 0

    invoke-super {p0, p1}, Lf/h/i/d/f0;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    return-void
.end method

.method public createView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->getLayoutView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/auto/common/view/BaseScrollView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mContentView:Lcom/autonavi/auto/common/view/BaseScrollView;

    return-object v0
.end method

.method public dealWithNaviChangeEvent(Lf/h/h/d0;)V
    .locals 5
    .annotation runtime Lo/d/a/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lf/h/h/d0;->b()I

    move-result p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SettingNaviView"

    const-string v4, "dealWithNaviChangeEvent, type ={?} "

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x3f2

    const/16 v4, 0x3ee

    if-ne p1, v1, :cond_2

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "dealWithNaviChangeEvent, isNetworkConnected() ={?} "

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-static {}, Lf/h/c/j0/q0/b;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->refreshPreference(I)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/l0;->getConfigKeyAvoidLimit()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewAvoidLimit(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->notNetWorkRoutePref()V

    invoke-virtual {p0, v3}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewAvoidLimit(I)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object p1

    sget-object v0, Lcom/autosdk/bussiness/settings/SettingMethod;->SAVE:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {p1, v3, v0}, Lf/h/c/j0/l0;->setConfigKeyAvoidLimit(ILcom/autosdk/bussiness/settings/SettingMethod;)I

    sget-object p1, Lf/h/r/f/g1;->a:Lf/h/r/f/g1;

    invoke-static {p1}, Lcom/autosdk/bussiness/common/task/TaskManager;->run(Ljava/lang/Runnable;)V

    new-instance p1, Lf/h/h/d0;

    invoke-direct {p1, v4, v3}, Lf/h/h/d0;-><init>(II)V

    invoke-virtual {p1, v3}, Lf/h/h/d0;->e(Z)V

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/d/a/c;->l(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-ne p1, v4, :cond_3

    :goto_0
    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/l0;->getConfigKeyRoadEvent()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewRoadStatus(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public destroyViews()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SettingNaviView"

    const-string v2, "destroyViews: "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlanPrefStatusMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlanPrefStatusMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mTruckPlanPrefStatusMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mTruckPlanPrefStatusMap:Ljava/util/HashMap;

    :cond_1
    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    iput-object v1, p0, Lcom/autosdk/settings/view/BaseUIView;->mMainView:Landroid/view/View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mContentView:Lcom/autonavi/auto/common/view/BaseScrollView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNavibtnswLimit:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviCbtnsvSuspendedWindow:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviAvoid:Landroid/view/View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviEyeRadio:Lcom/autonavi/view/custom/CustomBtnRadio5View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingBtnNaviRecommend:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviRecommendText:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviRecommendImage:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanText:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanImage:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviUsingHighwayText:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviUsingHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidHighwayText:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidChargeText:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidChargeImage:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadText:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadImage:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestText:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestImage:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCarHeadUpView:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNorthUpView:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->m3DUpView:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSivAnimation:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviPlateNumberBlue:Landroid/view/View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextPlateNumber:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextCity:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextProvince:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberGreen:Landroid/view/View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberNo:Lcom/autonavi/skin/view/SkinConstraintLayout;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextPlateNumberEnergy:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextCityEnergy:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextProvinceEnergy:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviSmallMapTv:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviTrafficTv:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->clSettingNavi:Lcom/autonavi/skin/view/SkinConstraintLayout;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->baseScrollView:Lcom/autonavi/auto/common/view/BaseScrollView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightTextView:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCustomBtnDarkLightView:Lcom/autonavi/view/custom/CustomBtnDarkLightView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightModeAnimation:Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDark:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnLight:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightAuto:Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBtnFlyLine:Lcom/autonavi/view/custom/CustomBtnSwitchView;

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/d/a/c;->j(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/d/a/c;->t(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public detachPresenter()V
    .locals 0

    return-void
.end method

.method public bridge synthetic getLayoutId()I
    .locals 1

    invoke-super {p0}, Lf/h/i/d/f0;->getLayoutId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLayoutId(Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;Z[I)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lf/h/i/d/f0;->getLayoutId(Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;Z[I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getLayoutId(Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;Z[IZ)I
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lf/h/i/d/f0;->getLayoutId(Lcom/autosdk/common/utils/DPIUtil$ScreenStatus;Z[IZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getLayoutId([I)I
    .locals 0

    invoke-super {p0, p1}, Lf/h/i/d/f0;->getLayoutId([I)I

    move-result p1

    return p1
.end method

.method public getLayoutView()Landroid/view/View;
    .locals 3

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hockAll(Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->hockAll(Ljava/util/function/Function;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic i0()V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->lambda$onClick$5()V

    return-void
.end method

.method public initRoutePrefer()V
    .locals 13

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v0

    const/16 v1, 0x9

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanImage:Lcom/autonavi/skin/view/SkinImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanText:Lcom/autonavi/skin/view/SkinTextView;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadImage:Lcom/autonavi/skin/view/SkinImageView;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadText:Lcom/autonavi/skin/view/SkinTextView;

    const/4 v9, 0x5

    aput-object v3, v2, v9

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v10, 0x6

    aput-object v3, v2, v10

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestImage:Lcom/autonavi/skin/view/SkinImageView;

    const/4 v11, 0x7

    aput-object v3, v2, v11

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestText:Lcom/autonavi/skin/view/SkinTextView;

    const/16 v12, 0x8

    aput-object v3, v2, v12

    invoke-virtual {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewEnabled(Z[Landroid/view/View;)V

    const/16 v0, 0x15

    new-array v0, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingBtnNaviRecommend:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviRecommendImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviRecommendText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v2, v0, v7

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidChargeImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v2, v0, v8

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidChargeText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v2, v0, v9

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v2, v0, v10

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v2, v0, v11

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v2, v0, v12

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidHighwayText:Lcom/autonavi/skin/view/SkinTextView;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadImage:Lcom/autonavi/skin/view/SkinImageView;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadText:Lcom/autonavi/skin/view/SkinTextView;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestImage:Lcom/autonavi/skin/view/SkinImageView;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestText:Lcom/autonavi/skin/view/SkinTextView;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviUsingHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviUsingHighwayText:Lcom/autonavi/skin/view/SkinTextView;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    iput-boolean v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNaviBcvAvoidJanIsSelect:Z

    invoke-static {}, Lf/h/c/j0/q0/b;->d()I

    move-result v0

    iput v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mRoutePrefer:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->refreshPreference(I)V

    return-void
.end method

.method public initViews()V
    .locals 6

    invoke-super {p0}, Lcom/autosdk/settings/view/BaseSettingView;->initViews()V

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/d/a/c;->j(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/d/a/c;->q(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lf/h/c/m0/h;->o()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SettingNaviView"

    const-string v4, "LoginUtils.isLoggedIn() = {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v1, Lcom/autosdk/settings/R$id;->cl_search_home:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/auto/common/view/BaseScrollView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->baseScrollView:Lcom/autonavi/auto/common/view/BaseScrollView;

    sget v1, Lcom/autosdk/settings/R$id;->cl_setting_navi:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinConstraintLayout;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->clSettingNavi:Lcom/autonavi/skin/view/SkinConstraintLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_limit_weight:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviLimitWeight:Landroid/view/View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_pickup_truck_switch:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviPickupTruckSwitch:Landroid/view/View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_btnsw_limit:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNavibtnswLimit:Landroid/view/ViewGroup;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_smallmap:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_traffic:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviLimitWeight:Landroid/view/View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviPickupTruckSwitch:Landroid/view/View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNavibtnswLimit:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    sget v1, Lcom/autosdk/settings/R$id;->setting_btnc_pickup_truck:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupPickupTruck:Landroid/view/View;

    sget v1, Lcom/autosdk/settings/R$id;->group_avoid_limit_weight:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupLimitWeight:Landroid/view/View;

    sget v1, Lcom/autosdk/settings/R$id;->group_bcv_fastest:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupFastest:Landroid/view/View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_tv_pickup_truck_tips:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviTvPickupTruckTips:Landroid/widget/TextView;

    sget v1, Lcom/autosdk/settings/R$id;->group_bcv_big_road:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupBigRoad:Landroid/view/View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_recommond_route:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingBtnNaviRecommend:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_bcv_avoid_jan:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_bcv_using_highway:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_bcv_avoid_highway:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_bcv_avoid_charge:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_bcv_big_road:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_bcv_fastest:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_recommend_text:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviRecommendText:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_recommend_image:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviRecommendImage:Lcom/autonavi/skin/view/SkinImageView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_avoid_jan_text:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanText:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_avoid_jan_image:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanImage:Lcom/autonavi/skin/view/SkinImageView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_using_highway_text:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviUsingHighwayText:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_using_highway_image:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviUsingHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_avoid_highway_text:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidHighwayText:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_avoid_highway_image:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_avoid_charge_text:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidChargeText:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_avoid_charge_image:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidChargeImage:Lcom/autonavi/skin/view/SkinImageView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_big_road_text:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadText:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_big_road_image:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadImage:Lcom/autonavi/skin/view/SkinImageView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_fastest_text:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestText:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_fastest_image:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestImage:Lcom/autonavi/skin/view/SkinImageView;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingBtnNaviRecommend:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_cbtnsv_suspended_window:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviCbtnsvSuspendedWindow:Landroid/view/ViewGroup;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_tv_suspended_window_tv:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviWindowTv:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviCbtnsvSuspendedWindow:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_platenumberblue:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviPlateNumberBlue:Landroid/view/View;

    sget v1, Lcom/autosdk/settings/R$id;->stv_text_plate_number:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextPlateNumber:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->stv_text_city:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextCity:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->stv_text_province:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextProvince:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_image_platenumbergreen:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberGreen:Landroid/view/View;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviPlateNumberBlue:Landroid/view/View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberGreen:Landroid/view/View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_platenumber_no:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinConstraintLayout;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviImagePlateNumberNo:Lcom/autonavi/skin/view/SkinConstraintLayout;

    sget v1, Lcom/autosdk/settings/R$id;->stv_text_plate_number_energy:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextPlateNumberEnergy:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->stv_text_city_energy:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextCityEnergy:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->stv_text_province_energy:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->stvTextProvinceEnergy:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_smallmap_tv:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviSmallMapTv:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_navi_traffic_tv:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviTrafficTv:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_btnc_avoid_theme:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviAvoid:Landroid/view/View;

    invoke-virtual {p0, v1, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_dark_light_bg:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightBackgroundView:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_tv_dark_light:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightTextView:Lcom/autonavi/skin/view/SkinTextView;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_dark_light_btn:I

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/view/custom/CustomBtnDarkLightView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCustomBtnDarkLightView:Lcom/autonavi/view/custom/CustomBtnDarkLightView;

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->d()Z

    move-result v1

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightBackgroundView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightTextView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCustomBtnDarkLightView:Lcom/autonavi/view/custom/CustomBtnDarkLightView;

    invoke-virtual {p0, v1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCustomBtnDarkLightView:Lcom/autonavi/view/custom/CustomBtnDarkLightView;

    if-eqz v1, :cond_1

    sget v5, Lcom/autosdk/settings/R$id;->siv_animation:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightModeAnimation:Lcom/autonavi/skin/view/SkinImageView;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCustomBtnDarkLightView:Lcom/autonavi/view/custom/CustomBtnDarkLightView;

    sget v5, Lcom/autosdk/settings/R$id;->stv_radio_dark:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDark:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCustomBtnDarkLightView:Lcom/autonavi/view/custom/CustomBtnDarkLightView;

    sget v5, Lcom/autosdk/settings/R$id;->stv_radio_light:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnLight:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCustomBtnDarkLightView:Lcom/autonavi/view/custom/CustomBtnDarkLightView;

    sget v5, Lcom/autosdk/settings/R$id;->stv_radio_auto:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightAuto:Lcom/autonavi/skin/view/SkinTextView;

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->getBydConfigKeyDayNightMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "darkLight mode = {?}"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->getBydConfigKeyDayNightMode()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewDarkLightModeAnimation(IZ)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDark:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnLight:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightAuto:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightBackgroundView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightTextView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCustomBtnDarkLightView:Lcom/autonavi/view/custom/CustomBtnDarkLightView;

    invoke-virtual {p0, v0, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    :goto_0
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCustomBtnDarkLightView:Lcom/autonavi/view/custom/CustomBtnDarkLightView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/autosdk/settings/view/SettingNaviView$a;

    invoke-direct {v1, p0}, Lcom/autosdk/settings/view/SettingNaviView$a;-><init>(Lcom/autosdk/settings/view/SettingNaviView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    sget v0, Lcom/autosdk/settings/R$id;->settings_map_map_text_size_standard:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeStandard:Lcom/autonavi/skin/view/SkinImageView;

    sget v0, Lcom/autosdk/settings/R$id;->settings_map_map_text_size_big:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeBig:Lcom/autonavi/skin/view/SkinImageView;

    sget v0, Lcom/autosdk/settings/R$id;->settings_map_map_text_size_standard_tv:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeStandardTv:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/settings/R$id;->settings_map_map_text_size_big_tv:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeBigTv:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeStandard:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeBig:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_collection_poin:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvCollectionPoin:Landroid/view/ViewGroup;

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/l0;->getConfignKeyMyFavorite()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewCollectionPoin(I)V

    sget v0, Lcom/autosdk/settings/R$id;->group_color:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isU8L()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_color:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapColorStatus:Landroid/view/ViewGroup;

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->getBydConfigKeyColorOffOn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewColor(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    :goto_1
    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_scale:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvScale:Landroid/view/ViewGroup;

    sget v0, Lcom/autosdk/settings/R$id;->setting_map_tv_scale_tv:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvScaleTv:Lcom/autonavi/skin/view/SkinTextView;

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->getBydConfigKeyAutoScaleOffOn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewScale(I)V

    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_scale_auto:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvScaleAuto:Landroid/view/ViewGroup;

    sget v0, Lcom/autosdk/settings/R$id;->setting_map_tv_scale_tv_auto:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvScaleTvAuto:Lcom/autonavi/skin/view/SkinTextView;

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->getBydConfigKeyMaxScaleOffOn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewScaleMax(I)V

    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_road_status:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvRoadStatus:Landroid/view/ViewGroup;

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/l0;->getConfigKeyRoadEvent()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewRoadStatus(I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvRoadStatus:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "initViews  networkConnected is false!"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lf/h/r/f/e1;->a:Lf/h/r/f/e1;

    invoke-static {v0}, Lcom/autosdk/bussiness/common/task/TaskManager;->run(Ljava/lang/Runnable;)V

    new-instance v0, Lf/h/h/d0;

    const/16 v1, 0x3ee

    invoke-direct {v0, v1, v3}, Lf/h/h/d0;-><init>(II)V

    invoke-virtual {v0, v3}, Lf/h/h/d0;->e(Z)V

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/d/a/c;->l(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeStandard:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeBig:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvCollectionPoin:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvScale:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvScaleAuto:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapColorStatus:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    sget v0, Lcom/autosdk/settings/R$id;->setting_personal_default:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/settings/R$id;->setting_personal_ht:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isSupportOneMirror()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v0, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v0, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "isSupportOneMirror"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz v0, :cond_7

    sget v1, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_default:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoDefault:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_vehicle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoVehicle:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_airship:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoAirship:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_speed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoSpeed:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_img_vehicle_logo_default:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoDefault:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_img_vehicle_logo_vehicle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_img_vehicle_logo_airship:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoAirship:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_img_vehicle_logo_speed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_tv_default:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoDefault:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_tv_vehicle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_tv_airship:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoAirship:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v0, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalHt:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p0, v0, v4}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz v0, :cond_7

    sget v1, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_default:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoDefault:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_vehicle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoVehicle:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_airship:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoAirship:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_speed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoSpeed:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_img_vehicle_logo_default:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoDefault:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_img_vehicle_logo_vehicle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_img_vehicle_logo_airship:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoAirship:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_img_vehicle_logo_speed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_tv_default:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoDefault:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_tv_vehicle:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/settings/R$id;->setting_map_tv_airship:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoAirship:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingPersonalDefault:Lcom/autonavi/skin/view/SkinLinearLayout;

    :goto_2
    sget v1, Lcom/autosdk/settings/R$id;->setting_map_tv_speed:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinTextView;

    :cond_7
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoDefault:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoVehicle:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoAirship:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoSpeed:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    sget v0, Lcom/autosdk/settings/R$id;->setting_eye_btn:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnRadio5View;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviEyeRadio:Lcom/autonavi/view/custom/CustomBtnRadio5View;

    if-eqz v0, :cond_8

    sget v1, Lcom/autosdk/settings/R$id;->stv_radio1:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCarHeadUpView:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviEyeRadio:Lcom/autonavi/view/custom/CustomBtnRadio5View;

    sget v1, Lcom/autosdk/settings/R$id;->stv_radio2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNorthUpView:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviEyeRadio:Lcom/autonavi/view/custom/CustomBtnRadio5View;

    sget v1, Lcom/autosdk/settings/R$id;->stv_radio3:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->m3DUpView:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviEyeRadio:Lcom/autonavi/view/custom/CustomBtnRadio5View;

    sget v1, Lcom/autosdk/settings/R$id;->siv_animation:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSivAnimation:Lcom/autonavi/skin/view/SkinImageView;

    :cond_8
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviEyeRadio:Lcom/autonavi/view/custom/CustomBtnRadio5View;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCarHeadUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNorthUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->m3DUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviEyeRadio:Lcom/autonavi/view/custom/CustomBtnRadio5View;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/autosdk/settings/view/SettingNaviView$b;

    invoke-direct {v1, p0}, Lcom/autosdk/settings/view/SettingNaviView$b;-><init>(Lcom/autosdk/settings/view/SettingNaviView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_9
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_connect_end_switch:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnSwitchView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBtnFlyLine:Lcom/autonavi/view/custom/CustomBtnSwitchView;

    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_tv_connect_end_value:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinTextView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mTextFlyLine:Lcom/autonavi/skin/view/SkinTextView;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBtnFlyLine:Lcom/autonavi/view/custom/CustomBtnSwitchView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->getBydConfigKeyFlyLineVisible()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateFlyLineVisitSate(I)V

    sget v0, Lcom/autosdk/settings/R$id;->lane_group:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mLaneGroup:Landroidx/constraintlayout/widget/Group;

    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_btnsw_lane:I

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnSwitchView;

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBtnLaneShow:Lcom/autonavi/view/custom/CustomBtnSwitchView;

    invoke-virtual {p0, v0, p0}, Lcom/autosdk/settings/view/SettingNaviView;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mLaneGroup:Landroidx/constraintlayout/widget/Group;

    invoke-direct {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateLaneSwitchState(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->initBuildingSwitch()V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->initWeatherSwitch()V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->initMockGpsSwitch()V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->initCarModelSelector()V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->initClusterLaneSelector()V

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v0

    if-nez v0, :cond_a

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "initViews  NetSystemUsable is false!"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNavibtnswLimit:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    sget-object v1, Lcom/autosdk/bussiness/settings/SettingMethod;->SAVE:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {v0, v3, v1}, Lf/h/c/j0/l0;->setConfigKeyAvoidLimit(ILcom/autosdk/bussiness/settings/SettingMethod;)I

    :cond_a
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->baseScrollView:Lcom/autonavi/auto/common/view/BaseScrollView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    if-eqz v1, :cond_b

    instance-of v2, v1, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;

    if-eqz v2, :cond_b

    move-object v2, v1

    check-cast v2, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->clSettingNavi:Lcom/autonavi/skin/view/SkinConstraintLayout;

    check-cast v1, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;

    invoke-virtual {v1}, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;->S()F

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;->b0(Lcom/autonavi/auto/common/view/BaseScrollView;Landroid/view/View;F)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    check-cast v0, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->baseScrollView:Lcom/autonavi/auto/common/view/BaseScrollView;

    invoke-virtual {v0, v1}, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;->Z(Lcom/autonavi/auto/common/view/BaseScrollView;)V

    :cond_b
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/autosdk/settings/DialogManager;->g()Lcom/autosdk/settings/DialogManager;

    move-result-object v1

    iget-object v1, v1, Lcom/autosdk/settings/DialogManager;->a:Lcom/autosdk/settings/DialogManager$DialogType;

    invoke-virtual {v0, v1}, Lf/h/r/e/w0;->V0(Lcom/autosdk/settings/DialogManager$DialogType;)V

    :cond_c
    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->initRoutePrefer()V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->adaptRoutePreferForLandscapeTwoThird()V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->initSwitchSrView()V

    return-void
.end method

.method public initViewsStatus()V
    .locals 4

    invoke-super {p0}, Lcom/autosdk/settings/view/BaseSettingView;->initViewsStatus()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SettingNaviView"

    const-string v3, "initViewsStatus!"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/h/c/n0/f1;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->getBydConfigKeySuspendedWindow()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewSuspendedWindow(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewSuspendedWindow(I)V

    :goto_0
    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->getConfigKeyPickupTruckNavi()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewPickupTruckNavi(I)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/l0;->getConfigKeyAvoidLimit()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewAvoidLimit(I)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->getBydConfigKeyTrafficMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewTrafficMode(I)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/l0;->getConfigKeyMapviewMode()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewSivAnimation(IZ)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->getBydConfigKeyFlyLineVisible()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateFlyLineVisitSate(I)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->getBydConfigKeyDayNightMode()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewDarkLightModeAnimation(IZ)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->getBydConfigKeyMapTextSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewMapFontSize(I)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/l0;->getConfignKeyMyFavorite()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewCollectionPoin(I)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->getBydConfigKeyAutoScaleOffOn()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewScale(I)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->getBydConfigKeyColorOffOn()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewColor(I)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/l0;->getConfigKeyRoadEvent()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewRoadStatus(I)V

    new-instance v1, Lf/h/h/d0;

    const/16 v2, 0x3ee

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v3

    invoke-virtual {v3}, Lf/h/c/j0/l0;->getConfigKeyRoadEvent()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lf/h/h/d0;-><init>(II)V

    invoke-virtual {v1, v0}, Lf/h/h/d0;->e(Z)V

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/d/a/c;->l(Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->getBydConfigKeyMaxScaleOffOn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewScaleMax(I)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/k0;->getConfigKeyCarID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewCarID(I)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mLaneGroup:Landroidx/constraintlayout/widget/Group;

    invoke-direct {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateLaneSwitchState(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->refreshBuildingSwitch()V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->refreshWeatherSwitch()V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->refreshMockGpsSwitch()V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->applyCarModelSelection()V

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->applyClusterLaneSelection()V

    return-void
.end method

.method public isEnableMultiTouch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic l0(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->lambda$setBydConfigKeyDayNightMode$7(I)V

    return-void
.end method

.method public loadAllLayoutIds()[I
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [I

    sget v1, Lcom/autosdk/settings/R$layout;->fragment_setting_navi:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v2, Lcom/autosdk/settings/R$layout;->fragment_setting_navi_1_2:I

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    const/4 v3, -0x1

    aput v3, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v2, Lcom/autosdk/settings/R$layout;->fragment_setting_navi_1_2_port:I

    const/4 v4, 0x5

    aput v2, v0, v4

    const/4 v2, 0x6

    aput v3, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method public synthetic m0(ILcom/autonavi/skin/view/SkinTextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autosdk/settings/view/SettingNaviView;->lambda$updateViewDarkLightModeAnimation$8(ILcom/autonavi/skin/view/SkinTextView;)V

    return-void
.end method

.method public synthetic n0(Lcom/autonavi/skin/view/SkinTextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->lambda$updateViewSivAnimation$1(Lcom/autonavi/skin/view/SkinTextView;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/autosdk/settings/view/BaseSettingView;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1f41

    if-ne p1, p2, :cond_0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf/h/c/n0/f1;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lf/h/r/e/w0;->W0()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->handleClusterLaneClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_cluster_skip

    return-void

    :cond_cluster_skip
    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->handleCarModelClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_carmodel_skip

    return-void

    :cond_carmodel_skip
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBuildingSwitchId:I

    if-eqz v0, :cond_building_skip

    if-ne p1, v0, :cond_building_skip

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnSwitchView;

    if-eqz v0, :cond_building_skip

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomBtnSwitchView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomBtnSwitchView;->setSelected(Z)V

    invoke-direct {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setBuildingShow(Z)V

    invoke-direct {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->applyBuilding(Z)V

    return-void

    :cond_building_skip
    iget v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mWeatherSwitchId:I

    if-eqz v0, :cond_weather_skip

    if-ne p1, v0, :cond_weather_skip

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomBtnSwitchView;

    if-eqz v0, :cond_weather_skip

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomBtnSwitchView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomBtnSwitchView;->setSelected(Z)V

    invoke-direct {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setWeatherEnabled(Z)V

    invoke-static {v1}, Lcom/byd/weather/DynamicWeather;->setEnabled(Z)V

    return-void

    :cond_weather_skip
    iget v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mMockGpsSwitchId:I

    if-eqz v0, :cond_mockgps_skip

    if-ne p1, v0, :cond_mockgps_skip

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/BaseSettingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_mockgps_skip

    invoke-static {v0}, Lcom/byd/mockgps/MockGpsUi;->onSwitchClick(Landroid/view/View;)V

    return-void

    :cond_mockgps_skip
    sget v0, Lcom/autosdk/settings/R$id;->setting_btnc_avoid_theme:I

    const-string v1, "SettingNaviView"

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u70b9\u51fb\u907f\u5f00\u9650\u884c\u80cc\u666f\u6761"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lf/h/r/e/w0;->v0()V

    :cond_0
    return-void

    :cond_1
    sget v0, Lcom/autosdk/settings/R$id;->stv_radio1:I

    const/4 v3, 0x1

    if-ne p1, v0, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "2D\u8f66\u5934\u5411\u4e0a"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v3}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewSivAnimation(IZ)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lf/h/r/e/w0;->M0()V

    :cond_2
    return-void

    :cond_3
    sget v0, Lcom/autosdk/settings/R$id;->stv_radio2:I

    if-ne p1, v0, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "2D\u6b63\u5317\u5411\u4e0a"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewSivAnimation(IZ)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lf/h/r/e/w0;->O0()V

    :cond_4
    return-void

    :cond_5
    sget v0, Lcom/autosdk/settings/R$id;->stv_radio3:I

    const/4 v4, 0x2

    if-ne p1, v0, :cond_7

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, " 3D\u8f66\u5934\u5411\u4e0a"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v3}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewSivAnimation(IZ)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lf/h/r/e/w0;->N0()V

    :cond_6
    return-void

    :cond_7
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_cbtnsv_suspended_window:I

    if-ne p1, v0, :cond_9

    new-array v0, v2, [Ljava/lang/Object;

    const-string v5, "\u60ac\u6d6e\u7a97\u5f00\u5173"

    invoke-static {v1, v5, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz v0, :cond_9

    iget-object v5, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviCbtnsvSuspendedWindow:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    goto :goto_0

    :cond_8
    move v5, v2

    :goto_0
    invoke-virtual {v0, v5}, Lf/h/r/e/w0;->P0(Z)V

    :cond_9
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_bcv_avoid_jan:I

    if-ne p1, v0, :cond_b

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u8eb2\u907f\u62e5\u5835"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lf/h/r/e/w0;->u0(Z)I

    move-result p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->refreshPreference(I)V

    :cond_a
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->syncRoutePrefer2Copilot()V

    goto/16 :goto_b

    :cond_b
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_bcv_avoid_charge:I

    if-ne p1, v0, :cond_c

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u907f\u514d\u6536\u8d39"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lf/h/r/e/w0;->s0(Z)I

    move-result p1

    goto :goto_1

    :cond_c
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_bcv_avoid_highway:I

    if-ne p1, v0, :cond_d

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u4e0d\u8d70\u9ad8\u901f"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lf/h/r/e/w0;->t0(Z)I

    move-result p1

    goto :goto_1

    :cond_d
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_bcv_using_highway:I

    if-ne p1, v0, :cond_e

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u9ad8\u901f\u4f18\u5148"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lf/h/r/e/w0;->Q0(Z)I

    move-result p1

    goto :goto_1

    :cond_e
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_bcv_big_road:I

    if-ne p1, v0, :cond_f

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u5927\u8def\u4f18\u5148"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lf/h/r/e/w0;->w0(Z)I

    move-result p1

    goto :goto_1

    :cond_f
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_bcv_fastest:I

    if-ne p1, v0, :cond_10

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u901f\u5ea6\u6700\u5feb"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lf/h/r/e/w0;->E0(Z)I

    move-result p1

    goto/16 :goto_1

    :cond_10
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_recommond_route:I

    if-ne p1, v0, :cond_11

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u667a\u80fd\u63a8\u8350"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingBtnNaviRecommend:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingBtnNaviRecommend:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lf/h/r/e/w0;->J0(Z)I

    move-result p1

    goto/16 :goto_1

    :cond_11
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_btnsw_limit:I

    if-ne p1, v0, :cond_16

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u907f\u5f00\u9650\u884c"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewAvoidLimit(I)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object p1

    sget-object v0, Lcom/autosdk/bussiness/settings/SettingMethod;->SAVE:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {p1, v2, v0}, Lf/h/c/j0/l0;->setConfigKeyAvoidLimit(ILcom/autosdk/bussiness/settings/SettingMethod;)I

    iget-object p1, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-static {}, Lf/h/c/a0;->a()Lf/h/c/a0;

    move-result-object p1

    iget-object v0, p0, Lcom/autosdk/settings/view/BaseUIView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/settings/R$string;->settings_other_network_error_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/h/c/a0;->l(Ljava/lang/String;)V

    :cond_12
    return-void

    :cond_13
    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/l0;->getConfigKeyPlateNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/l0;->getConfigKeyPlateNumber()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_14

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/l0;->getConfigKeyPlateNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/h/r/e/w0;->R0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_2

    :cond_14
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNavibtnswLimit:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewAvoidLimit(I)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    sget-object v1, Lcom/autosdk/bussiness/settings/SettingMethod;->SAVE:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {v0, p1, v1}, Lf/h/c/j0/l0;->setConfigKeyAvoidLimit(ILcom/autosdk/bussiness/settings/SettingMethod;)I

    goto/16 :goto_b

    :cond_15
    :goto_2
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lf/h/r/e/w0;->X()V

    goto/16 :goto_b

    :cond_16
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_image_platenumbergreen:I

    if-ne p1, v0, :cond_17

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u7eff\u724c\u6309\u94ae"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    :goto_3
    invoke-virtual {p1}, Lf/h/r/e/w0;->I0()V

    goto/16 :goto_b

    :cond_17
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_platenumberblue:I

    if-ne p1, v0, :cond_18

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u84dd\u724c\u6309\u94ae"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    goto :goto_3

    :cond_18
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_traffic:I

    if-ne p1, v0, :cond_1a

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u8def\u51b5\u6982\u89c8\u6a21\u5f0f ---\u8def\u51b5\u6761"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autonavi/skin/ColorModeGlobal;->getInstance()Lcom/autonavi/skin/ColorModeGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/skin/ColorModeGlobal;->isColorOn()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    goto :goto_4

    :cond_19
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    :goto_4
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    new-array p1, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviTrafficTv:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v0, p1, v3

    invoke-virtual {p0, v3, p1}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    new-array p1, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviSmallMapTv:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v0, p1, v3

    invoke-virtual {p0, v2, p1}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lf/h/r/e/w0;->H0()V

    goto/16 :goto_b

    :cond_1a
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_smallmap:I

    if-ne p1, v0, :cond_1c

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u8def\u51b5\u6982\u89c8\u6a21\u5f0f ---\u5c0f\u5730\u56fe"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autonavi/skin/ColorModeGlobal;->getInstance()Lcom/autonavi/skin/ColorModeGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/skin/ColorModeGlobal;->isColorOn()Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    goto :goto_5

    :cond_1b
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    :goto_5
    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    new-array p1, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviSmallMapTv:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v0, p1, v3

    invoke-virtual {p0, v3, p1}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    new-array p1, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviTrafficTv:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v0, p1, v3

    invoke-virtual {p0, v2, p1}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lf/h/r/e/w0;->G0()V

    goto/16 :goto_b

    :cond_1c
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_limit_weight:I

    if-ne p1, v0, :cond_1e

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/k0;->getConfigKeyPickupTruckAvoidWeightLimit()I

    move-result p1

    if-ne p1, v3, :cond_1d

    goto :goto_6

    :cond_1d
    move v2, v3

    :goto_6
    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    sget-object v0, Lcom/autosdk/bussiness/settings/SettingMethod;->SAVE:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {p1, v2, v0}, Lf/h/c/j0/k0;->setConfigKeyPickupTruckAvoidWeightLimit(ILcom/autosdk/bussiness/settings/SettingMethod;)V

    invoke-virtual {p0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewWeightAvoidLimit(I)V

    goto/16 :goto_b

    :cond_1e
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_pickup_truck_switch:I

    if-ne p1, v0, :cond_20

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/k0;->getConfigKeyPickupTruckNavi()I

    move-result p1

    if-ne p1, v3, :cond_1f

    goto :goto_7

    :cond_1f
    move v2, v3

    :goto_7
    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    sget-object v0, Lcom/autosdk/bussiness/settings/SettingMethod;->SAVE:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {p1, v2, v0}, Lf/h/c/j0/k0;->setConfigKeyPickupTruckNavi(ILcom/autosdk/bussiness/settings/SettingMethod;)V

    invoke-virtual {p0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewPickupTruckNavi(I)V

    goto/16 :goto_b

    :cond_20
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_btnsw_lane:I

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBtnLaneShow:Lcom/autonavi/view/custom/CustomBtnSwitchView;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/autonavi/view/custom/CustomBtnSwitchView;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v3

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v4, "select BtnLaneShow:{?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBtnLaneShow:Lcom/autonavi/view/custom/CustomBtnSwitchView;

    invoke-virtual {v0, p1}, Lcom/autonavi/view/custom/CustomBtnSwitchView;->setSelected(Z)V

    sget-object v0, Lf/k/l/g/a/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_21

    sget-boolean v1, Lf/k/l/g/a/b;->e:Z

    if-eqz v1, :cond_21

    move v2, v3

    :cond_21
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mLaneMsp:Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v2, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->laneOpen:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {v1, v2, p1}, Lcom/autosdk/common/storage/MapSharePreference;->j(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)V

    new-instance v1, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;

    invoke-direct {v1}, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iput v0, v1, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;->intValue:I

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v0

    const-string v2, "BydConfigKeyLaneOpen"

    invoke-virtual {v0, v2, v1}, Lf/h/c/j0/k0;->notifyByd(Ljava/lang/String;Lcom/autonavi/gbl/user/behavior/model/ConfigValue;)V

    if-eqz p1, :cond_22

    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object p1

    new-instance v0, Lf/k/l/g/a/a;

    invoke-direct {v0, v3}, Lf/k/l/g/a/a;-><init>(Z)V

    invoke-virtual {p1, v0}, Lo/d/a/c;->l(Ljava/lang/Object;)V

    :cond_22
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBtnLaneShow:Lcom/autonavi/view/custom/CustomBtnSwitchView;

    invoke-virtual {p1}, Lcom/autonavi/view/custom/CustomBtnSwitchView;->isSelected()Z

    move-result p1

    invoke-static {p1}, Lf/k/l/l/i;->c(Z)V

    goto/16 :goto_b

    :cond_23
    sget v0, Lcom/autosdk/settings/R$id;->setting_navi_connect_end_switch:I

    if-ne p1, v0, :cond_25

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u98de\u7ebf"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBtnFlyLine:Lcom/autonavi/view/custom/CustomBtnSwitchView;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/autonavi/view/custom/CustomBtnSwitchView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {p0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->updateFlyLineVisitSate(I)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    invoke-virtual {p1, v2}, Lf/h/c/j0/k0;->setBydConfigKeyFlyLineVisible(I)V

    goto :goto_8

    :cond_24
    invoke-virtual {p0, v3}, Lcom/autosdk/settings/view/SettingNaviView;->updateFlyLineVisitSate(I)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    invoke-virtual {p1, v3}, Lf/h/c/j0/k0;->setBydConfigKeyFlyLineVisible(I)V

    :goto_8
    invoke-static {}, Lo/d/a/c;->c()Lo/d/a/c;

    move-result-object p1

    const-string v0, "fly_line_visible_state_change"

    invoke-virtual {p1, v0}, Lo/d/a/c;->l(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_25
    sget v0, Lcom/autosdk/settings/R$id;->stv_radio_auto:I

    if-ne p1, v0, :cond_29

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u6df1\u6d45\u6a21\u5f0f---\u81ea\u52a8"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/k0;->d()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_26

    invoke-virtual {p1, v3}, Lf/h/r/e/w0;->S0(I)V

    :cond_26
    const/16 p1, 0x10

    goto :goto_9

    :cond_27
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_28

    invoke-virtual {p1, v2}, Lf/h/r/e/w0;->S0(I)V

    :cond_28
    const/16 p1, 0x64

    goto :goto_9

    :cond_29
    sget v0, Lcom/autosdk/settings/R$id;->stv_radio_light:I

    if-ne p1, v0, :cond_2b

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u6df1\u6d45\u6a21\u5f0f---\u6d45\u8272"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_2a

    invoke-virtual {p1, v4}, Lf/h/r/e/w0;->S0(I)V

    :cond_2a
    const/16 p1, 0x11

    :goto_9
    invoke-direct {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->setBydConfigKeyDayNightMode(I)V

    goto/16 :goto_b

    :cond_2b
    sget v0, Lcom/autosdk/settings/R$id;->stv_radio_dark:I

    if-ne p1, v0, :cond_2d

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u6df1\u6d45\u6a21\u5f0f---\u6df1\u8272"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_2c

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lf/h/r/e/w0;->S0(I)V

    :cond_2c
    const/16 p1, 0x12

    goto :goto_9

    :cond_2d
    sget v0, Lcom/autosdk/settings/R$id;->settings_map_map_text_size_standard:I

    if-ne p1, v0, :cond_2e

    invoke-virtual {p0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewMapFontSize(I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lf/h/r/e/w0;->L0()V

    goto/16 :goto_b

    :cond_2e
    sget v0, Lcom/autosdk/settings/R$id;->settings_map_map_text_size_big:I

    if-ne p1, v0, :cond_2f

    invoke-virtual {p0, v3}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewMapFontSize(I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lf/h/r/e/w0;->x0()V

    goto/16 :goto_b

    :cond_2f
    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_collection_poin:I

    if-ne p1, v0, :cond_31

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u6536\u85cf\u70b9\u6807\u6ce8-\u5f00\u5173"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvCollectionPoin:Landroid/view/ViewGroup;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_30

    move v2, v3

    :cond_30
    xor-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewCollectionPoin(I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1, v2}, Lf/h/r/e/w0;->C0(Z)V

    goto/16 :goto_b

    :cond_31
    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_road_status:I

    if-ne p1, v0, :cond_33

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u8def\u51b5-\u5f00\u5173"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvRoadStatus:Landroid/view/ViewGroup;

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_32

    move v2, v3

    :cond_32
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1, v2}, Lf/h/r/e/w0;->K0(Z)V

    goto/16 :goto_b

    :cond_33
    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_scale:I

    if-ne p1, v0, :cond_35

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u81ea\u52a8\u6bd4\u4f8b\u5c3a-\u5f00\u5173"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvScale:Landroid/view/ViewGroup;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_34

    move v2, v3

    :cond_34
    xor-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewScale(I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1, v2}, Lf/h/r/e/w0;->r0(Z)V

    goto/16 :goto_b

    :cond_35
    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_color:I

    if-ne p1, v0, :cond_39

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u8272\u89c9\u8f85\u52a9\u6a21\u5f0f-\u5f00\u5173"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v0, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;->laneNavi:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;

    invoke-direct {p1, v0}, Lcom/autosdk/common/storage/MapSharePreference;-><init>(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;)V

    sget-object v0, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->laneNaviEnable:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    invoke-virtual {p1, v0, v2}, Lcom/autosdk/common/storage/MapSharePreference;->d(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)Z

    move-result p1

    invoke-static {}, Lf/k/r/f/b;->c()Z

    move-result v0

    if-nez v0, :cond_38

    if-eqz p1, :cond_36

    goto :goto_a

    :cond_36
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapColorStatus:Landroid/view/ViewGroup;

    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_37

    move v2, v3

    :cond_37
    xor-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewColor(I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1, v2}, Lf/h/r/e/w0;->D0(Z)V

    goto/16 :goto_b

    :cond_38
    :goto_a
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->showColorDialog()V

    goto/16 :goto_b

    :cond_39
    sget v0, Lcom/autosdk/settings/R$id;->setting_map_cbtnsv_scale_auto:I

    if-ne p1, v0, :cond_3b

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u5730\u56fe\u7f29\u653e\u6309\u94ae-\u5f00\u5173"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvScaleAuto:Landroid/view/ViewGroup;

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3a

    move v2, v3

    :cond_3a
    xor-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewScaleMax(I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1, v2}, Lf/h/r/e/w0;->F0(Z)V

    goto :goto_b

    :cond_3b
    sget v0, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_default:I

    if-ne p1, v0, :cond_3c

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u4e2a\u6027\u5316\u8f66\u6807-\u9ed8\u8ba4"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lf/h/r/f/f1;

    invoke-direct {p1, p0}, Lf/h/r/f/f1;-><init>(Lcom/autosdk/settings/view/SettingNaviView;)V

    invoke-static {p1}, Lcom/autosdk/bussiness/common/task/TaskManager;->post(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lf/h/r/e/w0;->z0()V

    goto :goto_b

    :cond_3c
    sget v0, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_vehicle:I

    if-ne p1, v0, :cond_3d

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u4e2a\u6027\u5316\u8f66\u6807-\u5ea7\u9a7e/\u6c7d\u8f66"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lf/h/r/f/c1;

    invoke-direct {p1, p0}, Lf/h/r/f/c1;-><init>(Lcom/autosdk/settings/view/SettingNaviView;)V

    invoke-static {p1}, Lcom/autosdk/bussiness/common/task/TaskManager;->post(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lf/h/r/e/w0;->B0()V

    goto :goto_b

    :cond_3d
    sget v0, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_airship:I

    if-ne p1, v0, :cond_3e

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u4e2a\u6027\u5316\u8f66\u6807-\u98de\u8239"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lf/h/r/f/d1;

    invoke-direct {p1, p0}, Lf/h/r/f/d1;-><init>(Lcom/autosdk/settings/view/SettingNaviView;)V

    invoke-static {p1}, Lcom/autosdk/bussiness/common/task/TaskManager;->post(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lf/h/r/e/w0;->y0()V

    goto :goto_b

    :cond_3e
    sget v0, Lcom/autosdk/settings/R$id;->setting_btnc_vehicle_logo_speed:I

    if-ne p1, v0, :cond_3f

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u4e2a\u6027\u5316\u8f66\u6807-\u8f66\u901f"

    invoke-static {v1, v0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lf/h/r/f/h1;

    invoke-direct {p1, p0}, Lf/h/r/f/h1;-><init>(Lcom/autosdk/settings/view/SettingNaviView;)V

    invoke-static {p1}, Lcom/autosdk/bussiness/common/task/TaskManager;->post(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPresenter:Lf/h/r/e/w0;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lf/h/r/e/w0;->A0()V

    :cond_3f
    :goto_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/autosdk/settings/view/BaseSettingView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->repeatLayout()V

    return-void
.end method

.method public onDestroyView()V
    .locals 7

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;

    invoke-virtual {v0}, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;->R()Lf/h/r/a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-boolean v1, v0, Lf/h/r/a;->b:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lf/h/r/a;->a()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->isNeedReroutePlanPref(Ljava/util/HashMap;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->getPlanPref()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf/h/c/j0/i0;->d(Ljava/lang/String;)V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v4

    sget-object v5, Lcom/autosdk/bussiness/settings/SettingMethod;->NOTIFIY_ADN_SAVE:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {v4, v1, v5}, Lf/h/c/j0/l0;->setConfigKeyPlanPref(Ljava/lang/String;Lcom/autosdk/bussiness/settings/SettingMethod;)I

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->isPreferChanged()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v1

    invoke-static {}, Lf/h/c/j0/i0;->c()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/autosdk/bussiness/settings/SettingMethod;->NOTIFIY:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {v1, v4, v6}, Lf/h/c/j0/l0;->setConfigKeyPlanPref(Ljava/lang/String;Lcom/autosdk/bussiness/settings/SettingMethod;)I

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->getPlanPref()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/autosdk/bussiness/track/event/value/settings/SetRoutePrefer;

    invoke-direct {v4}, Lcom/autosdk/bussiness/track/event/value/settings/SetRoutePrefer;-><init>()V

    invoke-static {v1}, Lf/h/c/j0/i0;->a(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x9

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_6
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_7
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_8
    move v1, v5

    goto :goto_1

    :pswitch_9
    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Lcom/autosdk/bussiness/track/event/value/settings/SetRoutePrefer;->setRoutetype(I)V

    invoke-static {}, Lcom/autosdk/bussiness/track/MapTrackUtil;->getInstance()Lcom/autosdk/bussiness/track/MapTrackUtil;

    move-result-object v1

    const-string v6, "set_route_prefer"

    invoke-virtual {v1, v6, v4}, Lcom/autosdk/bussiness/track/MapTrackUtil;->sendBehaviorEvent(Ljava/lang/String;Ljava/lang/Object;)I

    move v1, v3

    :cond_3
    new-array v4, v3, [Ljava/lang/Object;

    iget-boolean v6, v0, Lf/h/r/a;->e:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v2

    const-string v2, "TAG"

    const-string v6, "mSettingNaviBtnSwLimit = {?}"

    invoke-static {v2, v6, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNavibtnswLimit:Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    iget-boolean v4, v0, Lf/h/r/a;->e:Z

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v2

    if-eq v4, v2, :cond_5

    if-nez v1, :cond_4

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v2

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v4

    invoke-virtual {v4}, Lf/h/c/j0/l0;->getConfigKeyAvoidLimit()I

    move-result v4

    sget-object v6, Lcom/autosdk/bussiness/settings/SettingMethod;->NOTIFIY:Lcom/autosdk/bussiness/settings/SettingMethod;

    invoke-virtual {v2, v4, v6}, Lf/h/c/j0/l0;->setConfigKeyAvoidLimit(ILcom/autosdk/bussiness/settings/SettingMethod;)I

    :cond_4
    new-instance v2, Lcom/autosdk/bussiness/track/event/value/settings/SettingsOnOff;

    invoke-direct {v2}, Lcom/autosdk/bussiness/track/event/value/settings/SettingsOnOff;-><init>()V

    iget-object v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNavibtnswLimit:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/autosdk/bussiness/track/event/value/settings/SettingsOnOff;->setItem(I)V

    invoke-static {}, Lcom/autosdk/bussiness/track/MapTrackUtil;->getInstance()Lcom/autosdk/bussiness/track/MapTrackUtil;

    move-result-object v4

    const-string v6, "set_avoid_limit_drive"

    invoke-virtual {v4, v6, v2}, Lcom/autosdk/bussiness/track/MapTrackUtil;->sendBehaviorEvent(Ljava/lang/String;Ljava/lang/Object;)I

    :cond_5
    invoke-static {}, Lf/k/v/b;->a()I

    move-result v2

    if-ne v2, v5, :cond_9

    invoke-static {}, Lf/h/c/n0/f1;->j()I

    move-result v2

    if-ne v2, v5, :cond_9

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviPickupTruckSwitch:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-boolean v4, v0, Lf/h/r/a;->g:Z

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eq v4, v2, :cond_6

    if-nez v1, :cond_6

    new-instance v1, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;

    invoke-direct {v1}, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;-><init>()V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v2

    invoke-virtual {v2}, Lf/h/c/j0/k0;->getConfigKeyPickupTruckNavi()I

    move-result v2

    iput v2, v1, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;->intValue:I

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v2

    const-string v4, "BydConfigKeyPickupTruckNavi"

    invoke-virtual {v2, v4, v1}, Lf/h/c/j0/k0;->notifyByd(Ljava/lang/String;Lcom/autonavi/gbl/user/behavior/model/ConfigValue;)V

    move v1, v3

    :cond_6
    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v2

    invoke-virtual {v2}, Lf/h/c/j0/k0;->getConfigKeyPickupTruckNavi()I

    move-result v2

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviLimitWeight:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-boolean v0, v0, Lf/h/r/a;->f:Z

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eq v0, v2, :cond_9

    if-nez v1, :cond_9

    new-instance v0, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;

    invoke-direct {v0}, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;-><init>()V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    invoke-virtual {v1}, Lf/h/c/j0/k0;->getConfigKeyPickupTruckAvoidWeightLimit()I

    move-result v1

    iput v1, v0, Lcom/autonavi/gbl/user/behavior/model/ConfigValue;->intValue:I

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object v1

    const-string v2, "BydConfigKeyPickupTruckAvoidWeightLimit"

    invoke-virtual {v1, v2, v0}, Lf/h/c/j0/k0;->notifyByd(Ljava/lang/String;Lcom/autonavi/gbl/user/behavior/model/ConfigValue;)V

    goto :goto_4

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->destroyViews()V

    return-void

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->destroyViews()V

    return-void

    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->destroyViews()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onIntentUpdate(Lcom/autosdk/framework/fragmentcontainer/FragmentIntent;)V
    .locals 0

    return-void
.end method

.method public onNightModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onReceiveRecoverDefaultSettingEvent(Lf/h/h/j0;)V
    .locals 3
    .annotation runtime Lo/d/a/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SettingNaviView"

    const-string v2, "onReceiveRecoverDefaultSettingEvent"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lf/h/h/j0;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "recover_default_setting"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->initViewsStatus()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onWidgetDestroy()V
    .locals 0

    return-void
.end method

.method public onWidgetPause()V
    .locals 0

    return-void
.end method

.method public onWidgetResume()V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->applyCarModelSelection()V

    return-void
.end method

.method public onWidgetResumed()V
    .locals 0

    return-void
.end method

.method public onWidgetStop()V
    .locals 0

    return-void
.end method

.method public bridge synthetic playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V
    .locals 0

    invoke-super {p0, p1}, Lf/h/i/d/f0;->playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    return-void
.end method

.method public refreshPreference(I)V
    .locals 10

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lf/h/c/j0/q0/b;->f(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNaviBcvAvoidJanIsSelect:Z

    const/16 v2, 0x9

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanText:Lcom/autonavi/skin/view/SkinTextView;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadImage:Lcom/autonavi/skin/view/SkinImageView;

    const/4 v7, 0x4

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadText:Lcom/autonavi/skin/view/SkinTextView;

    const/4 v8, 0x5

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v8, 0x6

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestImage:Lcom/autonavi/skin/view/SkinImageView;

    const/4 v8, 0x7

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestText:Lcom/autonavi/skin/view/SkinTextView;

    const/16 v8, 0x8

    aput-object v3, v2, v8

    invoke-virtual {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewEnabled(Z[Landroid/view/View;)V

    invoke-static {p1, v4}, Lf/h/c/j0/q0/b;->f(II)Z

    move-result v2

    new-array v3, v6, [Landroid/view/View;

    iget-object v9, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingBtnNaviRecommend:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v9, v3, v4

    iget-object v9, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviRecommendImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v9, v3, v1

    iget-object v9, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviRecommendText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v9, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    invoke-static {p1, v5}, Lf/h/c/j0/q0/b;->f(II)Z

    move-result v2

    new-array v3, v6, [Landroid/view/View;

    iget-object v9, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v9, v3, v4

    iget-object v9, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidChargeImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v9, v3, v1

    iget-object v9, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidChargeText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v9, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNaviBcvAvoidJanIsSelect:Z

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    new-array v3, v6, [Landroid/view/View;

    iget-object v9, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v9, v3, v4

    iget-object v9, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v9, v3, v1

    iget-object v9, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidJanText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v9, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    invoke-static {p1, v7}, Lf/h/c/j0/q0/b;->f(II)Z

    move-result v2

    new-array v3, v6, [Landroid/view/View;

    iget-object v7, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v7, v3, v4

    iget-object v7, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v7, v3, v1

    iget-object v7, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviAvoidHighwayText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v7, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    if-eqz v0, :cond_1

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lf/h/c/j0/q0/b;->f(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    new-array v3, v6, [Landroid/view/View;

    iget-object v7, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvBigRoad:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v7, v3, v4

    iget-object v7, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v7, v3, v1

    iget-object v7, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviBigRoadText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v7, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    invoke-static {p1, v0}, Lf/h/c/j0/q0/b;->f(II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    new-array v2, v6, [Landroid/view/View;

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvFastest:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviFastestText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    invoke-static {p1, v8}, Lf/h/c/j0/q0/b;->f(II)Z

    move-result p1

    new-array v0, v6, [Landroid/view/View;

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviUsingHighwayImage:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviUsingHighwayText:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v1, v0, v5

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    invoke-static {}, Lf/h/c/j0/q0/b;->e()Z

    move-result p1

    const-string v0, "8"

    const-string v1, "2"

    const-string v2, "4"

    const-string v3, "1"

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mTruckPlanPrefStatusMap:Ljava/util/HashMap;

    if-eqz p1, :cond_8

    iget-boolean v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNaviBcvAvoidJanIsSelect:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mTruckPlanPrefStatusMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mTruckPlanPrefStatusMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mTruckPlanPrefStatusMap:Ljava/util/HashMap;

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlanPrefStatusMap:Ljava/util/HashMap;

    if-eqz p1, :cond_8

    iget-boolean v4, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNaviBcvAvoidJanIsSelect:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlanPrefStatusMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlanPrefStatusMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlanPrefStatusMap:Ljava/util/HashMap;

    :goto_3
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mFragment:Lcom/autosdk/framework/fragmentcontainer/BaseFragment;

    if-eqz p1, :cond_a

    check-cast p1, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;

    invoke-virtual {p1}, Lcom/autosdk/settings/view/fragments/BaseSettingFragment;->R()Lf/h/r/a;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-boolean v0, p1, Lf/h/r/a;->a:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lf/h/c/j0/q0/b;->e()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mTruckPlanPrefStatusMap:Ljava/util/HashMap;

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlanPrefStatusMap:Ljava/util/HashMap;

    :goto_4
    invoke-virtual {p1, v0}, Lf/h/r/a;->b(Ljava/util/HashMap;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic removeClickListener(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lf/h/i/d/f0;->removeClickListener(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic removeLongClickListener(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lf/h/i/d/f0;->removeLongClickListener(Landroid/view/View;)V

    return-void
.end method

.method public repeatLayout()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SettingNaviView"

    const-string v2, "repeatLayout"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mContentView:Lcom/autonavi/auto/common/view/BaseScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mContentView:Lcom/autonavi/auto/common/view/BaseScrollView;

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->getLayoutView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mContentView:Lcom/autonavi/auto/common/view/BaseScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mPlateNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->initViews()V

    invoke-virtual {p0}, Lcom/autosdk/settings/view/SettingNaviView;->initViewsStatus()V

    return-void
.end method

.method public bridge varargs synthetic setMultiViewEnabled(Z[Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setMultiViewEnabled(Z[Landroid/view/View;)V

    return-void
.end method

.method public bridge varargs synthetic setMultiViewSelected(Z[Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setMultiViewSelected(Z[Landroid/view/View;)V

    return-void
.end method

.method public bridge varargs synthetic setMultiViewVisibility(I[Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setMultiViewVisibility(I[Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setOnClickListener(ILandroid/view/View$OnClickListener;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setOnClickListener(ILandroid/view/View$OnClickListener;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setOnScrollChangeListener(Landroid/view/View;Landroid/view/View$OnScrollChangeListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setOnScrollChangeListener(Landroid/view/View;Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method public bridge synthetic setViewActivated(Landroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setViewActivated(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic setViewEnabled(Landroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lf/h/i/d/f0;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    return-void
.end method

.method public bridge synthetic setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lf/h/i/d/f0;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    return-void
.end method

.method public bridge synthetic setViewSelected(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setViewSelected(IZ)V

    return-void
.end method

.method public bridge synthetic setViewSelected(Landroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public bridge synthetic setViewVisibility(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setViewVisibility(II)V

    return-void
.end method

.method public bridge synthetic setViewVisibility(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->setViewVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic supportMode()Z
    .locals 1

    invoke-super {p0}, Lf/h/i/d/f0;->supportMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updateConcatViewText(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->updateConcatViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic updateConcatViewText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->updateConcatViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateFlyLineVisitSate(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    invoke-static {}, Lf/h/c/n0/l2;->k()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "SettingNaviView"

    const-string v0, "updateFlyLineVisitSate:value :{?},isShowFlyLine:{?} locale={?}"

    invoke-static {p1, v0, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mTextFlyLine:Lcom/autonavi/skin/view/SkinTextView;

    if-eqz v2, :cond_1

    sget v0, Lcom/autosdk/settings/R$string;->settings_navi_start_connect_end_open:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/autosdk/settings/R$string;->settings_navi_start_connect_end_close:I

    :goto_1
    invoke-static {v0}, Lf/h/c/n0/l2;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mBtnFlyLine:Lcom/autonavi/view/custom/CustomBtnSwitchView;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public updatePlanPrefViewFromVoice(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvUsingHighway:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidCharge:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviBcvAvoidJan:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    invoke-static {p1}, Lf/h/c/j0/q0/b;->c(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->refreshPreference(I)V

    return-void
.end method

.method public updateView()V
    .locals 1

    invoke-super {p0}, Lcom/autosdk/settings/view/BaseSettingView;->updateView()V

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/l0;->getConfigKeyAvoidLimit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewAvoidLimit(I)V

    return-void
.end method

.method public bridge synthetic updateView(Ljava/lang/Object;Ljava/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Consumer<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->updateView(Ljava/lang/Object;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public updateViewAvoidLimit(I)V
    .locals 3

    invoke-static {}, Lf/h/c/j0/l0;->b()Lf/h/c/j0/l0;

    move-result-object v0

    invoke-virtual {v0}, Lf/h/c/j0/l0;->getConfigKeyPlateNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateNumberView(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNavibtnswLimit:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-static {}, Lf/h/c/n0/p2;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v2, 0x3ee66666    # 0.45f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_1
    invoke-direct {p0}, Lcom/autosdk/settings/view/SettingNaviView;->setPlateNumberBg()V

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNavibtnswLimit:Landroid/view/ViewGroup;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNavibtnswLimit:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    :cond_4
    return-void
.end method

.method public bridge synthetic updateViewById(ILjava/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Ljava/util/function/Consumer<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->updateViewById(ILjava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public updateViewCarID(I)V
    .locals 4

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoDefault:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoVehicle:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoAirship:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoSpeed:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isRPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoDefault:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$raw;->icon_light_navigation_chebiao_normal_unselected:I

    sget v3, Lcom/autosdk/settings/R$raw;->icon_dark_navigation_chebiao_normal_unselected:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoDefault:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$raw;->icon_light_navigation_chebiao_qiche_unselected:I

    sget v3, Lcom/autosdk/settings/R$raw;->icon_dark_navigation_chebiao_qiche_unselected:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoAirship:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$raw;->icon_light_navigation_chebiao_feichuan_unselected:I

    sget v3, Lcom/autosdk/settings/R$raw;->icon_dark_navigation_chebiao_feichuan_unselected:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoAirship:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$raw;->icon_light_navigation_chebiao_chesu_unselected:I

    sget v3, Lcom/autosdk/settings/R$raw;->icon_dark_navigation_chebiao_chesu_unselected:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoDefault:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->byd_custom_setting_default_logo_day_bg_selector:I

    sget v3, Lcom/autosdk/settings/R$drawable;->byd_custom_setting_default_logo_night_bg_selector:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoDefault:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->byd_custom_setting_car_logo_day_bg_selector:I

    sget v3, Lcom/autosdk/settings/R$drawable;->byd_custom_setting_car_logo_night_bg_selector:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoAirship:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->byd_custom_setting_airship_logo_day_bg_selector:I

    sget v3, Lcom/autosdk/settings/R$drawable;->byd_custom_setting_airship_logo_night_bg_selector:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoAirship:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v2, Lcom/autosdk/settings/R$drawable;->byd_custom_setting_speed_logo_day_bg_selector:I

    sget v3, Lcom/autosdk/settings/R$drawable;->byd_custom_setting_speed_logo_night_bg_selector:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieImageResource(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    :goto_0
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->clearViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoAirship:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoDefault:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isUIPlatformized()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoSpeed:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v1, Lcom/autosdk/settings/R$raw;->icon_light_navigation_chebiao_chesu:I

    sget v2, Lcom/autosdk/settings/R$raw;->icon_dark_navigation_chebiao_chesu:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoSpeed:Lcom/autonavi/skin/view/SkinTextView;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoAirship:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoAirship:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v1, Lcom/autosdk/settings/R$raw;->icon_light_navigation_chebiao_feichuan:I

    sget v2, Lcom/autosdk/settings/R$raw;->icon_dark_navigation_chebiao_feichuan:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoAirship:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoAirship:Lcom/autonavi/skin/view/SkinTextView;

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoVehicle:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v1, Lcom/autosdk/settings/R$raw;->icon_light_navigation_chebiao_qiche:I

    sget v2, Lcom/autosdk/settings/R$raw;->icon_dark_navigation_chebiao_qiche:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoVehicle:Lcom/autonavi/skin/view/SkinTextView;

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingBtncVehicleLogoDefault:Lcom/autonavi/view/custom/CustomBtnCheckbox1View;

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoDefault:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    sget v1, Lcom/autosdk/settings/R$raw;->icon_light_navigation_chebiao_normal:I

    sget v2, Lcom/autosdk/settings/R$raw;->icon_dark_navigation_chebiao_normal:I

    invoke-virtual {p0, p1, v1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewLottieBackground(Lcom/autonavi/skin/view/SkinLottieAnimationView;II)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapImgVehicleLogoDefault:Lcom/autonavi/skin/view/SkinLottieAnimationView;

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->playViewAnimation(Lcom/autonavi/skin/view/SkinLottieAnimationView;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvVehicleLogoDefault:Lcom/autonavi/skin/view/SkinTextView;

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    :goto_3
    return-void
.end method

.method public updateViewCollectionPoin(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvCollectionPoin:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvCollectionPoin:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateViewColor(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapColorStatus:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapColorStatus:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateViewDarkLightModeAnimation(IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightModeAnimationIsEnd:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDark:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnLight:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightAuto:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDark:Lcom/autonavi/skin/view/SkinTextView;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDark:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnLight:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightAuto:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnLight:Lcom/autonavi/skin/view/SkinTextView;

    goto :goto_0

    :cond_0
    :pswitch_2
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDark:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnLight:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightAuto:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightAuto:Lcom/autonavi/skin/view/SkinTextView;

    :goto_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mDarkLightModeAnimationIsEnd:Z

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightModeAnimation:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingMapBtnDarkLightModeAnimation:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_3

    new-instance p2, Lf/h/r/f/a1;

    invoke-direct {p2, p0, p1, v0}, Lf/h/r/f/a1;-><init>(Lcom/autosdk/settings/view/SettingNaviView;ILcom/autonavi/skin/view/SkinTextView;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic updateViewEnabled(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->updateViewEnabled(IZ)V

    return-void
.end method

.method public bridge synthetic updateViewEnabled(Landroid/view/View;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->updateViewEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public updateViewMapFontSize(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeStandard:Lcom/autonavi/skin/view/SkinImageView;

    invoke-direct {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeStandardTv:Lcom/autonavi/skin/view/SkinTextView;

    invoke-direct {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeBig:Lcom/autonavi/skin/view/SkinImageView;

    invoke-direct {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeBigTv:Lcom/autonavi/skin/view/SkinTextView;

    invoke-direct {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeStandard:Lcom/autonavi/skin/view/SkinImageView;

    invoke-direct {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeStandardTv:Lcom/autonavi/skin/view/SkinTextView;

    invoke-direct {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeBig:Lcom/autonavi/skin/view/SkinImageView;

    invoke-direct {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingsMapMapTextSizeBigTv:Lcom/autonavi/skin/view/SkinTextView;

    invoke-direct {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateViewPickupTruckNavi(I)V
    .locals 3

    invoke-static {}, Lf/k/v/b;->a()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-ne v0, v1, :cond_3

    invoke-static {}, Lf/h/c/n0/f1;->j()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupPickupTruck:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    invoke-static {}, Lf/h/c/j0/q0/b;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autosdk/settings/view/SettingNaviView;->refreshPreference(I)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupBigRoad:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupFastest:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupLimitWeight:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviTvPickupTruckTips:Landroid/widget/TextView;

    sget v0, Lcom/autosdk/settings/R$string;->settings_navi_pickup_truck_off_tips:I

    invoke-static {v0}, Lf/h/c/n0/l2;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviPickupTruckSwitch:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupBigRoad:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupFastest:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupLimitWeight:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviTvPickupTruckTips:Landroid/widget/TextView;

    sget v1, Lcom/autosdk/settings/R$string;->settings_navi_pickup_truck_tips:I

    invoke-static {v1}, Lf/h/c/n0/l2;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviPickupTruckSwitch:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    invoke-static {}, Lf/h/c/j0/k0;->b()Lf/h/c/j0/k0;

    move-result-object p1

    invoke-virtual {p1}, Lf/h/c/j0/k0;->getConfigKeyPickupTruckAvoidWeightLimit()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewWeightAvoidLimit(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->groupPickupTruck:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public updateViewRoadStatus(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvRoadStatus:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvRoadStatus:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateViewScale(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lf/h/c/n0/l2;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SettingNaviView"

    const-string v4, "[updateViewScale] locale = {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvScale:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvScaleTv:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/settings/R$string;->settings_map_map_scale_tv_off:I

    :goto_0
    invoke-static {v0}, Lf/h/c/n0/l2;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvScale:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvScaleTv:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/settings/R$string;->settings_map_map_scale_tv_on:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateViewScaleMax(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lf/h/c/n0/l2;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SettingNaviView"

    const-string v4, "[updateViewScaleMax] locale = {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvScaleAuto:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvScaleTvAuto:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/settings/R$string;->settings_map_max_scale_tv_off:I

    :goto_0
    invoke-static {v0}, Lf/h/c/n0/l2;->o(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapCbtnsvScaleAuto:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingMapTvScaleTvAuto:Lcom/autonavi/skin/view/SkinTextView;

    sget v0, Lcom/autosdk/settings/R$string;->settings_map_max_scale_tv_on:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateViewSivAnimation(IZ)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SettingNaviView"

    const-string v4, "\u5730\u56fe\u89c6\u89d2 MapviewMode : {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSivAnimationIsEnd:Z

    if-eqz v1, :cond_5

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCarHeadUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNorthUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->m3DUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCarHeadUpView:Lcom/autonavi/skin/view/SkinTextView;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCarHeadUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNorthUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->m3DUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNorthUpView:Lcom/autonavi/skin/view/SkinTextView;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mCarHeadUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mNorthUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, p1, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->m3DUpView:Lcom/autonavi/skin/view/SkinTextView;

    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->m3DUpView:Lcom/autonavi/skin/view/SkinTextView;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p2, :cond_4

    if-eqz p1, :cond_4

    iput-boolean v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSivAnimationIsEnd:Z

    iget-object p2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSivAnimation:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2, v3}, Lcom/autosdk/settings/view/SettingNaviView;->setViewVisibility(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSivAnimation:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_3
    return-void

    :cond_4
    if-eqz p1, :cond_5

    new-instance p2, Lf/h/r/f/z0;

    invoke-direct {p2, p0, p1}, Lf/h/r/f/z0;-><init>(Lcom/autosdk/settings/view/SettingNaviView;Lcom/autonavi/skin/view/SkinTextView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method public updateViewSuspendedWindow(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviCbtnsvSuspendedWindow:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviCbtnsvSuspendedWindow:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic updateViewText(ILjava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->updateViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic updateViewText(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->updateViewText(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lf/h/i/d/f0;->updateViewText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateViewTrafficMode(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    invoke-static {}, Lcom/autonavi/skin/ColorModeGlobal;->getInstance()Lcom/autonavi/skin/ColorModeGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/skin/ColorModeGlobal;->isColorOn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    new-array p1, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v3, p1, v2

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviSmallMapTv:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v3, p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    new-array p1, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviTrafficTv:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v0, p1, v1

    invoke-virtual {p0, v2, p1}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    goto :goto_2

    :cond_1
    if-ne v0, p1, :cond_3

    invoke-static {}, Lcom/autonavi/skin/ColorModeGlobal;->getInstance()Lcom/autonavi/skin/ColorModeGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/skin/ColorModeGlobal;->isColorOn()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, p1, v1}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    :goto_1
    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {p0, p1, v2}, Lcom/autosdk/settings/view/SettingNaviView;->setViewActivated(Landroid/view/View;Z)V

    new-array p1, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviSmallMap:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v3, p1, v2

    iget-object v3, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviSmallMapTv:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v3, p1, v1

    invoke-virtual {p0, v2, p1}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    new-array p1, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->mSettingNaviTraffic:Lcom/autonavi/skin/view/SkinImageView;

    aput-object v0, p1, v2

    iget-object v0, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviTrafficTv:Lcom/autonavi/skin/view/SkinTextView;

    aput-object v0, p1, v1

    invoke-virtual {p0, v1, p1}, Lcom/autosdk/settings/view/SettingNaviView;->setMultiViewSelected(Z[Landroid/view/View;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public updateViewWeightAvoidLimit(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviLimitWeight:Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/autosdk/settings/view/SettingNaviView;->setViewSelected(Landroid/view/View;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/autosdk/settings/view/SettingNaviView;->settingNaviLimitWeight:Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
