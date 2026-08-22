.class Lcom/byd/mockgps/MockGpsPanel$11;
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


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/byd/mockgps/MockGpsPanel$11;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 261
    iget-object p0, p0, Lcom/byd/mockgps/MockGpsPanel$11;->val$ctx:Landroid/content/Context;

    # invokes: Lcom/byd/mockgps/MockGpsPanel;->askMockTime(Landroid/content/Context;)V
    invoke-static {p0}, Lcom/byd/mockgps/MockGpsPanel;->access$500(Landroid/content/Context;)V

    return-void
.end method
