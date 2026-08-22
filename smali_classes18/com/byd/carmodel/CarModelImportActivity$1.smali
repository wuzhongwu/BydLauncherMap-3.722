.class Lcom/byd/carmodel/CarModelImportActivity$1;
.super Ljava/lang/Object;
.source "CarModelImportActivity.java"

# interfaces
.implements Lcom/byd/carmodel/CarModelPackageManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/carmodel/CarModelImportActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/byd/carmodel/CarModelImportActivity;


# direct methods
.method constructor <init>(Lcom/byd/carmodel/CarModelImportActivity;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/byd/carmodel/CarModelImportActivity$1;->this$0:Lcom/byd/carmodel/CarModelImportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 53
    iget-object v0, p0, Lcom/byd/carmodel/CarModelImportActivity$1;->this$0:Lcom/byd/carmodel/CarModelImportActivity;

    # invokes: Lcom/byd/carmodel/CarModelImportActivity;->onImportDone(ZLjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/byd/carmodel/CarModelImportActivity;->access$000(Lcom/byd/carmodel/CarModelImportActivity;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
