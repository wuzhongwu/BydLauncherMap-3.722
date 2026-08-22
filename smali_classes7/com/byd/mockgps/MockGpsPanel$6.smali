.class Lcom/byd/mockgps/MockGpsPanel$6;
.super Ljava/lang/Object;
.source "MockGpsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/mockgps/MockGpsPanel;->build(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    const-wide/16 p0, 0x0

    .line 198
    invoke-static {p0, p1}, Lcom/byd/mockgps/MockGps;->setSpeedKmh(D)V

    .line 199
    # invokes: Lcom/byd/mockgps/MockGpsPanel;->refresh()V
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$000()V

    return-void
.end method
