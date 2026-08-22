.class public final Lcom/byd/mockgps/PanelToggle;
.super Ljava/lang/Object;
.source "PanelToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final btn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/mockgps/PanelToggle;->btn:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/byd/mockgps/PanelToggle;->btn:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/byd/mockgps/MockGpsPanel;->toggleCollapse(Landroid/widget/TextView;)V

    return-void
.end method
