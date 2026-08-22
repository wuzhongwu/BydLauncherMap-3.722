.class public final Lcom/byd/mockgps/ParamAdj;
.super Ljava/lang/Object;
.source "ParamAdj.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final base:Ljava/lang/String;

.field private final delta:F

.field private final label:Ljava/lang/String;

.field private final max:F

.field private final min:F

.field private final view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFFLandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byd/mockgps/ParamAdj;->base:Ljava/lang/String;

    iput-object p2, p0, Lcom/byd/mockgps/ParamAdj;->label:Ljava/lang/String;

    iput p3, p0, Lcom/byd/mockgps/ParamAdj;->delta:F

    iput p4, p0, Lcom/byd/mockgps/ParamAdj;->min:F

    iput p5, p0, Lcom/byd/mockgps/ParamAdj;->max:F

    iput-object p6, p0, Lcom/byd/mockgps/ParamAdj;->view:Landroid/widget/TextView;

    return-void
.end method

.method public static text(Ljava/lang/String;F)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public sync()V
    .locals 3

    iget-object v0, p0, Lcom/byd/mockgps/ParamAdj;->view:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/byd/mockgps/ParamAdj;->base:Ljava/lang/String;

    invoke-static {v1}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/byd/mockgps/ParamAdj;->label:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/byd/mockgps/ParamAdj;->text(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/byd/mockgps/ParamAdj;->base:Ljava/lang/String;

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->getAuto(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/byd/mockgps/ParamAdj;->delta:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/byd/mockgps/ParamAdj;->min:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iget v1, p0, Lcom/byd/mockgps/ParamAdj;->max:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/byd/mockgps/ParamAdj;->base:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/byd/lane/ClusterLaneMode;->setAuto(Ljava/lang/String;F)V

    invoke-virtual {p0}, Lcom/byd/mockgps/ParamAdj;->sync()V

    return-void
.end method
