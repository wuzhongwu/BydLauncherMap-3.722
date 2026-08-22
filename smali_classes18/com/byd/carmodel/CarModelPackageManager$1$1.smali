.class Lcom/byd/carmodel/CarModelPackageManager$1$1;
.super Ljava/lang/Object;
.source "CarModelPackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/carmodel/CarModelPackageManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/byd/carmodel/CarModelPackageManager$1;

.field final synthetic val$modelName:Ljava/lang/String;

.field final synthetic val$success:Z

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/byd/carmodel/CarModelPackageManager$1;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->this$0:Lcom/byd/carmodel/CarModelPackageManager$1;

    iput-boolean p2, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->val$success:Z

    iput-object p3, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->val$modelName:Ljava/lang/String;

    iput-object p4, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->this$0:Lcom/byd/carmodel/CarModelPackageManager$1;

    iget-object v0, v0, Lcom/byd/carmodel/CarModelPackageManager$1;->val$callback:Lcom/byd/carmodel/CarModelPackageManager$Callback;

    if-eqz v0, :cond_14

    .line 155
    iget-object v0, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->this$0:Lcom/byd/carmodel/CarModelPackageManager$1;

    iget-object v0, v0, Lcom/byd/carmodel/CarModelPackageManager$1;->val$callback:Lcom/byd/carmodel/CarModelPackageManager$Callback;

    iget-boolean v1, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->val$success:Z

    iget-object v2, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->val$modelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->val$text:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/byd/carmodel/CarModelPackageManager$Callback;->onDone(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 157
    :cond_14
    iget-object v0, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->this$0:Lcom/byd/carmodel/CarModelPackageManager$1;

    iget-object v0, v0, Lcom/byd/carmodel/CarModelPackageManager$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelPackageManager$1$1;->val$text:Ljava/lang/String;

    # invokes: Lcom/byd/carmodel/CarModelPackageManager;->toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/byd/carmodel/CarModelPackageManager;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method
