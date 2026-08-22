.class public Lg/a/c/p;
.super Lg/a/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/a/a/a/b<",
        "Lextview/presentation/navi/NavExtraPresenterforR;",
        ">;"
    }
.end annotation


# static fields
.field public static sLast:Lg/a/c/p;


# instance fields
.field public c:Lg/a/f/e;

.field public d:Lg/a/f/h;

.field public e:Lg/a/f/a;

.field public f:Lf/h/f/b2/t/r4/b/k;

.field public g:Landroid/widget/LinearLayout;

.field public h:Lcom/autonavi/skin/view/SkinLinearLayout;

.field public i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

.field public j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

.field public k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

.field public l:Lcom/autonavi/skin/view/SkinImageView;

.field public m:Lcom/autonavi/gbl/data/model/Theme;

.field public n:Z

.field public volatile o:Z

.field public p:Landroid/os/Handler;

.field public final q:Ljava/lang/Runnable;

.field public r:Ljava/lang/Runnable;

.field public s:Lcom/autosdk/common/utils/ViewTimer$b;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/a/a/a/b;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/a/c/p;->n:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/a/c/p;->o:Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lg/a/c/p;->p:Landroid/os/Handler;

    new-instance p1, Lg/a/c/p$a;

    invoke-direct {p1, p0}, Lg/a/c/p$a;-><init>(Lg/a/c/p;)V

    iput-object p1, p0, Lg/a/c/p;->q:Ljava/lang/Runnable;

    new-instance p1, Lg/a/c/p$b;

    invoke-direct {p1, p0}, Lg/a/c/p$b;-><init>(Lg/a/c/p;)V

    iput-object p1, p0, Lg/a/c/p;->r:Ljava/lang/Runnable;

    new-instance p1, Lg/a/c/p$c;

    invoke-direct {p1, p0}, Lg/a/c/p$c;-><init>(Lg/a/c/p;)V

    iput-object p1, p0, Lg/a/c/p;->s:Lcom/autosdk/common/utils/ViewTimer$b;

    return-void
.end method

.method private synthetic B()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraView"

    const-string v2, "showCross()====: "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lg/a/c/p;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/a/c/p;->F()V

    invoke-virtual {p0}, Lg/a/c/p;->D()V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lg/a/c/p;)Lcom/autonavi/skin/view/SkinImageView;
    .locals 0

    iget-object p0, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    return-object p0
.end method

.method public static synthetic f(Lg/a/c/p;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lg/a/c/p;->g:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic g(Lg/a/c/p;)Lcom/autonavi/skin/view/SkinLinearLayout;
    .locals 0

    iget-object p0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    return-object p0
.end method

.method public static synthetic h(Lg/a/c/p;)V
    .locals 0

    invoke-virtual {p0}, Lg/a/c/p;->D()V

    return-void
.end method

.method public static synthetic i(Lg/a/c/p;)Lg/a/a/a/d;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    return-object p0
.end method

.method public static synthetic j(Lg/a/c/p;)Lg/a/a/a/d;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    return-object p0
.end method

.method public static synthetic k(Lg/a/c/p;)Lg/a/a/a/d;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    return-object p0
.end method

.method public static synthetic l(Lg/a/c/p;)Lg/a/a/a/d;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    return-object p0
.end method

.method public static synthetic m(Lg/a/c/p;)Lg/a/a/a/d;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    return-object p0
.end method

.method public static synthetic n(Lg/a/c/p;)Lg/a/a/a/d;
    .locals 0

    iget-object p0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    return-object p0
.end method

.method private synthetic z()V
    .locals 2

    invoke-virtual {p0}, Lg/a/c/p;->w()V

    iget-boolean v0, p0, Lg/a/c/p;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/a/c/p;->o:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0, v0}, Lg/a/c/p;->I(Ljava/util/ArrayList;III)Z

    invoke-virtual {p0}, Lg/a/c/p;->E()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic A()V
    .locals 0

    invoke-direct {p0}, Lg/a/c/p;->z()V

    return-void
.end method

.method public synthetic C()V
    .locals 0

    invoke-direct {p0}, Lg/a/c/p;->B()V

    return-void
.end method

.method public final D()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lg/a/c/p;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lg/a/c/p;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "NavExtraView"

    const-string v3, "onSizeChange  isFullScreen=:{?},isShowCrossImage=:{?}"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lg/a/c/p;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/a/c/p;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a/c/p;->d:Lg/a/f/h;

    invoke-virtual {v0}, Lg/a/f/h;->Z()V

    iget-object v0, p0, Lg/a/c/p;->c:Lg/a/f/e;

    invoke-virtual {v0}, Lg/a/f/e;->Z()V

    invoke-virtual {p0}, Lg/a/c/p;->M()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/a/c/p;->d:Lg/a/f/h;

    invoke-virtual {v0}, Lg/a/f/h;->Z()V

    iget-object v0, p0, Lg/a/c/p;->c:Lg/a/f/e;

    invoke-virtual {v0}, Lg/a/f/e;->j0()V

    invoke-virtual {p0}, Lg/a/c/p;->w()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lg/a/c/p;->w()V

    iget-object v0, p0, Lg/a/c/p;->c:Lg/a/f/e;

    invoke-virtual {v0}, Lg/a/f/e;->Z()V

    iget-object v0, p0, Lg/a/c/p;->d:Lg/a/f/h;

    invoke-virtual {v0}, Lg/a/f/h;->j0()V

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lg/a/c/p;->n:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/autosdk/bussiness/navi/NaviController;->getInstance()Lcom/autosdk/bussiness/navi/NaviController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/navi/NaviController;->isInNaviStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "onSizeChange smallNaviBgGradient VISIBLE"

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "onSizeChange smallNaviBgGradient INVISIBLE"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public E()V
    .locals 13

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiLink5_1()Z

    move-result v0

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v1, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v8, Lcom/autosdk/drive/R$id;->constant:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v10, Lcom/autosdk/drive/R$id;->cl_navi_and_route_container:I

    invoke-virtual {v7, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v1

    const/4 v11, -0x2

    if-eqz v1, :cond_3

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_4

    const/4 v3, 0x3

    const/4 v5, 0x3

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_208:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    move-object v1, v7

    move v2, v10

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x6

    const/4 v5, 0x6

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_266:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_400:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_4

    :cond_3
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v3, 0x3

    const/4 v5, 0x3

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_208:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    move-object v1, v7

    move v2, v10

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x6

    const/4 v5, 0x6

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_155:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v7, v10, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    goto/16 :goto_5

    :cond_5
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    const/4 v3, 0x3

    const/4 v5, 0x3

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_208:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    move-object v1, v7

    move v2, v10

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x6

    const/4 v5, 0x6

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_170:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_3
    float-to-int v0, v0

    invoke-virtual {v7, v10, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {v7, v10, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    goto/16 :goto_5

    :cond_6
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_4
    const/4 v3, 0x3

    const/4 v5, 0x3

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_250:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    move-object v1, v7

    move v2, v10

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x6

    const/4 v5, 0x6

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v12, Lcom/autosdk/drive/R$dimen;->auto_dimen2_300:I

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_3

    :cond_8
    const/4 v3, 0x3

    const/4 v5, 0x3

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_218:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    move-object v1, v7

    move v2, v10

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v3, 0x6

    const/4 v5, 0x6

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_107:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_482:I

    goto :goto_2

    :goto_5
    invoke-virtual {v7, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;->setDriveWayShow()V

    invoke-virtual {p0, v1}, Lg/a/c/p;->o(Z)V

    :cond_a
    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->setDriveWayShow()V

    invoke-virtual {p0, v1}, Lg/a/c/p;->o(Z)V

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/a/c/p;->n:Z

    invoke-virtual {p0}, Lg/a/c/p;->D()V

    return-void
.end method

.method public F()V
    .locals 13

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lg/a/c/p;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "NavExtraView"

    const-string v3, "onSizeToFullCross()====isShowCrossImage:{?} "

    invoke-static {v1, v3, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiLink5_1()Z

    move-result v0

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v3, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v9, Lcom/autosdk/drive/R$id;->constant:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {v1, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v11, Lcom/autosdk/drive/R$id;->cl_navi_and_route_container:I

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v3

    const/4 v12, -0x2

    if-eqz v3, :cond_2

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_5

    const/4 v5, 0x3

    const/4 v7, 0x3

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_208:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    move-object v3, v1

    move v4, v11

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x6

    const/4 v7, 0x6

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_266:I

    goto/16 :goto_4

    :cond_2
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const/4 v5, 0x3

    const/4 v7, 0x3

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_250:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    move-object v3, v1

    move v4, v11

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x6

    const/4 v7, 0x6

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_300:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v1, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_340:I

    :goto_1
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v11, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    goto/16 :goto_5

    :cond_3
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    const/4 v5, 0x3

    const/4 v7, 0x3

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_208:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    move-object v3, v1

    move v4, v11

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x6

    const/4 v7, 0x6

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_170:I

    :goto_3
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v1, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    goto :goto_1

    :cond_4
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v5, 0x3

    const/4 v7, 0x3

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_208:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    move-object v3, v1

    move v4, v11

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x6

    const/4 v7, 0x6

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_155:I

    goto :goto_3

    :cond_6
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    const/4 v5, 0x3

    const/4 v7, 0x3

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_208:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    move-object v3, v1

    move v4, v11

    move v6, v9

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v5, 0x6

    const/4 v7, 0x6

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_170:I

    :goto_4
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v1, v11, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    goto/16 :goto_1

    :goto_5
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->setDriveWayShow()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->changeBackground()V

    invoke-virtual {p0, v2}, Lg/a/c/p;->o(Z)V

    :cond_7
    return-void
.end method

.method public G()V
    .locals 16

    sput-object p0, Lg/a/c/p;->sLast:Lg/a/c/p;

    move-object/from16 v0, p0

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiLink5_1()Z

    move-result v1

    new-instance v8, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v8}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v9, Lcom/autosdk/drive/R$id;->constant:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/autonavi/skin/view/SkinConstraintLayout;

    invoke-virtual {v8, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v11, Lcom/autosdk/drive/R$id;->cl_navi_and_route_container:I

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/4 v7, -0x2

    if-eqz v2, :cond_6

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getAutoType()I

    move-result v1

    new-array v2, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    const-string v3, "NavExtraView"

    const-string v4, "onSizeToSmall Dilink51 autoType: {?}"

    invoke-static {v3, v4, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x77

    if-eq v1, v2, :cond_1

    const/16 v2, 0x76

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_441:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object v2, v8

    move v3, v11

    move v5, v9

    move v14, v7

    move v7, v1

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_1950:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v7, v1

    move-object v2, v8

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v8, v11, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_440:I

    goto/16 :goto_6

    :cond_1
    :goto_0
    move v14, v7

    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_441:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v7, v1

    move-object v2, v8

    move v3, v11

    move v5, v9

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_1415:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v7, v1

    move-object v2, v8

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v8, v11, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    goto/16 :goto_2

    :cond_2
    move v1, v7

    const/4 v4, 0x3

    const/4 v6, 0x3

    goto/16 :goto_3

    :cond_3
    move v1, v7

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_1
    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_441:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    move v5, v9

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_1405:I

    goto/16 :goto_7

    :cond_4
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    :cond_5
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_8

    :cond_6
    move v1, v7

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v2

    const/4 v4, 0x3

    const/4 v6, 0x3

    if-eqz v2, :cond_7

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_441:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    move v5, v9

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_1415:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v8, v11, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    :goto_2
    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    goto :goto_6

    :cond_7
    :goto_3
    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_214:I

    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    move v5, v9

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v8, v11, v15, v9, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v8, v11, v14, v9, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    :goto_5
    invoke-virtual {v8, v11, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_400:I

    :goto_6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v8, v11, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    goto/16 :goto_9

    :cond_8
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_441:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    move v5, v9

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    #sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_1393:I
    invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getSmallCarNaviLineInfoPosition()I

    move-result v3

    :goto_7
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v8, v11, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    goto :goto_6

    :cond_9
    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_235:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    move v5, v9

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v8, v11, v15, v9, v15}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v8, v11, v14, v9, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {v8, v11, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_482:I

    goto :goto_6

    :cond_a
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_441:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    move v5, v9

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    #sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_1393:I
    #sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_1393:I
    invoke-static {}, Lcom/wzw/utils/map/MapSharedPreferences;->getSmallCarNaviLineInfoPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v8, v11, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_381:I

    goto/16 :goto_6

    :cond_b
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_8
    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_530:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    move v5, v9

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    const/4 v4, 0x6

    const/4 v6, 0x6

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_1480:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v7, v2

    move-object v2, v8

    move v3, v11

    invoke-static {v4, v7}, Lcom/byd/lane/ClusterLaneMode;->adjust(II)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto/16 :goto_5

    :cond_c
    const/4 v4, 0x3

    const/4 v6, 0x3

    iget-object v2, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_245:I

    goto/16 :goto_4

    :goto_9
    invoke-virtual {v8, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, v0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->setDriveVayHide()V

    :cond_d
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->setDriveWayShow()V

    iget-object v1, v0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v1}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->changeBackground()V

    :cond_f
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;->setDriveWayShow()V

    :cond_10
    invoke-virtual {v0, v13}, Lg/a/c/p;->o(Z)V

    iput-boolean v12, v0, Lg/a/c/p;->n:Z

    invoke-virtual/range {p0 .. p0}, Lg/a/c/p;->D()V

    return-void
.end method

.method public final H(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/autosdk/drive/R$id;->stv_traffic_light_count_more:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/autosdk/drive/R$id;->stv_text_eta_time_arrival_end:I

    if-eq v2, v3, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/autosdk/drive/R$id;->siv_traffic_light_icon:I

    if-eq v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lg/a/c/p;->H(Landroid/view/ViewGroup;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public I(Ljava/util/ArrayList;III)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/autonavi/gbl/guide/model/CrossCardChangeInfo;",
            ">;III)Z"
        }
    .end annotation

    iget-object v0, p0, Lg/a/c/p;->f:Lf/h/f/b2/t/r4/b/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lf/h/f/b2/t/r4/b/k;->x(Ljava/util/ArrayList;III)Z

    move-result p1

    invoke-virtual {p0}, Lg/a/c/p;->D()V

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public J(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lg/a/c/p;->f:Lf/h/f/b2/t/r4/b/k;

    invoke-virtual {v0, p1}, Lf/h/f/b2/t/r4/b/k;->y(Ljava/lang/String;)V

    return-void
.end method

.method public K(Lcom/autonavi/gbl/data/model/Theme;)V
    .locals 0

    iput-object p1, p0, Lg/a/c/p;->m:Lcom/autonavi/gbl/data/model/Theme;

    return-void
.end method

.method public L()V
    .locals 2

    iget-object v0, p0, Lg/a/c/p;->p:Landroid/os/Handler;

    new-instance v1, Lg/a/c/d;

    invoke-direct {v1, p0}, Lg/a/c/d;-><init>(Lg/a/c/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final M()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraView"

    const-string v2, "showDriveExtCrossView"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->e:Lg/a/f/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/a/f/a;->j0()V

    :cond_0
    iget-object v0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    if-eqz v0, :cond_1

    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lg/a/e/b;->b()Lcom/autonavi/gbl/guide/model/CrossImageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    check-cast v0, Lextview/presentation/navi/NavExtraPresenterforR;

    iget-object v0, v0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    invoke-virtual {v0}, Lextview/presentation/presenter/CrossImageExtraController;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    check-cast v0, Lextview/presentation/navi/NavExtraPresenterforR;

    invoke-static {}, Lg/a/e/b;->d()Lg/a/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lg/a/e/b;->b()Lcom/autonavi/gbl/guide/model/CrossImageInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lextview/presentation/navi/NavExtraPresenterforR;->onShowCrossImage(Lcom/autonavi/gbl/guide/model/CrossImageInfo;)V

    :cond_1
    return-void
.end method

.method public N(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
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

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lg/a/c/p;->n:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v1, v0, Lg/a/c/p;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v1, :cond_6

    :goto_1
    invoke-virtual {v1}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->showDriveWay()V

    iget-object v1, v0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v1}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->changeBackground()V

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;->showDriveWay()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, v0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->showDriveWay()V

    iget-object v1, v0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v1}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->changeBackground()V

    :cond_5
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;->showDriveWay()V

    :cond_6
    :goto_2
    iget-object v2, v0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    if-eqz v2, :cond_7

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;->buildDriveWay(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Z

    :cond_7
    iget-object v9, v0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz v9, :cond_8

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v9 .. v15}, Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;->buildDriveWay(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Z

    :cond_8
    iget-object v1, v0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v1, :cond_9

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->buildDriveWay(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Z

    :cond_9
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, v0, Lg/a/c/p;->n:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "NavExtraView"

    const-string v4, "showLaneInfo() isFullScreen:{?}"

    invoke-static {v3, v4, v2}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v2, v0, Lg/a/c/p;->n:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lg/a/c/p;->o(Z)V

    return-void
.end method

.method public O()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraView"

    const-string v2, "startNaviView"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    iget-object v1, p0, Lg/a/c/p;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lg/a/c/p;->c:Lg/a/f/e;

    invoke-virtual {v0}, Lg/a/f/e;->Z()V

    iget-object v0, p0, Lg/a/c/p;->d:Lg/a/f/h;

    invoke-virtual {v0}, Lg/a/f/h;->Z()V

    iget-object v0, p0, Lg/a/c/p;->e:Lg/a/f/a;

    invoke-virtual {v0}, Lg/a/f/a;->Z()V

    iget-object v0, p0, Lg/a/c/p;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/a/c/p;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lg/a/c/p;->p:Landroid/os/Handler;

    iget-object v1, p0, Lg/a/c/p;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Lcom/autosdk/common/utils/ViewTimer;->g()Lcom/autosdk/common/utils/ViewTimer;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->s:Lcom/autosdk/common/utils/ViewTimer$b;

    invoke-virtual {v0, v1}, Lcom/autosdk/common/utils/ViewTimer;->addListener(Lcom/autosdk/common/utils/ViewTimer$b;)V

    return-void
.end method

.method public P()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraView"

    const-string v2, "stopNaviView"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    iget-object v2, p0, Lg/a/c/p;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/autosdk/common/utils/ViewTimer;->g()Lcom/autosdk/common/utils/ViewTimer;

    move-result-object v0

    iget-object v2, p0, Lg/a/c/p;->s:Lcom/autosdk/common/utils/ViewTimer$b;

    invoke-virtual {v0, v2}, Lcom/autosdk/common/utils/ViewTimer;->removeListener(Lcom/autosdk/common/utils/ViewTimer$b;)V

    iget-object v0, p0, Lg/a/c/p;->c:Lg/a/f/e;

    invoke-virtual {v0}, Lg/a/f/e;->j0()V

    iget-object v0, p0, Lg/a/c/p;->d:Lg/a/f/h;

    invoke-virtual {v0}, Lg/a/f/h;->j0()V

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lg/a/c/p;->e:Lg/a/f/a;

    invoke-virtual {v0}, Lg/a/f/a;->j0()V

    iget-object v0, p0, Lg/a/c/p;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lg/a/c/p;->H(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lg/a/c/p;->x()V

    iget-object v0, p0, Lg/a/c/p;->p:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public Q(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V
    .locals 1

    iget-object v0, p0, Lg/a/c/p;->f:Lf/h/f/b2/t/r4/b/k;

    invoke-virtual {v0, p1}, Lf/h/f/b2/t/r4/b/k;->F(Lcom/autonavi/gbl/guide/model/ExitDirectionInfo;)V

    return-void
.end method

.method public R(Lcom/autonavi/gbl/guide/model/NaviInfo;Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lf/h/f/b2/s/t;->a(Lcom/autonavi/gbl/guide/model/NaviInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/a/c/p;->f:Lf/h/f/b2/t/r4/b/k;

    invoke-virtual {v0, p1, p2}, Lf/h/f/b2/t/r4/b/k;->H(Lcom/autonavi/gbl/guide/model/NaviInfo;Z)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lg/a/c/p;->q:Ljava/lang/Runnable;

    const-wide/16 v0, 0x50

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public S(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lg/a/c/p;->f:Lf/h/f/b2/t/r4/b/k;

    invoke-virtual {v0, p1}, Lf/h/f/b2/t/r4/b/k;->L(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lg/a/c/p;->D()V

    return-void
.end method

.method public T(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lg/a/c/p;->f:Lf/h/f/b2/t/r4/b/k;

    invoke-virtual {v0, p1}, Lf/h/f/b2/t/r4/b/k;->C(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lg/a/c/p;->D()V

    return-void
.end method

.method public U(Z)V
    .locals 1

    iget-object v0, p0, Lg/a/c/p;->d:Lg/a/f/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf/h/f/b2/t/r4/a/b;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a/c/p;->d:Lg/a/f/h;

    invoke-virtual {v0, p1}, Lg/a/f/h;->n0(Z)V

    :cond_0
    iget-object v0, p0, Lg/a/c/p;->c:Lg/a/f/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lf/h/f/b2/t/r4/a/b;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/a/c/p;->c:Lg/a/f/e;

    invoke-virtual {v0, p1}, Lg/a/f/e;->n0(Z)V

    :cond_1
    iget-object v0, p0, Lg/a/c/p;->e:Lg/a/f/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/a/f/a;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/a/c/p;->e:Lg/a/f/a;

    invoke-virtual {v0, p1}, Lg/a/f/a;->n0(Z)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lg/a/c/p;->y()V

    return-void
.end method

.method public o(Z)V
    .locals 11

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lf/k/v/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-static {}, Lcom/autonavi/skin/NightModeGlobal;->isNightExtra()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "NavExtraView"

    const-string v5, "changeBackground  isSmallScreen:{?},getUiStyle:{?},isNightMode:{?},isNightExtra:{?},isNorMalDisplay:{?}"

    invoke-static {v1, v5, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->isDiLink5_1()Z

    move-result v0

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v5

    const-string v6, "changeBackground TYPE_FULL mCustomTrafficLane=:{?}, isShowCrossImage=:{?}"

    const/4 v7, 0x0

    const-string v8, "changeBackground TYPE_FULL innerTrafficLane=:{?}\uff0c innerTrafficLane.getVisibility =:{?}"

    const-string v9, "changeBackground TYPE_FULL isShowCrossImage=:{?}\uff0c mCustomTrafficLane=:{?}"

    const/16 v10, 0x8

    if-eqz v5, :cond_18

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/a/c/p;->t()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lg/a/c/p;->q()V

    :goto_0
    return-void

    :cond_1
    iget-boolean p1, p0, Lg/a/c/p;->o:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->transparent:I

    invoke-virtual {p1, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_404:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_1b

    sget v0, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v0, Lcom/autosdk/drive/R$dimen;->auto_dimen2_400:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_c

    :cond_2
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->transparent:I

    invoke-virtual {p1, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_340:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_20

    sget v0, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v0, Lcom/autosdk/drive/R$dimen;->auto_dimen2_230:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_12

    :cond_3
    iget-object p1, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz v0, :cond_4

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal_ht:I

    goto :goto_1

    :cond_4
    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal_new_denza:I

    :goto_1
    invoke-virtual {p1, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_304:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_1e

    sget v0, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v0, Lcom/autosdk/drive/R$dimen;->auto_dimen2_300:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_f

    :cond_5
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz v0, :cond_6

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal_ht:I

    goto :goto_2

    :cond_6
    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal_new_denza:I

    :goto_2
    invoke-virtual {p1, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/autosdk/drive/R$dimen;->auto_dimen2_256:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_20

    sget v0, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_12

    :cond_7
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_9

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lg/a/c/p;->r()V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_nomal:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_482:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_195:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void

    :cond_9
    new-array p1, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    iget-boolean v0, p0, Lg/a/c/p;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v1, v6, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lg/a/c/p;->o:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_14

    :cond_a
    new-array p1, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-nez v0, :cond_b

    move v0, v3

    goto :goto_4

    :cond_b
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_5
    aput-object v7, p1, v3

    invoke-static {v1, v8, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_28

    goto/16 :goto_17

    :cond_d
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_f

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lg/a/c/p;->u()V

    goto :goto_6

    :cond_e
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_nomal:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_482:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_195:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    return-void

    :cond_f
    new-array p1, v4, [Ljava/lang/Object;

    iget-boolean v0, p0, Lg/a/c/p;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v1, v9, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lg/a/c/p;->o:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_14

    :cond_10
    new-array p1, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-nez v0, :cond_11

    move v0, v3

    goto :goto_7

    :cond_11
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-nez v0, :cond_12

    goto :goto_8

    :cond_12
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_8
    aput-object v7, p1, v3

    invoke-static {v1, v8, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2d

    goto/16 :goto_19

    :cond_13
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_14

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->transparent:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_420:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_80:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lg/a/c/p;->s()V

    return-void

    :cond_14
    new-array p1, v4, [Ljava/lang/Object;

    iget-boolean v0, p0, Lg/a/c/p;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v1, v9, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lg/a/c/p;->o:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_30

    goto/16 :goto_1c

    :cond_15
    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_32

    goto/16 :goto_1d

    :cond_16
    if-eqz p1, :cond_17

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_nomal:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_400:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_80:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_17
    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_35

    goto/16 :goto_1e

    :cond_18
    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v5

    if-eqz v5, :cond_21

    if-eqz p1, :cond_1a

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lg/a/c/p;->t()V

    goto :goto_9

    :cond_19
    invoke-virtual {p0}, Lg/a/c/p;->q()V

    :goto_9
    return-void

    :cond_1a
    iget-boolean p1, p0, Lg/a/c/p;->o:Z

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->transparent:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    :goto_a
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_404:I

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_c
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1b
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1f

    :cond_1c
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->transparent:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    :goto_d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_340:I

    goto :goto_11

    :cond_1d
    iget-object p1, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal_new_denza:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_304:I

    :goto_e
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_f
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1e
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$id;->cnvl_time:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1f

    :cond_1f
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal_new_denza:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    :goto_10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_256:I

    :goto_11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_12
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_20
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$id;->cnvl_time:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1f

    :cond_21
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz p1, :cond_23

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lg/a/c/p;->r()V

    goto :goto_13

    :cond_22
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_nomal:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_482:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_195:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_13
    return-void

    :cond_23
    new-array p1, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    iget-boolean v0, p0, Lg/a/c/p;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v1, v6, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lg/a/c/p;->o:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_24

    :goto_14
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->transparent:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    goto/16 :goto_a

    :cond_24
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->transparent:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    goto/16 :goto_d

    :cond_25
    new-array p1, v4, [Ljava/lang/Object;

    iget-object v0, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-nez v0, :cond_26

    move v0, v3

    goto :goto_15

    :cond_26
    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-nez v0, :cond_27

    goto :goto_16

    :cond_27
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_16
    aput-object v7, p1, v3

    invoke-static {v1, v8, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_28

    :goto_17
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_full_hc_mc:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal_dynasty:I

    goto/16 :goto_1a

    :cond_28
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_full_hc_mc:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal_dynasty:I

    goto/16 :goto_1b

    :cond_29
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_2b

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lg/a/c/p;->u()V

    goto :goto_18

    :cond_2a
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_nomal:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_482:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_195:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_18
    return-void

    :cond_2b
    new-array p1, v4, [Ljava/lang/Object;

    iget-boolean v0, p0, Lg/a/c/p;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v1, v9, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lg/a/c/p;->o:Z

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_14

    :cond_2c
    iget-object p1, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2d

    :goto_19
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_full_nomal_new:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal_new:I

    :goto_1a
    invoke-virtual {p1, v0, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_302:I

    goto/16 :goto_e

    :cond_2d
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_full_nomal_new:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal_new:I

    :goto_1b
    invoke-virtual {p1, v0, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    goto/16 :goto_10

    :cond_2e
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->transparent:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_420:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_80:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lg/a/c/p;->s()V

    return-void

    :cond_2f
    new-array p1, v4, [Ljava/lang/Object;

    iget-boolean v0, p0, Lg/a/c/p;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v2

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v1, v9, p1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p1, p0, Lg/a/c/p;->o:Z

    if-eqz p1, :cond_31

    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_30

    :goto_1c
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->transparent:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_340:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_b

    :cond_30
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->transparent:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_340:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_288:I

    goto/16 :goto_b

    :cond_31
    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_32

    :goto_1d
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_lane_nomal:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_340:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_248:I

    goto/16 :goto_b

    :cond_32
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal:I

    invoke-virtual {p1, v0, v0}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_340:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_196:I

    goto/16 :goto_b

    :cond_33
    if-eqz p1, :cond_34

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_nomal:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_400:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_80:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_34
    iget-object p1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_35

    :goto_1e
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_full_lane_nomal:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_lane_nomal:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_400:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_205:I

    goto/16 :goto_b

    :cond_35
    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v0, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_full_nomal:I

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_full_nomal:I

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object p1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_400:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/autosdk/drive/R$dimen;->auto_dimen2_141:I

    goto/16 :goto_b

    :cond_36
    :goto_1f
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lg/a/c/p;->c:Lg/a/f/e;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/a/f/e;->x:Lcom/autonavi/skin/view/SkinTextView;

    if-eqz v0, :cond_0

    sget v1, Lcom/autosdk/drive/R$string;->arrival_2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_shamo:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal_new:I

    :goto_0
    invoke-virtual {v0, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_152:I

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_shamo:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal_new:I

    :goto_1
    invoke-virtual {v0, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_410:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_88:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal:I

    invoke-virtual {v0, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_400:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_119:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->changeBackground()V

    return-void
.end method

.method public r()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "NavExtraView"

    const-string v4, "changeSmallNaviBackgroundDynasty clNaviContainer=:{?}\uff0c mCustomTrafficLane=:{?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "changeSmallNaviBackgroundDynasty mCustomTrafficLane.getVisibility=:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal_new:I

    :goto_2
    invoke-virtual {v0, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_shamo:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_nomal_new:I

    sget v2, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal_new:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    :goto_3
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    goto :goto_4

    :cond_4
    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_390:I

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_152:I

    goto :goto_8

    :cond_5
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal_new:I

    :goto_5
    invoke-virtual {v0, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    goto :goto_6

    :cond_6
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_shamo:I

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_nomal_new:I

    sget v2, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal_new:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    :goto_6
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    goto :goto_7

    :cond_8
    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_390:I

    :goto_7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_88:I

    :goto_8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method

.method public s()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "NavExtraView"

    const-string v2, "changeSmallNaviBackgroundFui smallNaviBgGradient=:{?}"

    invoke-static {v0, v2, v1}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lg/a/c/p;->m:Lcom/autonavi/gbl/data/model/Theme;

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/autonavi/gbl/data/model/FileDataItem;->id:I

    sget v2, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v1, v2, :cond_1

    sget v1, Lcom/autosdk/drive/R$drawable;->small_screen_shamo_bg:I

    :goto_1
    invoke-virtual {v0, v1, v1}, Lcom/autonavi/skin/view/SkinImageView;->setBackground(II)V

    goto :goto_2

    :cond_1
    sget v2, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-ne v1, v2, :cond_2

    sget v1, Lcom/autosdk/drive/R$drawable;->small_screen_snow_bg:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/autosdk/drive/R$drawable;->small_screen_default_bg:I

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_1920:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_720:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public t()V
    .locals 4

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_shamo:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal_new:I

    :goto_0
    invoke-virtual {v0, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_152:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v2

    sget v3, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v3, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_shamo:I

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v3, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal_new:I

    :goto_2
    invoke-virtual {v2, v3, v3}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_88:I

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v3, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal:I

    invoke-virtual {v2, v3, v3}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_400:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_119:I

    goto :goto_1

    :goto_3
    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->changeBackground()V

    :cond_4
    return-void
.end method

.method public u()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "NavExtraView"

    const-string v4, "changeSmallNaviBackgroundOcean clNaviContainer=:{?}\uff0c mCustomTrafficLane=:{?}"

    invoke-static {v1, v4, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getNaviType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "changeSmallNaviBackgroundOcean mCustomTrafficLane.getVisibility=:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_lane_nomal_new:I

    :goto_2
    invoke-virtual {v0, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_shamo:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_lane_nomal_new:I

    sget v2, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_lane_nomal_new:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    :goto_3
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    goto :goto_4

    :cond_4
    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_390:I

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_152:I

    goto :goto_8

    :cond_5
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->snowThemeID:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal_new:I

    :goto_5
    invoke-virtual {v0, v1, v1}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    goto :goto_6

    :cond_6
    invoke-static {}, Lcom/autosdk/common/settings/data/ThemeDataController;->getInstance()Lcom/autosdk/common/settings/data/ThemeDataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/common/settings/data/ThemeDataController;->getExtraCurrentThemeID()I

    move-result v0

    sget v1, Lcom/autosdk/common/settings/data/ThemeDataController;->shamoThemeID:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_shamo:I

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    sget v1, Lcom/autosdk/drive/R$drawable;->custom_card_view_day_bg_ext_small_nomal_new:I

    sget v2, Lcom/autosdk/drive/R$drawable;->custom_card_view_night_bg_ext_small_nomal_new:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/skin/view/SkinLinearLayout;->setBackground(II)V

    :goto_6
    iget-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_454:I

    goto :goto_7

    :cond_8
    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_390:I

    :goto_7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v2, Lcom/autosdk/drive/R$dimen;->auto_dimen2_88:I

    :goto_8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->changeBackground()V

    :cond_9
    return-void
.end method

.method public v()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lg/a/c/p;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "NavExtraView"

    const-string v2, "hideCross()====isFullScreen:{?} "

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->p:Landroid/os/Handler;

    new-instance v1, Lg/a/c/e;

    invoke-direct {v1, p0}, Lg/a/c/e;-><init>(Lg/a/c/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NavExtraView"

    const-string v2, "hideDriveExtCrossView()===="

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lg/a/c/p;->e:Lg/a/f/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/a/f/a;->Z()V

    :cond_0
    iget-object v0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lextview/presentation/navi/NavExtraPresenterforR;

    iget-object v1, v1, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    if-eqz v1, :cond_1

    check-cast v0, Lextview/presentation/navi/NavExtraPresenterforR;

    iget-object v0, v0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    invoke-virtual {v0}, Lextview/presentation/presenter/CrossImageExtraController;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/a/a/a/b;->a:Lg/a/a/a/d;

    check-cast v0, Lextview/presentation/navi/NavExtraPresenterforR;

    iget-object v0, v0, Lextview/presentation/navi/NavExtraPresenterforR;->crossImageExtraController:Lextview/presentation/presenter/CrossImageExtraController;

    invoke-virtual {v0}, Lextview/presentation/presenter/CrossImageExtraController;->a()V

    :cond_1
    return-void
.end method

.method public x()V
    .locals 3

    iget-boolean v0, p0, Lg/a/c/p;->n:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->hide()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->hide()V

    :cond_2
    iget-object v0, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;->hide()V

    :cond_3
    :goto_1
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;->hide()V

    iget-object v0, p0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;->setDriveVayHide()V

    goto :goto_5

    :cond_4
    invoke-static {}, Lf/h/c/n0/x1;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->hide()V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    if-eqz v0, :cond_8

    :goto_3
    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->setDriveVayHide()V

    :cond_8
    :goto_4
    iget-object v0, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;->hide()V

    :cond_9
    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;->hide()V

    :cond_a
    :goto_5
    iget-boolean v0, p0, Lg/a/c/p;->n:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lg/a/c/p;->o(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lg/a/c/p;->n:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "NavExtraView"

    const-string v2, "hideLaneInfo() isFullScreen:{?}"

    invoke-static {v1, v2, v0}, Lcom/autosdk/bussiness/common/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final y()V
    .locals 3

    new-instance v0, Lg/a/f/e;

    iget-object v1, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/a/f/e;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lg/a/c/p;->c:Lg/a/f/e;

    new-instance v0, Lg/a/f/h;

    iget-object v1, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-direct {v0, v1}, Lg/a/f/h;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lg/a/c/p;->d:Lg/a/f/h;

    new-instance v0, Lg/a/f/a;

    iget-object v1, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    invoke-direct {v0, v1}, Lg/a/f/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lg/a/c/p;->e:Lg/a/f/a;

    new-instance v0, Lf/h/f/b2/t/r4/b/k;

    invoke-direct {v0, v2}, Lf/h/f/b2/t/r4/b/k;-><init>(Z)V

    iput-object v0, p0, Lg/a/c/p;->f:Lf/h/f/b2/t/r4/b/k;

    iget-object v1, p0, Lg/a/c/p;->c:Lg/a/f/e;

    invoke-virtual {v1}, Lg/a/f/e;->j()Lf/h/f/b2/t/r4/b/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h/f/b2/t/r4/b/k;->a(Lf/h/f/b2/t/r4/b/j;)V

    iget-object v0, p0, Lg/a/c/p;->f:Lf/h/f/b2/t/r4/b/k;

    iget-object v1, p0, Lg/a/c/p;->d:Lg/a/f/h;

    invoke-virtual {v1}, Lg/a/f/h;->j()Lf/h/f/b2/t/r4/b/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h/f/b2/t/r4/b/k;->a(Lf/h/f/b2/t/r4/b/j;)V

    iget-object v0, p0, Lg/a/c/p;->f:Lf/h/f/b2/t/r4/b/k;

    iget-object v1, p0, Lg/a/c/p;->e:Lg/a/f/a;

    invoke-virtual {v1}, Lg/a/f/a;->j()Lf/h/f/b2/t/r4/b/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/h/f/b2/t/r4/b/k;->a(Lf/h/f/b2/t/r4/b/j;)V

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v1, Lcom/autosdk/drive/R$id;->ct_navigation_info_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lg/a/c/p;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v1, Lcom/autosdk/drive/R$id;->cl_navi_and_route_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinLinearLayout;

    iput-object v0, p0, Lg/a/c/p;->h:Lcom/autonavi/skin/view/SkinLinearLayout;

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v1, Lcom/autosdk/drive/R$id;->display_traffic_lane:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    iput-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->setIsNormal(Z)V

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstrumentUiTypeInterface()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->setUiTypeInterface(I)V

    invoke-static {}, Lf/k/v/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v1, Lcom/autosdk/drive/R$id;->display_traffic_small_lane:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    iput-object v0, p0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v1, Lcom/autosdk/drive/R$id;->small_navi_bg_gradient:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/skin/view/SkinImageView;

    iput-object v0, p0, Lg/a/c/p;->l:Lcom/autonavi/skin/view/SkinImageView;

    iget-object v0, p0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstrumentUiTypeInterface()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;->setUiTypeInterface(I)V

    iget-object v0, p0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstrumentUiDimensionSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;->setUiDimensionSize(I)V

    iget-object v0, p0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    invoke-static {}, Lf/h/c/n0/x1;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;->setIsNormal(Z)V

    iget-object v0, p0, Lg/a/c/p;->k:Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;

    invoke-virtual {v0}, Lcom/autonavi/view/custom/CustomExtSmallNaviTrafficLaneView;->setDriveVayHide()V

    :cond_0
    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/a/c/p;->i:Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstance()Lcom/autosdk/bussiness/vehicle/PlatformUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autosdk/bussiness/vehicle/PlatformUtils;->getInstrumentUiDimensionSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/view/custom/CustomExtNaviTrafficLaneView;->setUiDimensionSize(I)V

    :cond_1
    invoke-static {}, Lf/k/v/b;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lf/k/v/b;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lf/k/v/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lg/a/a/a/b;->b:Landroid/view/View;

    sget v1, Lcom/autosdk/drive/R$id;->display_inner_traffic_lane:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    iput-object v0, p0, Lg/a/c/p;->j:Lcom/autonavi/view/custom/CustomCruiseTrafficLaneView;

    :cond_3
    return-void
.end method

.method public static relayout()V
    .locals 3

    sget-object v0, Lg/a/c/p;->sLast:Lg/a/c/p;

    if-eqz v0, :goto_done

    :try_start_0
    iget-object v1, v0, Lg/a/a/a/b;->b:Landroid/view/View;

    if-eqz v1, :goto_done

    sget v2, Lcom/autosdk/drive/R$id;->cl_navi_and_route_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :goto_done

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :goto_done

    invoke-virtual {v0}, Lg/a/c/p;->G()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_done
    return-void

    :catch_0
    move-exception v0

    return-void
.end method
