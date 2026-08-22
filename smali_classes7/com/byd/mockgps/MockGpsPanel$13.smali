.class Lcom/byd/mockgps/MockGpsPanel$13;
.super Ljava/lang/Object;
.source "MockGpsPanel.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/mockgps/MockGpsPanel;->askMockTime(Landroid/content/Context;)V
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

    .line 306
    iput-object p1, p0, Lcom/byd/mockgps/MockGpsPanel$13;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 4

    .line 309
    invoke-static {p2, p3}, Lcom/byd/mockgps/MockTime;->enable(II)V

    .line 310
    iget-object p0, p0, Lcom/byd/mockgps/MockGpsPanel$13;->val$ctx:Landroid/content/Context;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 312
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "\u6a21\u62df\u65f6\u95f4 %02d:%02d\uff0c\u53ea\u5f71\u54cd\u5730\u56fe\u65e5\u591c"

    .line 310
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/byd/mockgps/MockGpsPanel;->toast(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/byd/mockgps/MockGpsPanel;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    # invokes: Lcom/byd/mockgps/MockGpsPanel;->refresh()V
    invoke-static {}, Lcom/byd/mockgps/MockGpsPanel;->access$000()V

    return-void
.end method
