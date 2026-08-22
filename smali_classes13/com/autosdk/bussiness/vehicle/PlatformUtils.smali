.class public Lcom/autosdk/bussiness/vehicle/PlatformUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autosdk/bussiness/vehicle/PlatformUtils$Holder;
    }
.end annotation


# static fields
.field public static final CARRYING_PLATFORM_5R10V:I = 0x3

.field public static final CARRYING_PLATFORM_5R13V:I = 0x2

.field private static final DILINK_UI_7:Ljava/lang/String; = "7.0UI"

.field private static final DILINK_UI_R:Ljava/lang/String; = "RUI"

.field public static final FENCE_NOTIFY_ENTER_1:I = 0x1

.field public static final FENCE_NOTIFY_ENTER_2:I = 0x2

.field public static final FENCE_NOTIFY_ENTER_3:I = 0x3

.field public static final FENCE_NOTIFY_ENTER_4:I = 0x4

.field public static final FENCE_NOTIFY_EXIT_1:I = 0x8

.field public static final FENCE_NOTIFY_EXIT_2:I = 0x7

.field public static final FENCE_NOTIFY_EXIT_3:I = 0x6

.field public static final FENCE_NOTIFY_EXIT_4:I = 0x5

.field public static final FENCE_NOTIFY_INVALID:I = 0x0

.field private static KD_IS_EXIT_VIN:Ljava/lang/String; = null

.field private static KD_IS_VIP:Ljava/lang/String; = null

.field private static KD_IS_VIP_ENDING:Ljava/lang/String; = null

.field public static final NAVI_VOLUME_MUTE_CHANGED_ACTION:Ljava/lang/String; = "byd.media.NAVI_STREAM_MUTE_CHANGED_ACTION"

.field public static final PANO_START:Ljava/lang/String; = "sys.byd.pano_start"

.field public static final POWER_TYPE_EV:I = 0x1

.field public static final POWER_TYPE_FUEL:I = 0x0

.field public static final POWER_TYPE_HEV:I = 0x2

.field public static final SR_CONFIGURATION_EXIST:I = 0x1

.field public static final SR_CONFIGURATION_KEY:Ljava/lang/String; = "sr_map"

.field public static final SR_CONFIGURATION_NOT_EXIST:I = 0x2

.field public static final STATE_106_START:Ljava/lang/String; = "byd.scene.mode.state106"

.field public static STREAM_NAVI:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PlatformUtils"

.field public static final VEHICLE_TYPE_D9_MRE:I = 0x76

.field public static final VEHICLE_TYPE_D9_MRH:I = 0x77

.field public static final VEHICLE_TYPE_HANL_HC2E:I = 0xb0

.field public static final VEHICLE_TYPE_HANL_HC2E_25Q3:I = 0x17f

.field public static final VEHICLE_TYPE_HANL_HC2H:I = 0xb1

.field public static final VEHICLE_TYPE_HANL_HC2H_25Q3:I = 0x17e

.field public static final VEHICLE_TYPE_HAN_HCE:I = 0x174

.field public static final VEHICLE_TYPE_HAN_HCEGC:I = 0x108

.field public static final VEHICLE_TYPE_HAN_HCHGD:I = 0x175

.field public static final VEHICLE_TYPE_HAN_HCHPC:I = 0x107

.field public static final VEHICLE_TYPE_HB_EV_A:I = 0xd8

.field public static final VEHICLE_TYPE_HB_HXHW:I = 0x133

.field public static final VEHICLE_TYPE_HS_07_A_UK:I = 0x152

.field public static final VEHICLE_TYPE_HS_07_DMI_A:I = 0xe1

.field public static final VEHICLE_TYPE_HS_EV_07:I = 0x11e

.field public static final VEHICLE_TYPE_N7_SZE:I = 0xe5

.field public static final VEHICLE_TYPE_N9_SZE:I = 0xa9

.field public static final VEHICLE_TYPE_N9_SZH:I = 0xa8

.field public static final VEHICLE_TYPE_R1:I = 0x91

.field public static final VEHICLE_TYPE_R1_HU:I = 0x84

.field public static final VEHICLE_TYPE_R2:I = 0x92

.field public static final VEHICLE_TYPE_R2_HYBRID:I = 0xf5

.field public static final VEHICLE_TYPE_R3:I = 0x96

.field public static final VEHICLE_TYPE_SGHC:I = 0x14c

.field public static final VEHICLE_TYPE_SGHL:I = 0x115

.field public static final VEHICLE_TYPE_SN:I = 0xe8

.field public static final VEHICLE_TYPE_SONGL:I = 0x109

.field public static final VEHICLE_TYPE_SONGL_9E:I = 0x9e

.field public static final VEHICLE_TYPE_TANGL_SRE:I = 0xe0

.field public static final VEHICLE_TYPE_TANGL_SREE:I = 0x191

.field public static final VEHICLE_TYPE_TANGL_SRH:I = 0xdf

.field public static final VEHICLE_TYPE_TANGL_SRHE_SRHF:I = 0x190

.field public static final VEHICLE_TYPE_TANG_ST:I = 0x14d

.field public static final VEHICLE_TYPE_TANG_STHZB:I = 0x162

.field public static final VEHICLE_TYPE_TI_QZ:I = 0x11a

.field public static final VEHICLE_TYPE_XIA_MC:I = 0x182

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field public static final VOLUME_MUTE_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field private static hotfix_patch_in:Z = false

.field private static lastFenceSendStatus:I = -0x1

.field private static mDiLinkCode:Ljava/lang/String;

.field private static mDiLinkUIVersion:Ljava/lang/String;

.field private static mIsUIIntegrate:Ljava/lang/Boolean;

.field private static mIsUIPlatformized:Ljava/lang/Boolean;

.field private static mPlatform:Ljava/lang/String;


# instance fields
.field private batteryPower:D

.field private bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

.field private carTypeIdDenN9Hybrid:I

.field private carTypeIdHTEF25TwoHybrid:I

.field private carTypeIdHTEF25TwoPureElectric:I

.field private carTypeIdThreeHybrid:I

.field private carTypeIdThreePureElectric:I

.field private carTypeIdTwoHybrid:I

.field private carTypeIdTwoPureElectric:I

.field private fenceExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private isTaskScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private powerType:I

.field private valueQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isKD()Z

    const v0, 0xe

    sput v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->STREAM_NAVI:I

    const-string v0, "1"

    sput-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->KD_IS_VIP:Ljava/lang/String;

    const-string v0, "2"

    sput-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->KD_IS_VIP_ENDING:Ljava/lang/String;

    const-string v0, "4"

    sput-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->KD_IS_EXIT_VIN:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mIsUIPlatformized:Ljava/lang/Boolean;

    sput-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mIsUIIntegrate:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->batteryPower:D

    const/16 v0, 0xaa

    iput v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdTwoHybrid:I

    const/16 v0, 0xab

    iput v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdTwoPureElectric:I

    const/16 v0, 0xd4

    iput v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdThreeHybrid:I

    const/16 v0, 0xd3

    iput v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdThreePureElectric:I

    const/16 v0, 0xa8

    iput v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdDenN9Hybrid:I

    const/16 v0, 0x188

    iput v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdHTEF25TwoPureElectric:I

    const/16 v0, 0x18c

    iput v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdHTEF25TwoHybrid:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->fenceExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->valueQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isTaskScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->powerType:I

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    move-result-object v0

    iput-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/autosdk/bussiness/vehicle/PlatformUtils$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const-string v1, "PlatformUtils"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v4, "android.os.SystemProperties"

    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "get"

    invoke-virtual {p0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v2

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "Exception : {?}"

    invoke-static {v1, p0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "IllegalArgumentException : {?}"

    invoke-static {v1, p0, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private static getAppSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 3

    invoke-static {p0}, Lf/k/i/d/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "getAppSignature: e"

    invoke-static {v2, p0, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static declared-synchronized getCodeUnicode(Ljava/lang/String;)[B
    .locals 6

    const-class v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "PlatformUtils"

    const-string v2, "string is null!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v2, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v2, "PlatformUtils"

    const-string v3, "unicodes length is {?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static getDiLinkCode()D
    .locals 5

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\d+(\\.\\d+)?)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static getDiLinkCodeVer()Ljava/lang/String;
    .locals 9

    sget-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mDiLinkCode:Ljava/lang/String;

    invoke-static {v0}, Lf/k/i/d/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mDiLinkCode:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "-1.0"

    const/4 v3, 0x1

    const-string v4, "PlatformUtils"

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v6, "(\\d+(\\.\\d+)?)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    aget-object v0, v0, v5

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v6, v2

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v5

    const-string v8, "diLinkCode old {?}"

    invoke-static {v4, v8, v7}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v6, v2

    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v6, v0, v5

    const-string v1, "diLinkCode new {?}"

    invoke-static {v4, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    sput-object v6, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mDiLinkCode:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v6, v0, v5

    const-string v1, "[getDiLinkCode] Di link code: {?}"

    invoke-static {v4, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public static getDiLinkPlatform()F
    .locals 3

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "[0-9]+(\\.[0-9]+)?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static getDiLinkUIVersion()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mDiLinkUIVersion:Ljava/lang/String;

    invoke-static {v0}, Lf/k/i/d/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mDiLinkUIVersion:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-object v0, v0, v2

    sput-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mDiLinkUIVersion:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "PlatformUtils"

    const-string v3, "getDiLinkUIVersion: mDiLinkUIVersion == {?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "0.0UI"

    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils$Holder;->access$100()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    return-object v0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "PlatformUtils"

    const-string v4, "isPanoramaImageTop ret is start:{?}"

    invoke-static {v0, v4, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v4, "android.os.SystemProperties"

    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    :cond_0
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const-string v6, "getInt"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v2, v3

    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object p0, v2, v1

    invoke-virtual {v5, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const-string v2, "isPanoramaImageTop ret is deal:{?}"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v0, v2, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "isPanoramaImageTop is Exception:{?},defaultKey:{?}"

    invoke-static {v0, v5, p0, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object p0, v2

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const-string v2, "isPanoramaImageTop ret is end:{?}"

    invoke-static {v0, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    return p1
.end method

.method private static getPlatform(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lf/h/b/q/a0;

    invoke-direct {v0, p0, p1}, Lf/h/b/q/a0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "getPlatform"

    const-wide/32 v1, 0x186a0

    const-string p1, ""

    invoke-static {p0, v1, v2, p1, v0}, Lf/k/c/x/b1;->h(Ljava/lang/String;JLjava/lang/Object;Lh/a/d0/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getPlatformCode()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    #invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    #move-result-object v1

    #const-string v2, "ro.vehicle.type"

    #invoke-static {v1, v2}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #move-result-object v1
    const-string v1, "Di5.1_5.0UI"

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " CarInfoUtils --> getPlatformCode:error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "AppUtil"

    invoke-static {v3, v1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "unknown"

    :goto_0
    sput-object v1, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mPlatform:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "PlatformUtils"

    const-string v3, "[getPlatform] platform: {?}"

    invoke-static {v0, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p1
.end method

.method private getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p1
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-class v0, Ljava/lang/String;

    const-string v1, "getString: e"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v2

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v2

    const-string v5, ""

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string p1, "PlatformUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "---"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, v0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object p1, v0

    goto :goto_2

    :catch_3
    move-exception p0

    move-object p1, v0

    goto :goto_3

    :catch_4
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_5
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_6
    move-exception p0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_7
    move-exception p0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    move-object v0, p1

    :goto_5
    return-object v0
.end method

.method public static declared-synchronized getSystemVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-class v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    monitor-enter v0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "apps.setting.product.outswver"

    aput-object v6, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "ro.vehicle.type"

    invoke-static {p0, v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Di1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/hardware/bydauto/version/BYDAutoVersionDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/version/BYDAutoVersionDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/bydauto/version/BYDAutoVersionDevice;->getMcuVersion()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    :try_start_3
    const-string v3, "getSystemVersion: e"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v1

    :cond_0
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static is300Platform()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static is300PlatformDynasty()Z
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->is300Platform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDynasty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static is300PlatformYW()Z
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isRPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isYW()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public static isBPlatform()Z
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformUI()Z

    move-result v0

    return v0
.end method

.method public static isDenza()Z
    .locals 4

    sget-object v0, Lf/h/b/q/b0;->a:Lf/h/b/q/b0;

    const-string v1, "PlatformUtils"

    const-string v2, "unknown"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/WrapUtils;->noExcept(Ljava/lang/String;Ljava/lang/Object;ZLh/a/d0/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "brand:{?}"

    invoke-static {v1, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "denza"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDiLink5()Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PlatformUtils"

    const-string v4, "getDiLinkCode = {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDiLink5_1()Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PlatformUtils"

    const-string v4, "getDiLinkCode = {?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDiLinkUI7()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkUIVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7.0UI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDiLinkUIR()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkUIVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RUI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDynasty()Z
    .locals 4

    sget-object v0, Lf/h/b/q/m;->a:Lf/h/b/q/m;

    const-string v1, "PlatformUtils"

    const-string v2, "unknown"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/WrapUtils;->noExcept(Ljava/lang/String;Ljava/lang/Object;ZLh/a/d0/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "brand:{?}"

    invoke-static {v1, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "dynasty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isF()Z
    .locals 4

    sget-object v0, Lf/h/b/q/n;->a:Lf/h/b/q/n;

    const-string v1, "PlatformUtils"

    const-string v2, "unknown"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/WrapUtils;->noExcept(Ljava/lang/String;Ljava/lang/Object;ZLh/a/d0/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "brand:{?}"

    invoke-static {v1, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKD()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "kd"

    invoke-static {v0, v1}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->isTargetProject(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLauncherPlatform()Z
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformUI150()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformUI100()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformB()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformBPlus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isPlatformBMinus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOcean()Z
    .locals 4

    sget-object v0, Lf/h/b/q/s;->a:Lf/h/b/q/s;

    const-string v1, "PlatformUtils"

    const-string v2, "unknown"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/WrapUtils;->noExcept(Ljava/lang/String;Ljava/lang/Object;ZLh/a/d0/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "brand:{?}"

    invoke-static {v1, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "ocean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPlatformB()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Di150VCP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isPlatformBMinus()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Di100VCP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isPlatformBPlus()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Di300VCP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isPlatformUI()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isUIPlatformized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkUIVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7.0UI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkUIVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RUI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isPlatformUI100()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiLink100_7.0UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isPlatformUI150()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiLink150_7.0UI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isRPlatform()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->is300Platform()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isRealRPlatform()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSelfCarRPlatform()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getDiLinkCodeVer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSupportCarType()Z
    .locals 6

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "PlatformUtils"

    const-string v5, "getAutoType()={?}"

    invoke-static {v3, v5, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdTwoHybrid:I

    if-eq v0, v2, :cond_1

    iget v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdTwoPureElectric:I

    if-eq v0, v2, :cond_1

    iget v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdThreeHybrid:I

    if-eq v0, v2, :cond_1

    iget v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdThreePureElectric:I

    if-eq v0, v2, :cond_1

    iget v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdDenN9Hybrid:I

    if-eq v0, v2, :cond_1

    iget v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdHTEF25TwoPureElectric:I

    if-eq v0, v2, :cond_1

    iget v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdHTEF25TwoHybrid:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v4

    :cond_1
    :goto_0
    return v1
.end method

.method public static isSystemSigned()Z
    .locals 4

    const-string v0, "com.byd.autovoice"

    invoke-static {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "AppUtil"

    invoke-static {v3, v1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAppSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v1

    invoke-static {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAppSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isU8L()Z
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->is300Platform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isYW()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUIIntegrate()Z
    .locals 4

    sget-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mIsUIIntegrate:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lf/h/b/q/f0;->a:Lf/h/b/q/f0;

    const-string v2, "PlatformUtils"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lcom/autosdk/bussiness/common/utils/WrapUtils;->noExcept(Ljava/lang/String;Ljava/lang/Object;ZLh/a/d0/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mIsUIIntegrate:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static isUIPlatformized()Z
    .locals 4

    sget-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mIsUIPlatformized:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lf/h/b/q/y;->a:Lf/h/b/q/y;

    const-string v2, "PlatformUtils"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lcom/autosdk/bussiness/common/utils/WrapUtils;->noExcept(Ljava/lang/String;Ljava/lang/Object;ZLh/a/d0/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->mIsUIPlatformized:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static isYW()Z
    .locals 4

    sget-object v0, Lf/h/b/q/o;->a:Lf/h/b/q/o;

    const-string v1, "PlatformUtils"

    const-string v2, "unknown"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/WrapUtils;->noExcept(Ljava/lang/String;Ljava/lang/Object;ZLh/a/d0/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "brand:{?}"

    invoke-static {v1, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "yangwang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$getAutoType$0(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {p1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getAutoType()I

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PlatformUtils"

    const-string v2, "getAutoType:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$getPlatform$4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string p2, "android.os.SystemProperties"

    invoke-virtual {p0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "get"

    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$getPowerType$1(Lcom/byd/car/property/ICarPropertyManager;)Lcom/byd/datasource/feature/Response;
    .locals 1

    const-string v0, "power_type"

    invoke-interface {p0, v0}, Lcom/byd/car/property/ICarPropertyManager;->getProperty(Ljava/lang/String;)Lcom/byd/datasource/feature/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getPowerType$2(Lcom/byd/datasource/feature/Response;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/byd/datasource/feature/Response;->status:Lcom/byd/datasource/feature/Status;

    iget v0, v0, Lcom/byd/datasource/feature/Status;->code:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/byd/datasource/feature/Response;->result:Ljava/lang/Object;

    check-cast p0, Lcom/byd/car/property/CarPropertyValue;

    invoke-virtual {p0}, Lcom/byd/car/property/CarPropertyValue;->getIntValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getPowerType$3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "PlatformUtils"

    const-string v1, "getPowerType = {?}"

    invoke-static {p0, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$isDenza$20(Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-class v0, Lcom/byd/car/ICarInfoManager;

    invoke-static {p0, v0}, Lcom/byd/car/DiCar;->getCarManager(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byd/car/ICarInfoManager;

    invoke-interface {p0}, Lcom/byd/car/ICarInfoManager;->getBrand()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$isDynasty$18(Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-class v0, Lcom/byd/car/ICarInfoManager;

    invoke-static {p0, v0}, Lcom/byd/car/DiCar;->getCarManager(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byd/car/ICarInfoManager;

    invoke-interface {p0}, Lcom/byd/car/ICarInfoManager;->getBrand()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$isF$21(Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-class v0, Lcom/byd/car/ICarInfoManager;

    invoke-static {p0, v0}, Lcom/byd/car/DiCar;->getCarManager(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byd/car/ICarInfoManager;

    invoke-interface {p0}, Lcom/byd/car/ICarInfoManager;->getBrand()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$isOcean$19(Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-class v0, Lcom/byd/car/ICarInfoManager;

    invoke-static {p0, v0}, Lcom/byd/car/DiCar;->getCarManager(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byd/car/ICarInfoManager;

    invoke-interface {p0}, Lcom/byd/car/ICarInfoManager;->getBrand()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$isUIIntegrate$16(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "android.os.SystemProperties"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "getInt"

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "ro.byd.ui.integrate"

    aput-object v2, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string v1, "PlatformUtils"

    const-string v2, "isUIIntegrate: isIntegrate == {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$isUIPlatformized$15(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "android.os.SystemProperties"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "getInt"

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "ro.byd.ui.platformized"

    aput-object v2, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string v1, "PlatformUtils"

    const-string v2, "isUIPlatformized: isPlatform == {?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v4, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$isYW$17(Ljava/lang/Void;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-class v0, Lcom/byd/car/ICarInfoManager;

    invoke-static {p0, v0}, Lcom/byd/car/DiCar;->getCarManager(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byd/car/ICarInfoManager;

    invoke-interface {p0}, Lcom/byd/car/ICarInfoManager;->getBrand()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setCommonFenceStatus$14()V
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->valueQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v3}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSettingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;

    move-result-object v3

    sget v4, Landroid/hardware/bydauto/BYDAutoFeatureIds$Setting;->SETTING_ENTER_RELEVANT_BUSINESS_CIRCLE_SET:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;->setEventValue(II)V

    const-string v3, "[setCommonFenceStatus] send value={?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->valueQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isTaskScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "[setCommonFenceStatus] error"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->valueQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->valueQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isTaskScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    throw v0
.end method

.method public static synthetic lambda$setNavState$6(I)V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setNaviState(I)V

    return-void
.end method

.method private synthetic lambda$setNaviEtaArrivalTime$12(II)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->setEventValue(II)V

    return-void
.end method

.method private synthetic lambda$setNaviEtaArrivalTimeInterval$13(I)V
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->getStatisticMapPeriodInfor()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->setEventValue(II)V

    return-void
.end method

.method public static synthetic lambda$setNaviNextRoadName$7(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-static {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getCodeUnicode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setNaviNextRoadName([B)V

    return-void
.end method

.method public static synthetic lambda$setNaviNextTurnIconID$9(I)V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setNaviNextTurnIconID(I)V

    return-void
.end method

.method public static synthetic lambda$setNaviRouteRemainDist$10(I)V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setNaviRouteRemainDist(I)V

    return-void
.end method

.method private synthetic lambda$setNaviRoutrRemainTime$11(II)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->setEventValue(II)V

    return-void
.end method

.method public static synthetic lambda$setNaviSegRemainDist$8(I)V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setNaviSegRemainDist(I)V

    return-void
.end method

.method public static synthetic lambda$setRoadType$5(I)V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setRoadType(I)V

    return-void
.end method

.method private setLaneStates(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setLaneStates(Ljava/util/ArrayList;II)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->lambda$getAutoType$0(Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public addGearBoxManualModeLevelListener(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy$OnGearboxManualModeLevelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoGearboxProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;->addGearBoxManualModeLevelListener(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy$OnGearboxManualModeLevelListener;)V

    return-void
.end method

.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->lambda$setCommonFenceStatus$14()V

    return-void
.end method

.method public synthetic c(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->lambda$setNaviEtaArrivalTime$12(II)V

    return-void
.end method

.method public closeFenceExecutor()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PlatformUtils"

    const-string v2, "closeFenceExecutor"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->fenceExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public currentSpeed()D
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSpeed()Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;->currentSpeed()D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic d(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->lambda$setNaviEtaArrivalTimeInterval$13(I)V

    return-void
.end method

.method public synthetic e(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->lambda$setNaviRoutrRemainTime$11(II)V

    return-void
.end method

.method public declared-synchronized getAcControlMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoAcProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;->getAcControlMode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAcCycleMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoAcProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;->getAcCycleMode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAcStartState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoAcProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;->getAcStartState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAcWindMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoAcProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;->getAcWindMode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccelerateDeepness()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSpeedProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSpeedProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSpeedProxy;->getAccelerateDeepness()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAlarmBuzzleState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getAlarmBuzzleState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getArHudBitmapColor()I
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getArHudImgColorType()I

    move-result v2

    const-string v3, "getArHudBitmapColor colorType:{?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getArHudBitmapColor exception"

    invoke-static {v0, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getArHudBitmapFormat()I
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getArHudImgType()I

    move-result v2

    const-string v3, "getArHudBitmapFormat format:{?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getArHudBitmapFormat exception"

    invoke-static {v0, v3, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public declared-synchronized getAutoSystemState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getAutoSystemState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAutoType()I
    .locals 1

    const/16 v0, 0xb0

    return v0
.end method

.method public getAutoType2()I
    .locals 6

    new-instance v0, Lf/h/b/q/h0;

    invoke-direct {v0, p0}, Lf/h/b/q/h0;-><init>(Lcom/autosdk/bussiness/vehicle/PlatformUtils;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "getAutoType"

    const-wide/32 v4, 0x186a0

    invoke-static {v3, v4, v5, v2, v0}, Lf/k/c/x/b1;->h(Ljava/lang/String;JLjava/lang/Object;Lh/a/d0/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-static {v3}, Lf/k/c/x/b1;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PlatformUtils"

    const-string v3, "getAutoType failed"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAutoVIN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getAutoVIN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBYDAutoAcDevice()Landroid/hardware/bydauto/ac/BYDAutoAcDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/ac/BYDAutoAcDevice;

    return-object v0
.end method

.method public getBYDAutoAudioDevice()Landroid/hardware/bydauto/audio/BYDAutoAudioDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/audio/BYDAutoAudioDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/audio/BYDAutoAudioDevice;

    return-object v0
.end method

.method public getBYDAutoBodyworkDevice()Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    return-object v0
.end method

.method public getBYDAutoChargingDevice()Landroid/hardware/bydauto/charging/BYDAutoChargingDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/charging/BYDAutoChargingDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/charging/BYDAutoChargingDevice;

    return-object v0
.end method

.method public getBYDAutoDoorLockDevice()Landroid/hardware/bydauto/doorlock/BYDAutoDoorLockDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/doorlock/BYDAutoDoorLockDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/doorlock/BYDAutoDoorLockDevice;

    return-object v0
.end method

.method public getBYDAutoEnergyDevice()Landroid/hardware/bydauto/energy/BYDAutoEnergyDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/energy/BYDAutoEnergyDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/energy/BYDAutoEnergyDevice;

    return-object v0
.end method

.method public getBYDAutoEngineDevice()Landroid/hardware/bydauto/engine/BYDAutoEngineDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/engine/BYDAutoEngineDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/engine/BYDAutoEngineDevice;

    return-object v0
.end method

.method public getBYDAutoGearboxDevice()Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/gearbox/BYDAutoGearboxDevice;

    return-object v0
.end method

.method public getBYDAutoInstrumentDevice()Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/instrument/BYDAutoInstrumentDevice;

    return-object v0
.end method

.method public getBYDAutoPM2p5Device()Landroid/hardware/bydauto/pm2p5/BYDAutoPM2p5Device;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/pm2p5/BYDAutoPM2p5Device;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/pm2p5/BYDAutoPM2p5Device;

    return-object v0
.end method

.method public getBYDAutoSensorDevice()Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/sensor/BYDAutoSensorDevice;

    return-object v0
.end method

.method public getBYDAutoSettingDevice()Landroid/hardware/bydauto/setting/BYDAutoSettingDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/setting/BYDAutoSettingDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/setting/BYDAutoSettingDevice;

    return-object v0
.end method

.method public getBYDAutoSpeedDevice()Landroid/hardware/bydauto/speed/BYDAutoSpeedDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/speed/BYDAutoSpeedDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/speed/BYDAutoSpeedDevice;

    return-object v0
.end method

.method public getBYDAutoStatisticDevice()Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/statistic/BYDAutoStatisticDevice;

    return-object v0
.end method

.method public getBYDAutoTimeDevice()Landroid/hardware/bydauto/time/BYDAutoTimeDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/time/BYDAutoTimeDevice;

    return-object v0
.end method

.method public getBYDAutoTyreDevice()Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;
    .locals 2

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    const-class v1, Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDevice(Ljava/lang/Class;)Landroid/hardware/IBYDAutoDevice;

    move-result-object v0

    check-cast v0, Landroid/hardware/bydauto/tyre/BYDAutoTyreDevice;

    return-object v0
.end method

.method public declared-synchronized getBatteryPercentage()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getBatteryPercentage()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBatteryPowerValue()F
    .locals 14

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->batteryPower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PlatformUtils"

    const-string v4, "getBatteryPowerValue: IN batteryPower={?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->batteryPower:D

    const-wide/16 v6, 0x0

    cmpg-double v1, v4, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    if-ltz v1, :cond_0

    invoke-static {v4, v5, v8, v9}, Lcom/autosdk/bussiness/utils/FloatUtil;->isDoublesEqual(DD)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPowerType()I

    move-result v1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "getBatteryPowerValue: powerType={?}"

    invoke-static {v2, v5, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v1, v0, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v1

    invoke-static {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->isProxyReady(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoProxy;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getBatteryPowerHEV()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->batteryPower:D

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "getBatteryPowerValue: from bodyworkProxy batteryPowerHEV={?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoPowerProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoPowerProxy;

    move-result-object v1

    iget-object v4, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v4}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v4

    iget-object v5, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v5}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoGBProxy()Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoGBProxy;

    move-result-object v5

    invoke-static {v4}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->isProxyReady(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoProxy;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v10

    const-string v11, "kd"

    invoke-static {v10, v11}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->isTargetProject(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v5}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->isProxyReady(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoProxy;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v5}, Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoGBProxy;->getBatteryRemainPowerEV()D

    move-result-wide v10

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->isTargetProject(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->isProxyReady(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoProxy;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoPowerProxy;->getBatteryRemainPowerEV()D

    move-result-wide v10

    goto :goto_0

    :cond_4
    move-wide v10, v6

    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "getBatteryPowerValue: from powerProxy remainPowerEV={?}"

    invoke-static {v2, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getElecPercentageValue()D

    move-result-wide v4

    div-double/2addr v4, v8

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v1, v3

    const-string v12, "getBatteryPowerValue: from statisticProxy elecPercent={?}"

    invoke-static {v2, v12, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmpl-double v1, v10, v6

    if-ltz v1, :cond_7

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_7

    div-double v12, v10, v4

    iput-wide v12, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->batteryPower:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iput-wide v8, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->batteryPower:D

    :cond_6
    new-array v1, v0, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->batteryPower:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v4, "getBatteryPowerValue: calculate batteryPowerEV={?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->batteryPower:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "getBatteryPowerValue: OUT batteryPower={?}"

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->batteryPower:D

    double-to-float v0, v0

    return v0
.end method

.method public declared-synchronized getBatteryRemainPowerEV()D
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "kd"

    invoke-static {v0, v1}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->isTargetProject(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoGBProxy()Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoGBProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoGBProxy;->getBatteryRemainPowerEV()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoPowerProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoPowerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoPowerProxy;->getBatteryRemainPowerEV()D

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBrakeFluidLevel()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoGearboxProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;->getBrakeFluidLevel()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBrakePedalState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoGearboxProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;->getBrakePedalState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBydAutoHub()Lcom/autosdk/bussiness/vehicle/BydAutoHub;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    return-object v0
.end method

.method public getCarProtocol()Ljava/lang/String;
    .locals 11

    const-class v0, Ljava/lang/String;

    const-string v1, "get"

    const-string v2, "getCarProtocol: e"

    const-string v3, "android.os.SystemProperties"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v6

    invoke-virtual {v7, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    const-string v10, "ro.car.protocol"

    aput-object v10, v9, v6

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v2, v7, v8}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v4

    :goto_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v6

    invoke-virtual {v3, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "sys.car.protocol"

    aput-object v5, v1, v6

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const-string v0, "CAN"

    if-eqz v7, :cond_0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "CANFD"

    return-object v0
.end method

.method public declared-synchronized getChargerFaultState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoChargingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;->getChargerFaultState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChargerWorkState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoChargingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;->getChargerWorkState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChargingCapState(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoChargingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;->getChargingCapState(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getChargingCapacity()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoChargingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;->getChargingCapacity()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChargingRestTime()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoChargingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;->getChargingRestTime()[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChargingType()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoChargingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoChargingProxy;->getChargingType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDenzaMeterScreenSize()I
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getDenzaMeterScreenSize()I

    move-result v2

    const-string v3, "getDenzaMeterScreenSize:{?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDenzaMeterScreenSize exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public declared-synchronized getDoorLockStatus(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoDoorLockProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoDoorLockProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoDoorLockProxy;->getDoorLockStatus(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDriverType()I
    .locals 3

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSettingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;->getDriveConfig()I

    move-result v0

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v1

    const/16 v2, 0xab

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method public declared-synchronized getDrivingTimeValue()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getDrivingTimeValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEVMileageValue()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getEVMileageValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getElecDrivingRangeValue()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getElecDrivingRangeValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getElecPercentageValue()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getElecPercentageValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEngineCoolantLevel()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoEngineProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoEngineProxy;->getEngineCoolantLevel()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFuelDrivingRangeValue()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getFuelDrivingRangeValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFuelElecLowPower()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getFuelElecLowPower()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFuelPercentageValue()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getFuelPercentageValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGearboxAutoModeType()I
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoGearboxProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;->getGearboxAutoModeType()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getGearboxCode()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoGearboxProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;->getGearboxCode()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGearboxManualModeLevel()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoGearboxProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;->getGearboxManualModeLevel()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHotfixPatchFlag()Z
    .locals 1

    sget-boolean v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->hotfix_patch_in:Z

    return v0
.end method

.method public declared-synchronized getHovPersonNum(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSafeBeltProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSafetyBeltProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSafetyBeltProxy;->getSafetyBeltStatus(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getHovThreePersonNum(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSettingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;->getThreeArrangePeopleValue(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getInstrumentUiDimensionSize()I
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    #sget v3, Landroid/hardware/bydauto/BYDAutoFeatureIds$Instrument;->INSTRUMENT_SIZE:I
    const v3, 0x28400022

    invoke-virtual {v2, v3, v1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getEventValue(II)I

    move-result v2

    const-string v3, "PlatformUtils"

    const-string v4, "getInstrumentUiDimensionSize() UiDimensionSize:{?} "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "PlatformUtils"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInstrumentUiShapeInterface()I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v1

    #sget v2, Landroid/hardware/bydauto/BYDAutoFeatureIds$Instrument;->INSTRUMENT_SHAPE:I
    const v2, 0x28400026
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getEventValue(II)I

    move-result v1

    const-string v2, "PlatformUtils"

    const-string v4, "getInstrumentUiShapeInterface() uiShapeInterface:{?} "

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-static {v2, v4, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "PlatformUtils"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInstrumentUiTypeInterface()I
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    #sget v3, Landroid/hardware/bydauto/BYDAutoFeatureIds$Instrument;->INSTRUMENT_UI_INTERFACE:I
    #const v3, 0x28400020

    #invoke-virtual {v2, v3, v1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getEventValue(II)I

    #move-result v2

    # 中间
    #const v2, 0x1
    # 右边
    #const v2, 0x2
    invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getInstrumentUiInterface()I

    move-result v2


    const-string v3, "PlatformUtils"

    const-string v4, "getInstrumentUiTypeInterface() uiTypeInterface:{?} "

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    :try_start_1
    const-string v3, "PlatformUtils"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getKdSystemPropertiesRelease()Ljava/lang/String;
    .locals 8

    const-class v0, Ljava/lang/String;

    const-string v1, "-1"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v3

    aput-object v0, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "persist.sys.byd.bs_flag"

    aput-object v6, v5, v3

    aput-object v1, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "PlatformUtils"

    const-string v6, "kd getKdSystemPropertiesRelease is error:"

    invoke-static {v5, v6, v0, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const-string v2, "MainActivity"

    const-string v3, "kd getKdSystemPropertiesRelease flag:"

    invoke-static {v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public declared-synchronized getLastFuelConPHMValue()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getLastFuelConPHMValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLightState(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoLightProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoLightProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoLightProxy;->getLightStatus(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getLightStatus(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoLightProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoLightProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoLightProxy;->getLightStatus(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getLocalPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    #const-string v2, "14696677062"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUUID = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "\u8bfb\u53d6\u5361\u53f7\u5931\u8d25"

    invoke-static {v0, v3, p1, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-object v2
.end method

.method public declared-synchronized getLowFuelWarnLightColor()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getLowFuelWarnLightColor()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLowPowerBatteryWarnLightColor()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getLowPowerBatteryWarnLightColor()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLowPowerBatteryWarnLightState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getLowPowerBatteryWarnLightState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMalfunctionInfo(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getMalfunctionInfo(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMeterDayNigntStatus()I
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getMeterDayNightStatus()I

    move-result v2

    const-string v3, "getMeterDayNightStatus:{?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMeterDayNightStatus exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getMeterLeftMaskShowStatus()I
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getMeterLeftMaskStatus()I

    move-result v2

    const-string v3, "getMeterLeftMaskShowStatus:{?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMeterLeftMaskShowStatus exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getMeterMenuShowStatus()I
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getMeterMenuStatus()I

    move-result v2

    const-string v3, "getMeterMenuShowStatus:{?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMeterMenuShowStatus exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getMeterNaviTypeStatus()I
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getMeterMapNaviType()I

    move-result v2

    const-string v3, "getMeterNaviTypeStatus:{?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMeterNaviTypeStatus exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getMeterRightMaskShowStatus()I
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getMeterRightMaskStatus()I

    move-result v2

    const-string v3, "getMeterRightMaskShowStatus:{?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMeterRightMaskShowStatus exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getMeterThemeStatus()I
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getMeterThemeStatus()I

    move-result v2

    const-string v3, "getMeterThemeStatus:{?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMeterThemeStatus exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public declared-synchronized getMileageByKD()I
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->getMileageByKD()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1c2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const/16 v2, 0x226

    goto :goto_0

    :cond_1
    const-string v4, "PlatformUtils"

    const-string v5, "getMileageByKD is failure,default set mileage is 450"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v4, "PlatformUtils"

    const-string v5, "getMileageByKD:"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v4, v5, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMute()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isAccOff()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget v2, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->STREAM_NAVI:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "PlatformUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move v0, v1

    :goto_0
    :try_start_3
    const-string v3, "PlatformUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNavScreenState()I
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v3}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSettingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;

    move-result-object v3

    const v4, 0x4c10e015    # 3.7978196E7f

    invoke-virtual {v3, v4, v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;->getEventValue(II)I

    move-result v3

    const-string v4, "PlatformUtils"

    const-string v5, "getNavScreenState: {?}"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v4, v5, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "PlatformUtils"

    const-string v5, "setNavScreenState exception : {?}"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v4, v5, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNaviMuteState()I
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isAccOff()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sget v3, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->STREAM_NAVI:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const-string v3, "PlatformUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNaviMuteState naviVolume= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "PlatformUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNaviMuteState e= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNaviStation()I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v1

    const v2, 0x2840000c

    invoke-virtual {v1, v2, v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getEventValue(II)I

    move-result v1

    const-string v2, "PlatformUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNaviStation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    const-string v2, "PlatformUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNaviStation exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNaviType()I
    .locals 6

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getMeterNaviType()I

    move-result v2

    const-string v3, "getNaviType:{?}"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNaviType exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public getNoaPlatform()Z
    .locals 6

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getPlatformSystemStatus()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "PlatformUtils"

    const-string v5, "noaPlatform:{?}"

    invoke-static {v3, v5, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :cond_1
    :goto_0
    return v1
.end method

.method public declared-synchronized getOperationMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoEnergyProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoEnergyProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoEnergyProxy;->getOperationMode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPM2p5Level()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoPM2p5Proxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoPM2p5Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoPM2p5Proxy;->getPM2p5Level()[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPM2p5Value()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoPM2p5Proxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoPM2p5Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoPM2p5Proxy;->getPM2p5Value()[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParkBrakeSwitch()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoGearboxProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;->getParkBrakeSwitch()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPitchAngle()F
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->getPitchAngle()F

    move-result v0

    return v0
.end method

.method public getPlatformInformation()I
    .locals 7

    const-string v0, "PlatformUtils"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNoaPlatform()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget-object v3, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v3}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v3

    #sget v4, Landroid/hardware/bydauto/BYDAutoFeatureIds$Instrument;->INSTRUMENT_UI_INTERFACE:I

    #invoke-virtual {v3, v4, v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getEventValue(II)I

    #move-result v3
    # 中间
    #const v3, 0x1
    # 右边
    const v3, 0x2
    #invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getInstrumentUiInterface()I

    #move-result v3

    const-string v4, "getInstrumentUiTypeInterface() uiTypeInterface:{?} "

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public getPlatformSystemStatus()I
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSettingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;->getADSPlatformSystemStatus()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getPowerLevel()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getPowerLevel()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPowerType()I
    .locals 6

    iget v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->powerType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v2, Lcom/byd/car/property/ICarPropertyManager;

    invoke-static {v0, v2}, Lcom/byd/car/DiCar;->getCarManager(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byd/car/property/ICarPropertyManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lf/h/b/q/d0;->a:Lf/h/b/q/d0;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v2, Lf/h/b/q/p;->a:Lf/h/b/q/p;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->powerType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPowerType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PlatformUtils"

    invoke-static {v3, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->powerType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/32 v3, 0x186a0

    new-instance v5, Lf/h/b/q/r;

    invoke-direct {v5, v0}, Lf/h/b/q/r;-><init>(I)V

    const-string v0, "PlatformUtils.getPowerType"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "kd"

    invoke-static {v0, v2}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->isTargetProject(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->powerType:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->powerType:I

    :cond_1
    iget v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->powerType:I

    return v0
.end method

.method public getRealAutoVIN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getRealAutoVIN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRoadSurfaceMode()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoEnergyProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoEnergyProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoEnergyProxy;->getRoadSurfaceMode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRollAngle()F
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->getRollAngle()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSRType()Z
    .locals 2

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getSRValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSRValue()I
    .locals 4

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSettingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;->getSrModeValue()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PlatformUtils"

    const-string v3, "getSRValue: {?}"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public declared-synchronized getSpeedUnit()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->getSpeedUnit()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSysAltitude()F
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydLocationProxy()Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoLocationProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoLocationProxy;->getLocationAltitude()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-float v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "getSysAltitude: e"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSystemAltitude()F
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "persist.sys.gpsinfo"

    aput-object v5, v4, v0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x6

    if-lt v3, v4, :cond_0

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "getSystemAltitude: e"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTemprature(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoAcProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;->getAcTemperature(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTime()[I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoTimeProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoTimeProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoTimeProxy;->getTime()[I

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeFormat()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoTimeProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoTimeProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoTimeProxy;->getTimeFormat()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalElecConPHMValue()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getTotalElecConPHMValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalMileageValue()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->getTotalMileageValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTyreAirLeakState(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoTyreProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoTyreProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoTyreProxy;->getTyreAirLeakState(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTyreBatteryState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoTyreProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoTyreProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoTyreProxy;->getTyreBatteryState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTyrePressureState(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoTyreProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoTyreProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoTyreProxy;->getTyrePressureState(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getVolume()I
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "kd"

    invoke-static {v0, v1}, Lcom/autosdk/bussiness/common/utils/CommonUtil;->isTargetProject(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoAudioProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAudioProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/AbsAutoProxy;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isSystemSigned()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v3}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoAudioProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAudioProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAudioProxy;->getNaviVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoAudioProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAudioProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAudioProxy;->getNaviVolume()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isAccOff()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget v3, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->STREAM_NAVI:I

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const-string v0, "PlatformUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "PlatformUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWindowOpenPercent(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getWindowOpenPercent(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hasFeature()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSettingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;

    move-result-object v0

    const-string v1, "DrivingRecorder"

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;->hasFeature(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasNoaShareConfig()Z
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydLocationProxy()Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoLocationProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoLocationProxy;->hasNoaShareConfig()Z

    move-result v0

    return v0
.end method

.method public is24SRCar()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0xe5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is2560_1600Screen(Landroid/content/Context;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "PlatformUtils"

    const-string v4, "screenWidth={?},screenHeight={?}"

    invoke-static {p1, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xa00

    if-ne v0, p1, :cond_0

    return v2

    :cond_0
    return v3
.end method

.method public isAccOff()Z
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoBodyworkProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoBodyworkProxy;->getPowerLevel()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExitVinKDMap()Z
    .locals 2

    sget-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->KD_IS_EXIT_VIN:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getKdSystemPropertiesRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isGearboxR()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBYDAutoGearboxDevice()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;->getGearboxAutoModeType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "PlatformUtils"

    const-string v3, "\u83b7\u53d6\u6321\u4f4d is error and return false:{?}"

    invoke-static {v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isGpsBySysTem()Z
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydLocationProxy()Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoLocationProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoLocationProxy;->isHaveGps()Z

    move-result v0

    return v0
.end method

.method public isHcMode()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0x87

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0x79

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0xb1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isHtMode()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    iget v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdTwoHybrid:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    iget v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdTwoPureElectric:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    iget v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdThreePureElectric:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    iget v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->carTypeIdThreeHybrid:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMeterSrTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->meterThemeIsSR()Z

    move-result v0

    return v0
.end method

.method public isMeterThemeMap()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->meterThemeIsMap()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMeterThemeMap exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PlatformUtils"

    invoke-static {v3, v0, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isPanoramaImageTop()Z
    .locals 8

    const-string v0, "PlatformUtils"

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "sys.byd.pano_start"

    const-string v5, "0"

    invoke-static {v4, v5}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "byd.scene.mode.state106"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "[isPanoramaImageTop] isSysPanoStarted:{?},isState106Started:{?}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    move v4, v3

    :goto_0
    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "isPanoramaImageTop Exception"

    invoke-static {v0, v7, v5, v6}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_2
    return v2
.end method

.method public isR2()Z
    .locals 2

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0x92

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0xf5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isR3()Z
    .locals 2

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0x96

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSameModeId()Z
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0x98

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x11e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x162

    if-eq v0, v1, :cond_0

    const/16 v1, 0x174

    if-eq v0, v1, :cond_0

    const/16 v1, 0x175

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x107
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isSupportMultiSim()Z
    .locals 7

    const-string v0, "persist.sys.csim.msisdn1"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "persist.sys.csim.msisdn2"

    invoke-static {v2, v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const-string v5, "PlatformUtils"

    const-string v6, "msisdn1:{?}, msisdn2:{?}"

    invoke-static {v5, v6, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lf/k/i/d/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lf/k/i/d/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v4

    :cond_0
    return v3
.end method

.method public isSupportOneMirror()Z
    .locals 1

    invoke-direct {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isSupportCarType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTopBySysTem()Z
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydLocationProxy()Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoLocationProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/proxy/BYDAutoLocationProxy;->isTopDirection()Z

    move-result v0

    return v0
.end method

.method public isTrackMapMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0x84

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isValidSrValue(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isVipEndingKDMap()Z
    .locals 2

    sget-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->KD_IS_VIP_ENDING:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getKdSystemPropertiesRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVipKDMap()Z
    .locals 2

    sget-object v0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->KD_IS_VIP:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getKdSystemPropertiesRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public realSpeed()D
    .locals 4

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSpeed()Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;->realSpeed()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isGearboxR()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public removeGearBoxManualModeLevelListener(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy$OnGearboxManualModeLevelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoGearboxProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy;->removeGearBoxManualModeLevelListener(Lcom/autosdk/bussiness/vehicle/proxy/BydAutoGearboxProxy$OnGearboxManualModeLevelListener;)V

    return-void
.end method

.method public declared-synchronized setAcTemperature(IIII)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoAcProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoAcProxy;->setAcTemperature(IIII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAtmosphereControl(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "PlatformUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAtmosphereControl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCommonFenceStatus(I)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PlatformUtils"

    const-string v4, "[setCommonFenceStatus] value={?}"

    invoke-static {v2, v4, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v1, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->lastFenceSendStatus:I

    if-ne v1, p1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "[setCommonFenceStatus] value={?}, is the same with lastFenceSendStatus, do nothing"

    invoke-static {v2, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sput p1, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->lastFenceSendStatus:I

    iget-object v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->valueQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isTaskScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->fenceExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lf/h/b/q/g0;

    invoke-direct {v1, p0}, Lf/h/b/q/g0;-><init>(Lcom/autosdk/bussiness/vehicle/PlatformUtils;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method public setFenceGeoStatus2Special(I)V
    .locals 1

    iget-object v0, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoStatisticProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoStatisticProxy;->setFenceStatusEventValue(I)V

    return-void
.end method

.method public setFrontCrossingLaneNumber(I)V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setFrontCrossingLaneNumber(I)V

    return-void
.end method

.method public setHotfixPatchFlag(Z)V
    .locals 2

    sput-boolean p1, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->hotfix_patch_in:Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PlatformUtils"

    const-string v1, "setHotfixPatchFlag"

    invoke-static {v0, v1, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized setLaneStates(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isAccOff()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->setLaneStates(Ljava/util/ArrayList;II)V

    rsub-int/lit8 p1, v0, 0xc

    if-lez p1, :cond_1

    const/4 p1, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, p1, v1, v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->setLaneStates(Ljava/util/ArrayList;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMapSendingState(I)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMapSendingState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSettingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;

    move-result-object v1

    const v2, 0x4c10e01d    # 3.7978228E7f

    invoke-virtual {v1, v2, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;->setEventValue(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMapSendingState exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMute(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isAccOff()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lcom/byd/audio/AudioBootstrap;

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/byd/audio/AudioBootstrap;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/byd/audio/AudioBootstrap;->getAudioInterface()Lcom/byd/audio/AudioInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "PlatformUtils"

    const-string v4, "[setMute] AudioInterface! adjustChannelVolume. mute:{?}"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/16 p1, -0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    :goto_0
    invoke-interface {v2, v3, p1, v1}, Lcom/byd/audio/AudioInterface;->adjustChannelVolume(III)V

    goto :goto_1

    :cond_2
    const-string v2, "PlatformUtils"

    const-string v3, "[setMute] AudioManager! setStreamMute. mute:{?}"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sget v3, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->STREAM_NAVI:I

    invoke-virtual {v2, v3, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v2, "PlatformUtils"

    const-string v3, "[setMute] setMute = {?}"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMuteSystem(Z)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-virtual {v2, v1, p1}, Landroid/media/AudioManager;->setMuteState(IZ)V

    const-string v2, "PlatformUtils"

    const-string v3, "setStreamMute. mute:{?}"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v2, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "PlatformUtils"

    const-string v3, "[setMuteSystem] setMute = {?}"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v2, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNavControl(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getSRType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->setNavControl30(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNavControl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v1

    const v2, 0x4c10a018    # 3.7912672E7f

    invoke-virtual {v1, v2, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->setEventValue(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNavControl exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNavControl30(I)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNavControl30:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "0x4C130041"

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "PlatformUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNavControl30 funId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v2}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->setEventValue(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNavControl30 exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNavScreenState(I)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNavScreenState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSettingProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;

    move-result-object v1

    const v2, 0x4c10e015    # 3.7978196E7f

    invoke-virtual {v1, v2, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoSettingProxy;->setEventValue(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNavScreenState exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNavState(I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNavState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/hardware/bydauto/BYDAutoFeatureIds;->INSTRUMENT_SEND_NAVI_STATUS_SET:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, -0x1

    new-instance v4, Lf/h/b/q/w;

    invoke-direct {v4, p1}, Lf/h/b/q/w;-><init>(I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNaviCorp(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setNaviCorp(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNaviEtaArrivalTime(II)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNaviEtaArrivalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, -0x1

    new-instance v4, Lf/h/b/q/z;

    invoke-direct {v4, p0, p1, p2}, Lf/h/b/q/z;-><init>(Lcom/autosdk/bussiness/vehicle/PlatformUtils;II)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setNaviEtaArrivalTimeInterval(I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNaviEtaArrivalTimeInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->getStatisticMapPeriodInfor()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lf/h/b/q/x;

    invoke-direct {v2, p0, p1}, Lf/h/b/q/x;-><init>(Lcom/autosdk/bussiness/vehicle/PlatformUtils;I)V

    const-wide/16 v3, -0x1

    invoke-static {v0, v1, v3, v4, v2}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized setNaviMuteState(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "PlatformUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNaviMuteState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isAccOff()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v3, 0x4

    if-ne p1, v1, :cond_1

    sget p1, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->STREAM_NAVI:I

    invoke-virtual {v0, p1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    sget p1, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->STREAM_NAVI:I

    invoke-virtual {v0, p1, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "PlatformUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolume = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNaviNextRoadName(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNaviNextRoadName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/hardware/bydauto/BYDAutoFeatureIds;->INSTRUMENT_TARGET_NEXT_PATHNAME_INFO_SET:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    new-instance v3, Lf/h/b/q/t;

    invoke-direct {v3, p1}, Lf/h/b/q/t;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, v1, v2, v3}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNaviNextTurnIconID(I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNaviNextTurnIconID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/hardware/bydauto/BYDAutoFeatureIds;->INSTRUMENT_GUIDE_INFO_SIMPLE_SET:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, -0x1

    new-instance v4, Lf/h/b/q/u;

    invoke-direct {v4, p1}, Lf/h/b/q/u;-><init>(I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNaviRouteRemainDist(I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNaviRouteRemainDist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/hardware/bydauto/BYDAutoFeatureIds;->INSTRUMENT_NAVI_TRIP_INFO_MILEAGE_SET:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, -0x1

    new-instance v4, Lf/h/b/q/e0;

    invoke-direct {v4, p1}, Lf/h/b/q/e0;-><init>(I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNaviRoutrRemainTime(II)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNaviRoutrRemainTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, -0x1

    new-instance v4, Lf/h/b/q/v;

    invoke-direct {v4, p0, p1, p2}, Lf/h/b/q/v;-><init>(Lcom/autosdk/bussiness/vehicle/PlatformUtils;II)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNaviSegRemainDist(I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNaviSegRemainDist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/hardware/bydauto/BYDAutoFeatureIds;->INSTRUMENT_FRONT_CROSSING_DISTANCE_SET:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, -0x1

    new-instance v4, Lf/h/b/q/q;

    invoke-direct {v4, p1}, Lf/h/b/q/q;-><init>(I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNaviSt(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setNaviSt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNextSegRemainDis(I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PlatformUtils"

    const-string v2, "setNextSegRemainDis:{?}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setNextSegRemainDis(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNextSegRemainDis exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setOffFrontCrossingDis(I)V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setOffFrontCrossingDis(I)V

    return-void
.end method

.method public setOffFrontTunnelDis(I)V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setOffFrontTunnelDis(I)V

    return-void
.end method

.method public declared-synchronized setOverSpeedState(I)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOverSpeedState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->bydAutoHub:Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoInstrumentProxy()Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;

    move-result-object v1

    const v2, 0x4c108044    # 3.788008E7f

    int-to-byte p1, p1

    invoke-virtual {v1, v2, p1}, Lcom/autosdk/bussiness/vehicle/proxy/BydAutoInstrumentProxy;->setEventValue(IB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOverSpeedState exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setRPlatformStyle()V
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v0

    const/16 v1, 0x92

    if-eq v0, v1, :cond_1

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf5

    if-eq v0, v1, :cond_1

    const/4 v0, 0x5

    :goto_0
    invoke-static {v0}, Lf/k/v/b;->k(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :goto_1
    return-void
.end method

.method public declared-synchronized setRoadType(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRoadType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #sget v1, Landroid/hardware/bydauto/BYDAutoFeatureIds;->SETTING_RODE_TYPE_SET:I
    const v1,-0x1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, -0x1

    new-instance v4, Lf/h/b/q/c0;

    invoke-direct {v4, p1}, Lf/h/b/q/c0;-><init>(I)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autosdk/bussiness/utils/SendCacheTool;->send(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSpeedLimit(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setSpeedLimit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTunnelStates(I)V
    .locals 1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setTunnelStates(I)V

    return-void
.end method

.method public declared-synchronized setVolume(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isAccOff()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    sget v2, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->STREAM_NAVI:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolume volume= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "PlatformUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolume e= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setZoneCode(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformApiManager;->getApi()Lcom/autosdk/bussiness/vehicle/PlatformApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autosdk/bussiness/vehicle/PlatformApi;->setZoneCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public soAbility()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "ro.feature.symbol"

    aput-object v5, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "amap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move v0, v4

    :cond_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "getCarProtocol: e"

    invoke-static {v3, v1, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method



.method public static isSupportInstrument()Z
    .locals 2

    .line 23
    invoke-static {}, Lcom/autosdk/bussiness/manager/SDKManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "apps.setting.product.outswver"

    invoke-static {v0, v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
