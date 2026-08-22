.class Lcom/byd/mockgps/MockGpsPanel$3;
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

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    const-wide/high16 p0, -0x3fdc000000000000L    # -10.0

    .line 177
    invoke-static {p0, p1}, Lcom/byd/mockgps/MockGps;->addSpeed(D)V

    .line 178
    # invokes: Lcom/byd/mockgps/MockGpsPanel;->refresh()V
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$000()V

    return-void
.end method
