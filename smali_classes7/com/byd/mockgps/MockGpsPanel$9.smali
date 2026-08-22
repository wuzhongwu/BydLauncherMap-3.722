.class Lcom/byd/mockgps/MockGpsPanel$9;
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

    .line 225
    iput-object p1, p0, Lcom/byd/mockgps/MockGpsPanel$9;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 228
    invoke-static {}, Lcom/byd/mockgps/MockGps;->backToStart()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 229
    iget-object p0, p0, Lcom/byd/mockgps/MockGpsPanel$9;->val$ctx:Landroid/content/Context;

    const-string p1, "\u5df2\u56de\u5230\u771f\u5b9e\u4f4d\u7f6e"

    # invokes: Lcom/byd/mockgps/MockGpsPanel;->toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/byd/mockgps/MockGpsPanel;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    .line 230
    # invokes: Lcom/byd/mockgps/MockGpsPanel;->refresh()V
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$000()V

    goto :goto_18

    .line 232
    :cond_11
    iget-object p0, p0, Lcom/byd/mockgps/MockGpsPanel$9;->val$ctx:Landroid/content/Context;

    const-string p1, "\u8fd8\u6ca1\u62ff\u5230\u771f\u5b9e\u5b9a\u4f4d"

    # invokes: Lcom/byd/mockgps/MockGpsPanel;->toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/byd/mockgps/MockGpsPanel;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    :goto_18
    return-void
.end method
