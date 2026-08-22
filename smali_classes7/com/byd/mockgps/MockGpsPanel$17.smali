.class Lcom/byd/mockgps/MockGpsPanel$17;
.super Ljava/lang/Object;
.source "MockGpsPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/mockgps/MockGpsPanel;->startTicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 464
    # invokes: Lcom/byd/mockgps/MockGpsPanel;->refresh()V
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$000()V

    .line 465
    # getter for: Lcom/byd/mockgps/MockGpsPanel;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$900()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 466
    # getter for: Lcom/byd/mockgps/MockGpsPanel;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$900()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void
.end method
