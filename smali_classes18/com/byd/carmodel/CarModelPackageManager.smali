.class public final Lcom/byd/carmodel/CarModelPackageManager;
.super Ljava/lang/Object;
.source "CarModelPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/carmodel/CarModelPackageManager$Callback;
    }
.end annotation


# static fields
.field private static final ALLOWED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static importing:Z

.field private static volatile restartPromptPending:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/byd/carmodel/CarModelPackageManager;->ALLOWED:Ljava/util/Set;

    const-string v1, "manifest.json"

    .line 37
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/CarSelf.dat"

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CarSelf_Main.png"

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_Shadow.png"

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_LDirection.png"

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_RDirection.png"

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_Stop.png"

    .line 43
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_High.png"

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_Lower.png"

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_Emergency.png"

    .line 46
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_Daytime.png"

    .line 47
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_Fog.png"

    .line 48
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_Backup.png"

    .line 49
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_Clearance.png"

    .line 50
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "payload/Texture/CS_LPN.png"

    .line 51
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Lcom/byd/carmodel/CarModelPackageManager;->install(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 31
    sput-boolean p0, Lcom/byd/carmodel/CarModelPackageManager;->importing:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .line 31
    sput-boolean p0, Lcom/byd/carmodel/CarModelPackageManager;->restartPromptPending:Z

    return p0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-static {p0, p1}, Lcom/byd/carmodel/CarModelPackageManager;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static consumeRestartPrompt()Z
    .registers 2

    .line 105
    sget-boolean v0, Lcom/byd/carmodel/CarModelPackageManager;->restartPromptPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 106
    sput-boolean v1, Lcom/byd/carmodel/CarModelPackageManager;->restartPromptPending:Z

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method private static copyUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 291
    :try_start_6
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2e

    const/16 p2, 0x2000

    :try_start_d
    new-array p2, p2, [B

    .line 295
    :goto_f
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x0

    .line 296
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_f

    .line 298
    :cond_1b
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_29

    .line 300
    :try_start_22
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2e

    .line 303
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_29
    move-exception p2

    .line 300
    :try_start_2a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 301
    throw p2
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p1

    .line 303
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 304
    throw p1

    .line 289
    :cond_33
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "FILE_OPEN_FAILED"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static currentLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1c

    .line 62
    invoke-static {p0}, Lcom/byd/carmodel/CarModelResolver;->activeModel(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1c

    .line 65
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/byd/carmodel/CarModelResolver;->activeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c
    :goto_1c
    const-string p0, "\u5f53\u524d\uff1a\u5c1a\u672a\u5bfc\u5165"

    return-object p0
.end method

.method private static deleteTree(Ljava/io/File;)V
    .registers 5

    if-eqz p0, :cond_24

    .line 322
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_24

    .line 323
    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 324
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 325
    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/byd/carmodel/CarModelPackageManager;->deleteTree(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 327
    :cond_21
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_24
    :goto_24
    return-void
.end method

.method public static handleCustomClick(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 92
    :cond_4
    invoke-static {p0}, Lcom/byd/carmodel/CarModelResolver;->activeModel(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-static {p0}, Lcom/byd/carmodel/CarModelResolver;->isActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 93
    invoke-static {p0}, Lcom/byd/carmodel/CarModelResolver;->reactivate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const-string v1, "\u5207\u6362\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5bfc\u5165\u8f66\u6a21\u5305"

    .line 96
    invoke-static {p0, v1}, Lcom/byd/carmodel/CarModelPackageManager;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    .line 99
    :cond_1e
    invoke-static {p0}, Lcom/byd/carmodel/CarModelPackageManager;->openPicker(Landroid/content/Context;)V

    return v0
.end method

.method private static hash([B)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 315
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 317
    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_2d

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 318
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static importAsync(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 113
    invoke-static {p0, p1, v0}, Lcom/byd/carmodel/CarModelPackageManager;->importAsync(Landroid/content/Context;Landroid/net/Uri;Lcom/byd/carmodel/CarModelPackageManager$Callback;)V

    return-void
.end method

.method public static importAsync(Landroid/content/Context;Landroid/net/Uri;Lcom/byd/carmodel/CarModelPackageManager$Callback;)V
    .registers 5

    .line 117
    const-class v0, Lcom/byd/carmodel/CarModelPackageManager;

    monitor-enter v0

    .line 118
    :try_start_3
    sget-boolean v1, Lcom/byd/carmodel/CarModelPackageManager;->importing:Z

    if-eqz v1, :cond_18

    if-eqz p2, :cond_11

    const-string p0, "\u5df2\u6709\u8f66\u6a21\u6b63\u5728\u5bfc\u5165"

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-interface {p2, p1, v1, p0}, Lcom/byd/carmodel/CarModelPackageManager$Callback;->onDone(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_11
    const-string p1, "\u5df2\u6709\u8f66\u6a21\u6b63\u5728\u5bfc\u5165"

    .line 122
    invoke-static {p0, p1}, Lcom/byd/carmodel/CarModelPackageManager;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    :goto_16
    monitor-exit v0

    return-void

    :cond_18
    const/4 v1, 0x1

    .line 126
    sput-boolean v1, Lcom/byd/carmodel/CarModelPackageManager;->importing:Z

    .line 127
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_2c

    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/byd/carmodel/CarModelPackageManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/byd/carmodel/CarModelPackageManager$1;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/byd/carmodel/CarModelPackageManager$Callback;)V

    const-string p0, "byd-car-model-import"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_2c
    move-exception p0

    .line 127
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private static install(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "sha256"

    const-string v1, "size"

    const-string v2, "path"

    const-string v3, "payload/CarSelf.dat"

    const-string v4, "manifest.json"

    .line 166
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "bydcar"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    new-instance v6, Ljava/io/File;

    const-string v7, "incoming"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "staging/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    new-instance v8, Ljava/io/File;

    const-string v9, "models"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    new-instance v9, Ljava/io/File;

    const-string v10, "staging"

    invoke-direct {v9, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/byd/carmodel/CarModelPackageManager;->deleteTree(Ljava/io/File;)V

    .line 171
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v5

    const-string v9, "STORAGE_ERROR"

    if-nez v5, :cond_5d

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_57

    goto :goto_5d

    :cond_57
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_5d
    :goto_5d
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_70

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6a

    goto :goto_70

    :cond_6a
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_70
    :goto_70
    new-instance v5, Ljava/io/File;

    const-string v10, "package.bydcar"

    invoke-direct {v5, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    :try_start_77
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v10, p1

    invoke-static {v6, v10, v5}, Lcom/byd/carmodel/CarModelPackageManager;->copyUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)V

    .line 176
    invoke-static {v5}, Lcom/byd/carmodel/CarModelPackageManager;->readZip(Ljava/io/File;)Ljava/util/Map;

    move-result-object v6

    .line 177
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 178
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    if-eqz v10, :cond_254

    if-eqz v11, :cond_254

    .line 180
    new-instance v12, Lorg/json/JSONObject;

    new-instance v13, Ljava/lang/String;

    const-string v14, "UTF-8"

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v13, v10, v14}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v13, "com.byd.launchermap.bydcar"

    const-string v14, "format"

    .line 181
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24a

    const-string v13, "formatVersion"

    const/4 v14, -0x1

    .line 182
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_24a

    const-string v13, "model"

    .line 183
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 184
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_240

    const-wide/16 v14, -0x1

    .line 185
    invoke-virtual {v13, v1, v14, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v16

    array-length v14, v11

    int-to-long v14, v14

    cmp-long v14, v16, v14

    if-nez v14, :cond_240

    .line 186
    invoke-static {v11}, Lcom/byd/carmodel/CarModelPackageManager;->hash([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_240

    .line 189
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 190
    invoke-interface {v13, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "resources"

    .line 192
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_153

    const/4 v15, 0x0

    .line 194
    :goto_fa
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v15, v14, :cond_153

    .line 195
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    move-object/from16 v16, v3

    .line 196
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v2

    move-object/from16 v2, v17

    check-cast v2, [B
    :try_end_114
    .catchall {:try_start_77 .. :try_end_114} :catchall_260

    move-object/from16 v17, v5

    .line 198
    :try_start_116
    sget-object v5, Lcom/byd/carmodel/CarModelPackageManager;->ALLOWED:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14b

    if-eqz v2, :cond_14b

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14b

    move-object v5, v4

    const-wide/16 v3, -0x1

    .line 199
    invoke-virtual {v14, v1, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v18

    array-length v3, v2

    int-to-long v3, v3

    cmp-long v3, v18, v3

    if-nez v3, :cond_14b

    .line 200
    invoke-static {v2}, Lcom/byd/carmodel/CarModelPackageManager;->hash([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    add-int/lit8 v15, v15, 0x1

    move-object v4, v5

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move-object/from16 v2, v20

    goto :goto_fa

    .line 201
    :cond_14b
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "RESOURCE_HASH_MISMATCH"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_153
    move-object/from16 v17, v5

    move-object v5, v4

    .line 205
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_238

    const-string v0, "payload/Texture/CarSelf_Main.png"

    .line 206
    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_238

    .line 209
    invoke-static {v11}, Lcom/byd/carmodel/CarSelfDatValidator;->validate([B)V

    .line 210
    invoke-static {v11}, Lcom/byd/carmodel/CarModelPackageManager;->hash([B)Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1eb

    .line 213
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_18d

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_187

    goto :goto_18d

    :cond_187
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_18d
    :goto_18d
    new-instance v2, Ljava/io/File;

    const-string v3, "CarSelf.dat"

    invoke-direct {v2, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v11}, Lcom/byd/carmodel/CarModelPackageManager;->writeFile(Ljava/io/File;[B)V

    .line 215
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v10}, Lcom/byd/carmodel/CarModelPackageManager;->writeFile(Ljava/io/File;[B)V

    .line 216
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a7
    :goto_1a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1dc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 217
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "payload/Texture/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 218
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 219
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v5, v3}, Lcom/byd/carmodel/CarModelPackageManager;->writeFile(Ljava/io/File;[B)V

    goto :goto_1a7

    .line 222
    :cond_1dc
    invoke-virtual {v7, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    goto :goto_1f3

    :cond_1e3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "INSTALL_RENAME_FAILED"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1eb
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v10}, Lcom/byd/carmodel/CarModelPackageManager;->writeFile(Ljava/io/File;[B)V

    :goto_1f3
    const-string v1, "name"

    const-string v2, "\u81ea\u5b9a\u4e49"

    .line 228
    invoke-virtual {v12, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    .line 229
    invoke-static {v2, v0, v1}, Lcom/byd/carmodel/CarModelResolver;->activate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_230

    .line 230
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_21f

    .line 232
    array-length v3, v2

    const/4 v14, 0x0

    :goto_20b
    if-ge v14, v3, :cond_21f

    aget-object v4, v2, v14

    .line 233
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21c

    .line 234
    invoke-static {v4}, Lcom/byd/carmodel/CarModelPackageManager;->deleteTree(Ljava/io/File;)V

    :cond_21c
    add-int/lit8 v14, v14, 0x1

    goto :goto_20b

    .line 238
    :cond_21f
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0
    :try_end_223
    .catchall {:try_start_116 .. :try_end_223} :catchall_25e

    .line 240
    invoke-static {v7}, Lcom/byd/carmodel/CarModelPackageManager;->deleteTree(Ljava/io/File;)V

    .line 241
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_22f

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    :cond_22f
    return-object v0

    .line 229
    :cond_230
    :try_start_230
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "PREFERENCE_FAILED"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_238
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "PACKAGE_FILE_LIST_INVALID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_240
    move-object/from16 v17, v5

    .line 187
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "HASH_MISMATCH"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24a
    move-object/from16 v17, v5

    .line 182
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "MANIFEST_VERSION_UNSUPPORTED"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_254
    move-object/from16 v17, v5

    .line 179
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "PACKAGE_FILES_MISSING"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25e
    .catchall {:try_start_230 .. :try_end_25e} :catchall_25e

    :catchall_25e
    move-exception v0

    goto :goto_263

    :catchall_260
    move-exception v0

    move-object/from16 v17, v5

    .line 240
    :goto_263
    invoke-static {v7}, Lcom/byd/carmodel/CarModelPackageManager;->deleteTree(Ljava/io/File;)V

    .line 241
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_26f

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 242
    :cond_26f
    throw v0
.end method

.method public static openPicker(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 72
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/byd/carmodel/CarModelImportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_13

    const/high16 v1, 0x10000000

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 77
    :cond_13
    :try_start_13
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1c

    :catchall_17
    const-string v0, "\u65e0\u6cd5\u6253\u5f00\u8f66\u6a21\u5bfc\u5165\u9875\u9762"

    .line 79
    invoke-static {p0, v0}, Lcom/byd/carmodel/CarModelPackageManager;->toast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method private static readAll(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 281
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    .line 282
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 284
    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static readZip(Ljava/io/File;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 248
    new-instance p0, Ljava/util/zip/ZipInputStream;

    invoke-direct {p0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 251
    :goto_f
    :try_start_f
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 252
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {v2}, Lcom/byd/carmodel/CarModelPackageManager;->validateName(Ljava/lang/String;)V

    .line 254
    sget-object v3, Lcom/byd/carmodel/CarModelPackageManager;->ALLOWED:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 257
    invoke-static {p0}, Lcom/byd/carmodel/CarModelPackageManager;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_f

    .line 255
    :cond_3b
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "ZIP_ENTRY_INVALID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_47

    .line 261
    :cond_43
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    return-object v0

    :catchall_47
    move-exception v0

    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 262
    throw v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    .line 331
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_a
    return-void
.end method

.method private static validateName(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ZIP_PATH_INVALID"

    if-eqz p0, :cond_53

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_53

    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_53

    const-string v1, "/"

    .line 268
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_53

    const/4 v3, -0x1

    .line 269
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 270
    array-length v1, p0

    :goto_27
    if-ge v2, v1, :cond_52

    aget-object v3, p0, v2

    .line 271
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4c

    const-string v4, "."

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    const-string v4, ".."

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_4c

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 272
    :cond_4c
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_52
    return-void

    .line 268
    :cond_53
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static writeFile(Ljava/io/File;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "STORAGE_ERROR"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 310
    :cond_1b
    :goto_1b
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 311
    :try_start_20
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_2e
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p0
.end method
