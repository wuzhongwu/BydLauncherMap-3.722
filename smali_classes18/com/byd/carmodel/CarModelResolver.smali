.class public final Lcom/byd/carmodel/CarModelResolver;
.super Ljava/lang/Object;
.source "CarModelResolver.java"


# static fields
.field private static final ACTIVE:Ljava/lang/String; = "active_sha"

.field private static final ENABLED:Ljava/lang/String; = "enabled"

.field private static final PREF:Ljava/lang/String; = "byd_car_package"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "byd_car_package"

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "active_sha"

    .line 79
    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "enabled"

    const/4 v4, 0x1

    .line 80
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-nez p2, :cond_1c

    const-string p2, "\u81ea\u5b9a\u4e49"

    :cond_1c
    const-string v2, "display_name"

    .line 81
    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "previous_sha"

    .line 82
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_2f

    return v1

    :cond_2f
    const-string p1, "byd_car_model"

    .line 87
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 88
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "model"

    const-string v1, "Custom/"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_57

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5a

    .line 92
    :cond_57
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->reload(Landroid/content/Context;)V

    :goto_5a
    return p1
.end method

.method static activeManifest(Landroid/content/Context;)Ljava/io/File;
    .registers 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    .line 59
    invoke-static {p0}, Lcom/byd/carmodel/CarModelResolver;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3e

    :cond_a
    const-string v1, "byd_car_package"

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "active_sha"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/byd/carmodel/CarModelResolver;->isSha(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    return-object v0

    .line 66
    :cond_20
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v5, "bydcar/models"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "manifest.json"

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_3e

    move-object v0, v2

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method static activeModel(Landroid/content/Context;)Ljava/io/File;
    .registers 7

    const-string v0, "byd_car_package"

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "active_sha"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/byd/carmodel/CarModelResolver;->isSha(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    return-object v2

    .line 53
    :cond_17
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v5, "bydcar/models"

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "CarSelf.dat"

    invoke-direct {v1, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_35

    move-object v2, v1

    :cond_35
    return-object v2
.end method

.method static activeName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "byd_car_package"

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "display_name"

    const-string v1, "\u81ea\u5b9a\u4e49"

    .line 73
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deactivate(Landroid/content/Context;)V
    .registers 4

    if-eqz p0, :cond_19

    const-string v0, "byd_car_package"

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "enabled"

    .line 126
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->reload(Landroid/content/Context;)V

    :cond_19
    return-void
.end method

.method static isActive(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    .line 113
    invoke-static {p0}, Lcom/byd/carmodel/CarModelResolver;->activeModel(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2e

    :cond_a
    const-string v1, "byd_car_package"

    .line 116
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enabled"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_19

    return v0

    :cond_19
    const-string v1, "byd_car_model"

    .line 119
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "model"

    const-string v1, ""

    .line 120
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Custom/"

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2e
    :goto_2e
    return v0
.end method

.method private static isSha(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2e

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_c

    goto :goto_2e

    :cond_c
    move v1, v0

    .line 135
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 136
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x39

    if-le v2, v3, :cond_28

    :cond_1f
    const/16 v3, 0x61

    if-lt v2, v3, :cond_2b

    const/16 v3, 0x66

    if-le v2, v3, :cond_28

    goto :goto_2b

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2b
    :goto_2b
    return v0

    :cond_2c
    const/4 p0, 0x1

    return p0

    :cond_2e
    :goto_2e
    return v0
.end method

.method static reactivate(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    .line 99
    invoke-static {p0}, Lcom/byd/carmodel/CarModelResolver;->activeModel(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_3f

    :cond_a
    const-string v1, "byd_car_package"

    .line 102
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "byd_car_model"

    .line 104
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "model"

    const-string v4, "Custom/"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_3a

    move v0, v3

    :cond_3a
    if-eqz v0, :cond_3f

    .line 107
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->reload(Landroid/content/Context;)V

    :cond_3f
    :goto_3f
    return v0
.end method

.method private static relativeName(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_32

    const/4 p0, 0x0

    return-object p0

    :pswitch_5
    const-string p0, "Texture/CS_DIY.png"

    return-object p0

    :pswitch_8
    const-string p0, "Texture/CS_Daytime.png"

    return-object p0

    :pswitch_b
    const-string p0, "Texture/CS_Fog.png"

    return-object p0

    :pswitch_e
    const-string p0, "Texture/CS_Backup.png"

    return-object p0

    :pswitch_11
    const-string p0, "Texture/CS_Clearance.png"

    return-object p0

    :pswitch_14
    const-string p0, "Texture/CS_Emergency.png"

    return-object p0

    :pswitch_17
    const-string p0, "Texture/CS_RDirection.png"

    return-object p0

    :pswitch_1a
    const-string p0, "Texture/CS_LDirection.png"

    return-object p0

    :pswitch_1d
    const-string p0, "Texture/Rear_Ring_noa_day.png"

    return-object p0

    :pswitch_20
    const-string p0, "Texture/CS_Stop.png"

    return-object p0

    :pswitch_23
    const-string p0, "Texture/CS_High.png"

    return-object p0

    :pswitch_26
    const-string p0, "Texture/CS_Lower.png"

    return-object p0

    :pswitch_29
    const-string p0, "Texture/CarSelf_Main.png"

    return-object p0

    :pswitch_2c
    const-string p0, "Texture/CS_Shadow.png"

    return-object p0

    :pswitch_2f
    const-string p0, "CarSelf.dat"

    return-object p0

    :pswitch_data_32
    .packed-switch 0x3e9
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static resolve(Landroid/content/Context;I)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7f

    const/16 v1, 0x3e9

    if-lt p1, v1, :cond_7f

    const/16 v1, 0x3f7

    if-le p1, v1, :cond_c

    goto :goto_7f

    :cond_c
    const-string v1, "byd_car_package"

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "enabled"

    .line 23
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    return-object v0

    :cond_1c
    const-string v2, "active_sha"

    const-string v3, ""

    .line 26
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/byd/carmodel/CarModelResolver;->isSha(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    return-object v0

    .line 30
    :cond_2b
    invoke-static {p1}, Lcom/byd/carmodel/CarModelResolver;->relativeName(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_32

    return-object v0

    .line 34
    :cond_32
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v4, "bydcar/models"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    :try_start_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_7f

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-gtz p0, :cond_77

    goto :goto_7f

    .line 42
    :cond_77
    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_47 .. :try_end_7e} :catchall_7f

    return-object p0

    :catchall_7f
    :cond_7f
    :goto_7f
    return-object v0
.end method
