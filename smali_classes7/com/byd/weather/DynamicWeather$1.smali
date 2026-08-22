.class Lcom/byd/weather/DynamicWeather$1;
.super Ljava/lang/Object;
.source "DynamicWeather.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/weather/DynamicWeather;->startPolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 250
    # invokes: Lcom/byd/weather/DynamicWeather;->pollLocal()V
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->access$000()V

    .line 251
    # invokes: Lcom/byd/weather/DynamicWeather;->handler()Landroid/os/Handler;
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->access$200()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/byd/weather/DynamicWeather;->ALIVE_CHECK:Ljava/lang/Runnable;
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->access$100()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    # invokes: Lcom/byd/weather/DynamicWeather;->worker()Landroid/os/Handler;
    invoke-static {}, Lcom/byd/weather/DynamicWeather;->access$300()Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
