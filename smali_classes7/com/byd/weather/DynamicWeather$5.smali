.class Lcom/byd/weather/DynamicWeather$5;
.super Ljava/lang/Object;
.source "DynamicWeather.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/weather/DynamicWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 535
    # invokes: Lcom/byd/weather/DynamicWeather;->watch()V
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->access$700()V

    return-void
.end method
