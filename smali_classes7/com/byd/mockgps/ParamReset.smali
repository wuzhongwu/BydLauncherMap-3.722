.class public final Lcom/byd/mockgps/ParamReset;
.super Ljava/lang/Object;
.source "ParamReset.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/byd/lane/ClusterLaneMode;->resetParams()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byd/mockgps/MockGpsPanel;->show(Landroid/content/Context;)V

    return-void
.end method
