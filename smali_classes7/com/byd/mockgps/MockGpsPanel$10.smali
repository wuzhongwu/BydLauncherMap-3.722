.class Lcom/byd/mockgps/MockGpsPanel$10;
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

    .line 236
    iput-object p1, p0, Lcom/byd/mockgps/MockGpsPanel$10;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 239
    invoke-static {}, Lcom/byd/mockgps/MockGps;->isFollowRoad()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 240
    invoke-static {p1}, Lcom/byd/mockgps/MockGps;->setFollowRoad(Z)V

    .line 241
    # getter for: Lcom/byd/mockgps/MockGpsPanel;->followView:Landroid/widget/TextView;
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$300()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 242
    # getter for: Lcom/byd/mockgps/MockGpsPanel;->followView:Landroid/widget/TextView;
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$300()Landroid/widget/TextView;

    move-result-object v0

    # invokes: Lcom/byd/mockgps/MockGpsPanel;->followText()Ljava/lang/String;
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_1a
    iget-object p0, p0, Lcom/byd/mockgps/MockGpsPanel$10;->val$ctx:Landroid/content/Context;

    if-eqz p1, :cond_21

    const-string p1, "\u6cbf\u8def\u884c\u9a76\uff1a\u8ddf\u7740\u9053\u8def\u8d70"

    goto :goto_23

    :cond_21
    const-string p1, "\u6cbf\u8def\u5df2\u5173\uff1a\u65b9\u5411\u7531\u5de6\u8f6c\u53f3\u8f6c\u63a7\u5236"

    :goto_23
    # invokes: Lcom/byd/mockgps/MockGpsPanel;->toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/byd/mockgps/MockGpsPanel;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
