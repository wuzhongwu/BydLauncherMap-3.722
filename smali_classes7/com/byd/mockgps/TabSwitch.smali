.class public final Lcom/byd/mockgps/TabSwitch;
.super Ljava/lang/Object;
.source "TabSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/byd/mockgps/TabSwitch;->index:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/byd/mockgps/TabSwitch;->index:I

    invoke-static {v0}, Lcom/byd/mockgps/MockGpsPanel;->selectTab(I)V

    return-void
.end method
