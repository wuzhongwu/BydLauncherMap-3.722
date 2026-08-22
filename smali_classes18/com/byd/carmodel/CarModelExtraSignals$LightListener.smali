.class final Lcom/byd/carmodel/CarModelExtraSignals$LightListener;
.super Landroid/hardware/bydauto/light/AbsBYDAutoLightListener;
.source "CarModelExtraSignals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/carmodel/CarModelExtraSignals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LightListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 306
    invoke-direct {p0}, Landroid/hardware/bydauto/light/AbsBYDAutoLightListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/byd/carmodel/CarModelExtraSignals$1;)V
    .registers 2

    .line 306
    invoke-direct {p0}, Lcom/byd/carmodel/CarModelExtraSignals$LightListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataEventChanged(ILandroid/hardware/bydauto/BYDAutoEventValue;)V
    .registers 3

    if-eqz p2, :cond_7

    .line 311
    iget p2, p2, Landroid/hardware/bydauto/BYDAutoEventValue;->intValue:I

    invoke-static {p1, p2}, Lcom/byd/carmodel/CarModelExtraSignals;->onFogChanged(II)V

    :cond_7
    return-void
.end method

.method public onDayRunningLightStateChanged(I)V
    .registers 4

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u65e5\u884c\u706f = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarModelExtraSignals"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const-string p1, "CS_Daytime"

    .line 328
    invoke-static {p1, v0}, Lcom/byd/carmodel/CarModelEventBindings;->play(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_25

    const/16 v1, 0x3f6

    .line 329
    # invokes: Lcom/byd/carmodel/CarModelExtraSignals;->setLamp(Ljava/lang/String;IZ)V
    invoke-static {p1, v1, v0}, Lcom/byd/carmodel/CarModelExtraSignals;->access$200(Ljava/lang/String;IZ)V

    :cond_25
    return-void
.end method

.method public onReversingLightStateChanged(I)V
    .registers 4

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5012\u8f66\u706f = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarModelExtraSignals"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const-string p1, "CS_Backup"

    .line 319
    invoke-static {p1, v0}, Lcom/byd/carmodel/CarModelEventBindings;->play(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_25

    const/16 v1, 0x3f4

    .line 320
    # invokes: Lcom/byd/carmodel/CarModelExtraSignals;->setLamp(Ljava/lang/String;IZ)V
    invoke-static {p1, v1, v0}, Lcom/byd/carmodel/CarModelExtraSignals;->access$200(Ljava/lang/String;IZ)V

    :cond_25
    return-void
.end method
