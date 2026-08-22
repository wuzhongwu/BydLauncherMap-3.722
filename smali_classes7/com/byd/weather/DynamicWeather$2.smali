.class Lcom/byd/weather/DynamicWeather$2;
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

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 260
    # invokes: Lcom/byd/weather/DynamicWeather;->checkAlive()V
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->access$400()V

    return-void
.end method
