.class public Lg/a/b/a;
.super Lg/a/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/a/a/a/b<",
        "Lextview/presentation/cruise/CruiseExtraPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Landroid/view/View;

.field public d:Lcom/autonavi/skin/view/SkinConstraintLayout;

.field public e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

.field public f:Lcom/autonavi/view/custom/CustomSpeedometerView;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/a/a/a/b;-><init>(Landroid/view/View;)V

    const/4 p1, 0x4

    iput p1, p0, Lg/a/b/a;->g:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v1, Lcom/autosdk/drive/R$id;->constant:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinConstraintLayout;

    iput-object v0, p0, Lg/a/b/a;->d:Lcom/autonavi/skin/view/SkinConstraintLayout;

    return-void
.end method

.method public e()Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;
    .locals 1

    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    return-object v0
.end method

.method public f()V
    .locals 12

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CruiseExtraView"

    const-string v2, "onSizeToFull()===="

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v8, Lcom/autosdk/drive/R$id;->cl_cruise_manager:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinConstraintLayout;

    if-eqz v0, :cond_9

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v2

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v2, :cond_3

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/16 :goto_5

    :cond_3
    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v10, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_228:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v9

    move v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_194:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v8, Lcom/autosdk/drive/R$id;->cl_cruise_manager:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinConstraintLayout;

    if-eqz v0, :cond_9

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    :goto_0
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v10, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_228:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v9

    move v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_218:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v9

    move v3, v10

    :goto_2
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_64:I

    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v9, v10, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    invoke-virtual {v9, v10, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/16 :goto_6

    :cond_5
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    :goto_4
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v10, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_208:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v9

    move v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_170:I

    goto :goto_1

    :cond_6
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto :goto_4

    :cond_7
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v2

    new-instance v9, Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v2, :cond_8

    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    :goto_5
    invoke-virtual {v9, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v10, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_250:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v9

    move v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_300:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v9

    move v3, v10

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_52:I

    goto/16 :goto_3

    :cond_8
    invoke-direct {v9}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v9, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v10, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v9, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v11, Lcom/autosdk/drive/R$dimen;->auto_dimen2_218:I

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v9

    move v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v9

    goto/16 :goto_2

    :cond_9
    :goto_6
    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    if-eqz v0, :cond_a

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;->setIsNormal(Z)V

    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;->setDriveWayShow()V

    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->bindCruiseLane(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method public g()V
    .locals 13

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CruiseExtraView"

    const-string v2, "onSizeToSmall()===="

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x7

    const/4 v3, 0x6

    if-eqz v0, :cond_8

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v10, Lcom/autosdk/drive/R$id;->cl_cruise_manager:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinConstraintLayout;

    if-eqz v0, :cond_10

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v4

    new-instance v11, Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v4, :cond_1

    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v11, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v12, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiLink5_1()Z

    move-result v4

    const/4 v6, 0x3

    const/4 v8, 0x3

    if-eqz v4, :cond_0

    iget-object v4, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/autosdk/drive/R$dimen;->auto_dimen2_148:I

    goto/16 :goto_0

    :cond_0
    iget-object v4, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/autosdk/drive/R$dimen;->auto_dimen2_441:I

    goto/16 :goto_0

    :cond_1
    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v4

    new-instance v11, Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v4, :cond_3

    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/16 :goto_6

    :cond_3
    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/16 :goto_7

    :cond_4
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v4

    new-instance v11, Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v4, :cond_5

    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/16 :goto_6

    :cond_5
    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/16 :goto_7

    :cond_6
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v4

    new-instance v11, Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v4, :cond_7

    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/16 :goto_8

    :cond_7
    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v10, Lcom/autosdk/drive/R$id;->cl_cruise_manager:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinConstraintLayout;

    if-eqz v0, :cond_10

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v4

    new-instance v11, Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v4, :cond_9

    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {v11, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v12, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v6, 0x3

    const/4 v8, 0x3

    iget-object v4, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/autosdk/drive/R$dimen;->auto_dimen2_441:I

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v9, v4

    move-object v4, v11

    move v5, v12

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    sget v4, Lcom/autosdk/drive/R$id;->gl_cruise_lane_line_85:I

    :goto_1
    invoke-virtual {v11, v12, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v11, v12, v2, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_4

    :cond_9
    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    :goto_2
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v12, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v6, 0x3

    const/4 v8, 0x3

    iget-object v4, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/autosdk/drive/R$dimen;->auto_dimen2_192:I

    :goto_3
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v9, v4

    move-object v4, v11

    move v5, v12

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v11, v12, v3, v10, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v11, v12, v2, v10, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :goto_4
    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_64:I

    :goto_5
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v11, v12, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    invoke-virtual {v11, v12, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {v11, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/16 :goto_9

    :cond_a
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v4

    new-instance v11, Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v4, :cond_b

    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    :goto_6
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v12, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v6, 0x3

    const/4 v8, 0x3

    iget-object v4, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/autosdk/drive/R$dimen;->auto_dimen2_441:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v9, v4

    move-object v4, v11

    move v5, v12

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    #sget v4, Lcom/autosdk/drive/R$id;->gl_cruise_lane_line_83:I
    invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getSmallCarCruiseInfoId()I

    move-result v4
    goto :goto_1

    :cond_b
    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    :goto_7
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v12, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v6, 0x3

    const/4 v8, 0x3

    iget-object v4, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/autosdk/drive/R$dimen;->auto_dimen2_253:I

    goto :goto_3

    :cond_c
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v4

    new-instance v11, Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v4, :cond_d

    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto :goto_6

    :cond_d
    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto :goto_7

    :cond_e
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v4

    new-instance v11, Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v4, :cond_f

    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    :goto_8
    invoke-virtual {v11, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v12, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    const/4 v6, 0x3

    const/4 v8, 0x3

    iget-object v4, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/autosdk/drive/R$dimen;->auto_dimen2_148:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v9, v4

    move-object v4, v11

    move v5, v12

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    sget v4, Lcom/autosdk/drive/R$id;->gl_cruise_lane_line_85:I

    invoke-virtual {v11, v12, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v11, v12, v2, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget-object v2, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_52:I

    goto/16 :goto_5

    :cond_f
    invoke-direct {v11}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto :goto_7

    :cond_10
    :goto_9
    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    if-eqz v0, :cond_11

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;->setIsNormal(Z)V

    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;->setDriveWayShow()V

    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->bindCruiseLane(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method public h()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "CruiseExtraView"

    const-string v3, "removeView:\u7ed3\u675f\u5de1\u822a"

    invoke-static {v2, v3, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lg/a/b/a;->d:Lcom/autonavi/skin/view/SkinConstraintLayout;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v0, p0, Lg/a/b/a;->f:Lcom/autonavi/view/custom/CustomSpeedometerView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lg/a/b/a;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lg/a/b/a;->d:Lcom/autonavi/skin/view/SkinConstraintLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lg/a/b/a;->c:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    aput-object v1, v3, v0

    const-string v0, "removeView:\u7ed3\u675f\u5de1\u822a mParentContent=null:{?}   rootView=null:{?}"

    invoke-static {v2, v0, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lg/a/b/a;->g:I

    return-void
.end method

.method public j(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lg/a/b/a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string v1, "CruiseExtraView"

    const-string v2, "showLaneInfo()====mDisplayType:{?},laneBackInfo\uff1a{?}, laneSelectInfo:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;->showDriveWay()V

    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;->setIsNormal(Z)V

    iget-object v2, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;->buildDriveWay(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Z

    iget-object v0, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-static {v0}, Lcom/byd/lane/ClusterLaneMode;->bindCruiseLane(Landroid/view/View;)V

    return-void
.end method

.method public k(I)V
    .locals 3

    iput p1, p0, Lg/a/b/a;->g:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CruiseExtraView"

    const-string v2, "showView()===="

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    sget v1, Lcom/autosdk/drive/R$layout;->display_layout_cruise_manager_index_normal:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/autosdk/drive/R$layout;->display_layout_cruise_manager_index_abnomal:I

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lg/a/b/a;->c:Landroid/view/View;

    iget-object p1, p0, Lg/a/b/a;->c:Landroid/view/View;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lg/a/b/a;->c:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lg/a/b/a;->d:Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lg/a/b/a;->d:Lcom/autonavi/skin/view/SkinConstraintLayout;

    iget-object v0, p0, Lg/a/b/a;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lg/a/b/a;->c:Landroid/view/View;

    sget v0, Lcom/autosdk/drive/R$id;->cctl_traffic_lane:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    iput-object p1, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-static {p1}, Lcom/byd/lane/ClusterLaneMode;->bindCruiseLane(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/autonavi/skin/view/SkinConstraintLayout;->getAdpter()Lcom/autonavi/skin/inter/ISkin$ISkinAdapter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/autonavi/skin/inter/ISkin$ISkinAdapter;->setSkinDayNightStyle(Z)V

    iget-object p1, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;->setIsNormal(Z)V

    iget-object p1, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-virtual {p1}, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;->changeBackground()V

    iget-object p1, p0, Lg/a/b/a;->e:Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;

    invoke-virtual {p1}, Lcom/autonavi/view/custom/CustomExtCruiseTrafficLaneView;->setDriveVayHide()V

    iget-object p1, p0, Lg/a/b/a;->c:Landroid/view/View;

    sget v0, Lcom/autosdk/drive/R$id;->cs_speedwindow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autonavi/view/custom/CustomSpeedometerView;

    iput-object p1, p0, Lg/a/b/a;->f:Lcom/autonavi/view/custom/CustomSpeedometerView;

    return-void
.end method
