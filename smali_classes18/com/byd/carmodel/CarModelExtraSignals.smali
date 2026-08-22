.class public final Lcom/byd/carmodel/CarModelExtraSignals;
.super Ljava/lang/Object;
.source "CarModelExtraSignals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/carmodel/CarModelExtraSignals$LightListener;,
        Lcom/byd/carmodel/CarModelExtraSignals$BodyworkListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_PLAY:I = 0x1

.field private static final AREA_HOOD:I = 0x5

.field private static final AREA_LEFT_BEHIND:I = 0x3

.field private static final AREA_LEFT_FRONT:I = 0x1

.field private static final AREA_RIGHT_BEHIND:I = 0x4

.field private static final AREA_RIGHT_FRONT:I = 0x2

.field private static final AREA_TRUNK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "CarModelExtraSignals"

.field private static final TEXTURE_BACKUP:I = 0x3f4

.field private static final TEXTURE_DAYTIME:I = 0x3f6

.field private static final TEXTURE_FOG:I = 0x3f5

.field private static final TEXTURE_OFF:I = -0x1

.field private static frontFogId:I

.field private static frontFogOn:Z

.field private static installed:Z

.field private static rearFogId:I

.field private static rearFogOn:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;IZ)V
    .registers 3

    .line 34
    invoke-static {p0, p1, p2}, Lcom/byd/carmodel/CarModelExtraSignals;->setLamp(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static doorPartOf(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    const-string p0, "CS_Trunk"

    return-object p0

    :pswitch_8
    const-string p0, "CS_Bonnet"

    return-object p0

    :pswitch_b
    const-string p0, "CS_RB"

    return-object p0

    :pswitch_e
    const-string p0, "CS_LB"

    return-object p0

    :pswitch_11
    const-string p0, "CS_RF"

    return-object p0

    :pswitch_14
    const-string p0, "CS_LF"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static install(Landroid/content/Context;)V
    .registers 14

    const-string v0, "\u8f66\u95e8\u4fe1\u53f7\u6570\u91cf "

    .line 63
    const-class v1, Lcom/byd/carmodel/CarModelExtraSignals;

    monitor-enter v1

    .line 64
    :try_start_5
    sget-boolean v2, Lcom/byd/carmodel/CarModelExtraSignals;->installed:Z

    if-nez v2, :cond_dc

    if-nez p0, :cond_d

    goto/16 :goto_dc

    :cond_d
    const/4 v2, 0x1

    .line 67
    sput-boolean v2, Lcom/byd/carmodel/CarModelExtraSignals;->installed:Z

    .line 68
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_de

    .line 69
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->reload(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 71
    :try_start_19
    sget v7, Landroid/hardware/bydauto/BYDAutoFeatureIds;->LIGHT_FRONT_FOG_LIGHT:I

    sput v7, Lcom/byd/carmodel/CarModelExtraSignals;->frontFogId:I

    .line 72
    sget v7, Landroid/hardware/bydauto/BYDAutoFeatureIds;->LIGHT_REAR_FOG_LIGHT:I

    sput v7, Lcom/byd/carmodel/CarModelExtraSignals;->rearFogId:I

    .line 73
    sget v7, Landroid/hardware/bydauto/BYDAutoFeatureIds;->LIGHT_CMD_DAY_RUNNING_LIGHT_STATE:I

    .line 74
    sget v8, Landroid/hardware/bydauto/BYDAutoFeatureIds;->LIGHT_CMD_REVERSING_LIGHT_STATE:I

    const-string v9, "CarModelExtraSignals"

    const-string v10, "\u706f\u5149\u4fe1\u53f7 fog=0x%08x/0x%08x day=0x%08x reverse=0x%08x"

    new-array v11, v4, [Ljava/lang/Object;

    .line 75
    sget v12, Lcom/byd/carmodel/CarModelExtraSignals;->frontFogId:I

    .line 76
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    sget v12, Lcom/byd/carmodel/CarModelExtraSignals;->rearFogId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    .line 75
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p0}, Landroid/hardware/bydauto/light/BYDAutoLightDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/light/BYDAutoLightDevice;

    move-result-object v9

    if-eqz v9, :cond_75

    new-array v10, v4, [I

    .line 80
    sget v11, Lcom/byd/carmodel/CarModelExtraSignals;->frontFogId:I

    aput v11, v10, v6

    sget v11, Lcom/byd/carmodel/CarModelExtraSignals;->rearFogId:I

    aput v11, v10, v2

    aput v7, v10, v5

    aput v8, v10, v3

    invoke-static {v10}, Lcom/byd/carmodel/CarModelExtraSignals;->packIds([I)[I

    move-result-object v10

    .line 81
    array-length v11, v10

    if-lez v11, :cond_71

    .line 82
    new-instance v11, Lcom/byd/carmodel/CarModelExtraSignals$LightListener;

    invoke-direct {v11, v1}, Lcom/byd/carmodel/CarModelExtraSignals$LightListener;-><init>(Lcom/byd/carmodel/CarModelExtraSignals$1;)V

    invoke-virtual {v9, v11, v10}, Landroid/hardware/bydauto/light/BYDAutoLightDevice;->registerListener(Landroid/hardware/bydauto/light/AbsBYDAutoLightListener;[I)V

    .line 84
    :cond_71
    invoke-static {v9, v7, v8}, Lcom/byd/carmodel/CarModelExtraSignals;->syncLightsFrom(Landroid/hardware/bydauto/light/BYDAutoLightDevice;II)V

    goto :goto_85

    :cond_75
    const-string v7, "CarModelExtraSignals"

    const-string v8, "\u706f\u5149\u8bbe\u5907\u4e0d\u53ef\u7528"

    .line 86
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_19 .. :try_end_7c} :catchall_7d

    goto :goto_85

    :catchall_7d
    move-exception v7

    const-string v8, "CarModelExtraSignals"

    const-string v9, "\u6ce8\u518c\u706f\u5149\u4fe1\u53f7\u5931\u8d25"

    .line 89
    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_85
    const/4 v7, 0x6

    :try_start_86
    new-array v7, v7, [I

    .line 92
    sget v8, Landroid/hardware/bydauto/BYDAutoFeatureIds;->BODYWORK_LEFT_HAND_FRONT_DOOR:I

    aput v8, v7, v6

    sget v6, Landroid/hardware/bydauto/BYDAutoFeatureIds;->BODYWORK_RIGHT_HAND_FRONT_DOOR:I

    aput v6, v7, v2

    sget v2, Landroid/hardware/bydauto/BYDAutoFeatureIds;->BODYWORK_LEFT_HAND_REAR_DOOR:I

    aput v2, v7, v5

    sget v2, Landroid/hardware/bydauto/BYDAutoFeatureIds;->BODYWORK_RIGHT_HAND_REAR_DOOR:I

    aput v2, v7, v3

    sget v2, Landroid/hardware/bydauto/BYDAutoFeatureIds;->BODYWORK_LUGGAGE_DOOR:I

    aput v2, v7, v4

    sget v2, Landroid/hardware/bydauto/BYDAutoFeatureIds;->BODYWORK_HOOD:I

    const/4 v3, 0x5

    aput v2, v7, v3

    invoke-static {v7}, Lcom/byd/carmodel/CarModelExtraSignals;->packIds([I)[I

    move-result-object v2

    const-string v3, "CarModelExtraSignals"

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p0}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->getInstance(Landroid/content/Context;)Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;

    move-result-object p0

    if-eqz p0, :cond_c9

    .line 101
    array-length v0, v2

    if-lez v0, :cond_c9

    .line 102
    new-instance v0, Lcom/byd/carmodel/CarModelExtraSignals$BodyworkListener;

    invoke-direct {v0, v1}, Lcom/byd/carmodel/CarModelExtraSignals$BodyworkListener;-><init>(Lcom/byd/carmodel/CarModelExtraSignals$1;)V

    invoke-virtual {p0, v0, v2}, Landroid/hardware/bydauto/bodywork/BYDAutoBodyworkDevice;->registerListener(Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;[I)V

    goto :goto_db

    :cond_c9
    if-nez p0, :cond_db

    const-string p0, "CarModelExtraSignals"

    const-string v0, "\u8f66\u8eab\u8bbe\u5907\u4e0d\u53ef\u7528"

    .line 104
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catchall {:try_start_86 .. :try_end_d2} :catchall_d3

    goto :goto_db

    :catchall_d3
    move-exception p0

    const-string v0, "CarModelExtraSignals"

    const-string v1, "\u6ce8\u518c\u8f66\u8eab\u4fe1\u53f7\u5931\u8d25"

    .line 107
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_db
    :goto_db
    return-void

    .line 65
    :cond_dc
    :goto_dc
    :try_start_dc
    monitor-exit v1

    return-void

    :catchall_de
    move-exception p0

    .line 68
    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_dc .. :try_end_e0} :catchall_de

    throw p0
.end method

.method public static onBuiltInEvent(Ljava/lang/String;Z)V
    .registers 3

    .line 184
    invoke-static {p0, p1}, Lcom/byd/carmodel/CarModelEventBindings;->play(Ljava/lang/String;Z)Z

    const-string v0, "CS_WF"

    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    xor-int/lit8 p0, p1, 0x1

    const-string p1, "CS_Idle"

    .line 186
    invoke-static {p1, p0}, Lcom/byd/carmodel/CarModelEventBindings;->play(Ljava/lang/String;Z)Z

    :cond_12
    return-void
.end method

.method static onDoorStateChanged(II)V
    .registers 5

    .line 173
    invoke-static {p0}, Lcom/byd/carmodel/CarModelExtraSignals;->doorPartOf(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8f66\u95e8 area="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " state="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " part="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CarModelExtraSignals"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4d

    if-eqz p1, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    .line 176
    :goto_2e
    invoke-static {v0, p0}, Lcom/byd/carmodel/CarModelEventBindings;->play(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4d

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_41

    const-string p1, "_Open"

    goto :goto_43

    :cond_41
    const-string p1, "_Close"

    :goto_43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/byd/carmodel/CarModelExtraSignals;->playOnce(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method static onFogChanged(II)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 157
    :goto_7
    sget v3, Lcom/byd/carmodel/CarModelExtraSignals;->frontFogId:I

    if-ne p0, v3, :cond_e

    .line 158
    sput-boolean v2, Lcom/byd/carmodel/CarModelExtraSignals;->frontFogOn:Z

    goto :goto_14

    .line 159
    :cond_e
    sget v3, Lcom/byd/carmodel/CarModelExtraSignals;->rearFogId:I

    if-ne p0, v3, :cond_49

    .line 160
    sput-boolean v2, Lcom/byd/carmodel/CarModelExtraSignals;->rearFogOn:Z

    .line 164
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u96fe\u706f 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarModelExtraSignals"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-boolean p0, Lcom/byd/carmodel/CarModelExtraSignals;->frontFogOn:Z

    if-nez p0, :cond_3b

    sget-boolean p0, Lcom/byd/carmodel/CarModelExtraSignals;->rearFogOn:Z

    if-eqz p0, :cond_3c

    :cond_3b
    move v0, v1

    :cond_3c
    const-string p0, "CS_Fog"

    .line 167
    invoke-static {p0, v0}, Lcom/byd/carmodel/CarModelEventBindings;->play(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_49

    const/16 p1, 0x3f5

    .line 168
    invoke-static {p0, p1, v0}, Lcom/byd/carmodel/CarModelExtraSignals;->setLamp(Ljava/lang/String;IZ)V

    :cond_49
    return-void
.end method

.method private static varargs packIds([I)[I
    .registers 7

    .line 114
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4
    if-ge v2, v0, :cond_f

    aget v4, p0, v2

    if-eqz v4, :cond_c

    add-int/lit8 v3, v3, 0x1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 119
    :cond_f
    new-array v0, v3, [I

    .line 121
    array-length v2, p0

    move v3, v1

    :goto_13
    if-ge v1, v2, :cond_21

    aget v4, p0, v1

    if-eqz v4, :cond_1e

    add-int/lit8 v5, v3, 0x1

    .line 123
    aput v4, v0, v3

    move v3, v5

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    return-object v0
.end method

.method private static playOnce(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "\u64ad\u653e\u8f66\u95e8\u52a8\u753b\u5931\u8d25:"

    .line 257
    sget-object v1, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_5
    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object v2

    if-nez v2, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    .line 260
    :cond_d
    iget-object v3, v2, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    :goto_f
    if-eqz v3, :cond_55

    .line 261
    iget-object v4, v3, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    if-nez v4, :cond_16

    goto :goto_55

    .line 264
    :cond_16
    new-instance v4, Lcom/byd/lane/common/data/MyCarPartsAnimation;

    invoke-direct {v4}, Lcom/byd/lane/common/data/MyCarPartsAnimation;-><init>()V

    .line 265
    iput-object p0, v4, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->name:Ljava/lang/String;

    .line 266
    iput-object p1, v4, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    const/4 v5, 0x1

    .line 267
    iput v5, v4, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    .line 268
    iput v5, v4, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->repeatTimes:I

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_Open"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_Close"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    .line 272
    iget-object p0, v3, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {v2}, Lf/k/l/i/b;->s()V
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_57

    goto :goto_69

    .line 262
    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v1

    return-void

    :catchall_57
    move-exception p0

    const-string v2, "CarModelExtraSignals"

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :goto_69
    monitor-exit v1

    return-void

    :catchall_6b
    move-exception p0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_6b

    throw p0
.end method

.method public static reset()V
    .registers 9

    .line 282
    invoke-static {}, Lcom/byd/carmodel/CarModelEventBindings;->resetAnimations()V

    .line 283
    sget-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 285
    :try_start_7
    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v3, 0x0

    goto :goto_11

    .line 286
    :cond_f
    iget-object v3, v2, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_77

    :goto_11
    if-nez v3, :cond_15

    .line 288
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_7d

    return-void

    :cond_15
    :try_start_15
    const-string v3, "CS_Fog"

    .line 290
    invoke-virtual {v2, v3}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    const-string v3, "CS_Daytime"

    .line 291
    invoke-virtual {v2, v3}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    const-string v3, "CS_Backup"

    .line 292
    invoke-virtual {v2, v3}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "CS_LF"

    aput-object v5, v4, v1

    const-string v5, "CS_RF"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "CS_LB"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const-string v5, "CS_RB"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string v5, "CS_Trunk"

    const/4 v6, 0x4

    aput-object v5, v4, v6

    const-string v5, "CS_Bonnet"

    const/4 v6, 0x5

    aput-object v5, v4, v6

    move v5, v1

    :goto_45
    if-ge v5, v3, :cond_74

    .line 294
    aget-object v6, v4, v5

    .line 295
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_Open"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_Close"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 298
    :cond_74
    invoke-virtual {v2}, Lf/k/l/i/b;->s()V
    :try_end_77
    .catchall {:try_start_15 .. :try_end_77} :catchall_77

    .line 301
    :catchall_77
    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_7d

    .line 302
    sput-boolean v1, Lcom/byd/carmodel/CarModelExtraSignals;->frontFogOn:Z

    .line 303
    sput-boolean v1, Lcom/byd/carmodel/CarModelExtraSignals;->rearFogOn:Z

    return-void

    :catchall_7d
    move-exception v1

    .line 301
    :try_start_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method private static setLamp(Ljava/lang/String;IZ)V
    .registers 8

    const-string v0, "\u8bbe\u7f6e\u8f66\u706f\u5931\u8d25:"

    .line 236
    sget-object v1, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_5
    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object v2

    if-nez v2, :cond_d

    const/4 v3, 0x0

    goto :goto_f

    .line 239
    :cond_d
    iget-object v3, v2, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    :goto_f
    if-eqz v3, :cond_2f

    .line 240
    iget-object v4, v3, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    if-nez v4, :cond_16

    goto :goto_2f

    .line 243
    :cond_16
    new-instance v4, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v4}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    .line 244
    iput-object p0, v4, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    if-eqz p2, :cond_20

    goto :goto_21

    :cond_20
    const/4 p1, -0x1

    .line 245
    :goto_21
    iput p1, v4, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    .line 246
    invoke-virtual {v2, p0}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    .line 247
    iget-object p1, v3, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v2}, Lf/k/l/i/b;->s()V
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_31

    goto :goto_43

    .line 241
    :cond_2f
    :goto_2f
    :try_start_2f
    monitor-exit v1

    return-void

    :catchall_31
    move-exception p1

    const-string p2, "CarModelExtraSignals"

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :goto_43
    monitor-exit v1

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_45

    throw p0
.end method

.method private static syncLightsFrom(Landroid/hardware/bydauto/light/BYDAutoLightDevice;II)V
    .registers 10

    const-string v0, "CS_Backup"

    const-string v1, "CS_Daytime"

    const-string v2, "CS_Fog"

    .line 132
    :try_start_6
    sget v3, Lcom/byd/carmodel/CarModelExtraSignals;->frontFogId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_14

    invoke-virtual {p0, v3}, Landroid/hardware/bydauto/light/BYDAutoLightDevice;->getLightStatus(I)I

    move-result v3

    if-ne v3, v5, :cond_14

    move v3, v5

    goto :goto_15

    :cond_14
    move v3, v4

    :goto_15
    sput-boolean v3, Lcom/byd/carmodel/CarModelExtraSignals;->frontFogOn:Z

    .line 133
    sget v3, Lcom/byd/carmodel/CarModelExtraSignals;->rearFogId:I

    if-eqz v3, :cond_23

    invoke-virtual {p0, v3}, Landroid/hardware/bydauto/light/BYDAutoLightDevice;->getLightStatus(I)I

    move-result v3

    if-ne v3, v5, :cond_23

    move v3, v5

    goto :goto_24

    :cond_23
    move v3, v4

    :goto_24
    sput-boolean v3, Lcom/byd/carmodel/CarModelExtraSignals;->rearFogOn:Z

    .line 134
    sget-boolean v6, Lcom/byd/carmodel/CarModelExtraSignals;->frontFogOn:Z

    if-nez v6, :cond_2f

    if-eqz v3, :cond_2d

    goto :goto_2f

    :cond_2d
    move v3, v4

    goto :goto_30

    :cond_2f
    :goto_2f
    move v3, v5

    .line 135
    :goto_30
    invoke-static {v2, v3}, Lcom/byd/carmodel/CarModelEventBindings;->play(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3b

    const/16 v6, 0x3f5

    .line 136
    invoke-static {v2, v6, v3}, Lcom/byd/carmodel/CarModelExtraSignals;->setLamp(Ljava/lang/String;IZ)V

    :cond_3b
    if-eqz p1, :cond_51

    .line 139
    invoke-virtual {p0, p1}, Landroid/hardware/bydauto/light/BYDAutoLightDevice;->getLightStatus(I)I

    move-result p1

    if-ne p1, v5, :cond_45

    move p1, v5

    goto :goto_46

    :cond_45
    move p1, v4

    .line 140
    :goto_46
    invoke-static {v1, p1}, Lcom/byd/carmodel/CarModelEventBindings;->play(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_51

    const/16 v2, 0x3f6

    .line 141
    invoke-static {v1, v2, p1}, Lcom/byd/carmodel/CarModelExtraSignals;->setLamp(Ljava/lang/String;IZ)V

    :cond_51
    if-eqz p2, :cond_6e

    .line 145
    invoke-virtual {p0, p2}, Landroid/hardware/bydauto/light/BYDAutoLightDevice;->getLightStatus(I)I

    move-result p0

    if-ne p0, v5, :cond_5a

    move v4, v5

    .line 146
    :cond_5a
    invoke-static {v0, v4}, Lcom/byd/carmodel/CarModelEventBindings;->play(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_6e

    const/16 p0, 0x3f4

    .line 147
    invoke-static {v0, p0, v4}, Lcom/byd/carmodel/CarModelExtraSignals;->setLamp(Ljava/lang/String;IZ)V
    :try_end_65
    .catchall {:try_start_6 .. :try_end_65} :catchall_66

    goto :goto_6e

    :catchall_66
    move-exception p0

    const-string p1, "CarModelExtraSignals"

    const-string p2, "\u540c\u6b65\u706f\u5149\u521d\u59cb\u72b6\u6001\u5931\u8d25"

    .line 151
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6e
    :goto_6e
    return-void
.end method

.method public static syncMovementFromSpeed()V
    .registers 6

    const-string v0, "CarModelExtraSignals"

    const-string v1, "\u540c\u6b65\u79fb\u52a8\u521d\u59cb\u72b6\u6001 speed="

    .line 197
    :try_start_4
    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object v2

    if-eqz v2, :cond_46

    .line 198
    iget-object v3, v2, Lf/k/l/i/b;->f:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    if-eqz v3, :cond_46

    iget-object v3, v2, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    if-nez v3, :cond_13

    goto :goto_46

    .line 202
    :cond_13
    iget-object v3, v2, Lf/k/l/i/b;->f:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    invoke-virtual {v3}, Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;->obtainSpeedInfo()Lcom/autosdk/bussiness/vehicle/BydAutoSpeed$Speed;

    move-result-object v3

    if-nez v3, :cond_21

    const-string v1, "\u540c\u6b65\u79fb\u52a8\u521d\u59cb\u72b6\u6001\uff1a\u6682\u65e0\u901f\u5ea6\u6570\u636e"

    .line 204
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 207
    :cond_21
    iget v4, v3, Lcom/autosdk/bussiness/vehicle/BydAutoSpeed$Speed;->currentSpeed:F

    float-to-int v4, v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 208
    :goto_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lcom/autosdk/bussiness/vehicle/BydAutoSpeed$Speed;->currentSpeed:F

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " moving="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v2, v4}, Lf/k/l/i/b;->p(Z)V

    goto :goto_52

    :cond_46
    :goto_46
    const-string v1, "\u540c\u6b65\u79fb\u52a8\u521d\u59cb\u72b6\u6001\uff1a\u63a7\u5236\u5668\u5c1a\u672a\u5c31\u7eea"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_4c

    return-void

    :catchall_4c
    move-exception v1

    const-string v2, "\u540c\u6b65\u79fb\u52a8\u521d\u59cb\u72b6\u6001\u5931\u8d25"

    .line 211
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    return-void
.end method
