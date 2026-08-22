.class Lcom/byd/carmodel/CarModelPackageManager$1;
.super Ljava/lang/Object;
.source "CarModelPackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/carmodel/CarModelPackageManager;->importAsync(Landroid/content/Context;Landroid/net/Uri;Lcom/byd/carmodel/CarModelPackageManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/byd/carmodel/CarModelPackageManager$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/byd/carmodel/CarModelPackageManager$Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/byd/carmodel/CarModelPackageManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/byd/carmodel/CarModelPackageManager$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/byd/carmodel/CarModelPackageManager$1;->val$callback:Lcom/byd/carmodel/CarModelPackageManager$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "\u5bfc\u5165\u6210\u529f\uff1a"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 135
    :try_start_5
    iget-object v4, p0, Lcom/byd/carmodel/CarModelPackageManager$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelPackageManager$1;->val$uri:Landroid/net/Uri;

    # invokes: Lcom/byd/carmodel/CarModelPackageManager;->install(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/byd/carmodel/CarModelPackageManager;->access$000(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    .line 136
    aget-object v2, v4, v1

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v4, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c\u91cd\u542f\u5730\u56fe\u540e\u751f\u6548"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_24

    move v4, v1

    goto :goto_38

    :catchall_24
    move-exception v0

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8f66\u6a21\u5305\u65e0\u6548\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v3

    .line 145
    :goto_38
    const-class v5, Lcom/byd/carmodel/CarModelPackageManager;

    monitor-enter v5

    .line 146
    :try_start_3b
    # setter for: Lcom/byd/carmodel/CarModelPackageManager;->importing:Z
    invoke-static {v3}, Lcom/byd/carmodel/CarModelPackageManager;->access$102(Z)Z

    .line 147
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_56

    if-eqz v4, :cond_44

    .line 149
    # setter for: Lcom/byd/carmodel/CarModelPackageManager;->restartPromptPending:Z
    invoke-static {v1}, Lcom/byd/carmodel/CarModelPackageManager;->access$202(Z)Z

    .line 151
    :cond_44
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/byd/carmodel/CarModelPackageManager$1$1;

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/byd/carmodel/CarModelPackageManager$1$1;-><init>(Lcom/byd/carmodel/CarModelPackageManager$1;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_56
    move-exception v0

    .line 147
    :try_start_57
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0
.end method
