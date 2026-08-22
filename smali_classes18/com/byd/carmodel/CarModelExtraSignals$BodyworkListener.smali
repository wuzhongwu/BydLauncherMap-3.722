.class final Lcom/byd/carmodel/CarModelExtraSignals$BodyworkListener;
.super Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;
.source "CarModelExtraSignals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/carmodel/CarModelExtraSignals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BodyworkListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 334
    invoke-direct {p0}, Landroid/hardware/bydauto/bodywork/AbsBYDAutoBodyworkListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/byd/carmodel/CarModelExtraSignals$1;)V
    .registers 2

    .line 334
    invoke-direct {p0}, Lcom/byd/carmodel/CarModelExtraSignals$BodyworkListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoorStateChanged(II)V
    .registers 3

    .line 337
    invoke-static {p1, p2}, Lcom/byd/carmodel/CarModelExtraSignals;->onDoorStateChanged(II)V

    return-void
.end method
