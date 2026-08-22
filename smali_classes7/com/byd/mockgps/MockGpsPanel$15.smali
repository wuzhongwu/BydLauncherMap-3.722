.class Lcom/byd/mockgps/MockGpsPanel$15;
.super Ljava/lang/Object;
.source "MockGpsPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/mockgps/MockGpsPanel;->askTeleport(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lcom/byd/mockgps/MockGpsPanel$15;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/byd/mockgps/MockGpsPanel$15;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 351
    iget-object p1, p0, Lcom/byd/mockgps/MockGpsPanel$15;->val$ctx:Landroid/content/Context;

    iget-object p0, p0, Lcom/byd/mockgps/MockGpsPanel$15;->val$input:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    # invokes: Lcom/byd/mockgps/MockGpsPanel;->doTeleport(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p1, p0}, Lcom/byd/mockgps/MockGpsPanel;->access$800(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
