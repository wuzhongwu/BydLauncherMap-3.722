.class Lcom/byd/mockgps/MockGpsPanel$12;
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

    .line 267
    iput-object p1, p0, Lcom/byd/mockgps/MockGpsPanel$12;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 270
    # getter for: Lcom/byd/mockgps/MockGpsPanel;->weatherIndex:I
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$600()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    # getter for: Lcom/byd/mockgps/MockGpsPanel;->WEATHER_CYCLE:[I
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$700()[I

    move-result-object v0

    array-length v0, v0

    rem-int/2addr p1, v0

    # setter for: Lcom/byd/mockgps/MockGpsPanel;->weatherIndex:I
    invoke-static {p1}, Lcom/byd/mockgps/MockGpsPanel;->access$602(I)I

    .line 271
    # getter for: Lcom/byd/mockgps/MockGpsPanel;->WEATHER_CYCLE:[I
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$700()[I

    move-result-object p1

    # getter for: Lcom/byd/mockgps/MockGpsPanel;->weatherIndex:I
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$600()I

    move-result v0

    aget p1, p1, v0

    .line 272
    invoke-static {p1}, Lcom/byd/weather/DynamicWeather;->force(I)V

    .line 273
    iget-object p0, p0, Lcom/byd/mockgps/MockGpsPanel$12;->val$ctx:Landroid/content/Context;

    if-gez p1, :cond_23

    const-string p1, "\u5929\u6c14\u8ddf\u968f\u771f\u5b9e\u6570\u636e"

    goto :goto_31

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f3a\u5236\u5929\u6c14\u7f16\u7801 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_31
    # invokes: Lcom/byd/mockgps/MockGpsPanel;->toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/byd/mockgps/MockGpsPanel;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    # invokes: Lcom/byd/mockgps/MockGpsPanel;->refresh()V
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$000()V

    return-void
.end method
