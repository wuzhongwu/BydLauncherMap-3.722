.class final Lcom/byd/carmodel/CarModelEventBindings;
.super Ljava/lang/Object;
.source "CarModelEventBindings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byd/carmodel/CarModelEventBindings$Binding;,
        Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;
    }
.end annotation


# static fields
.field private static final ACTION_ENTER_DONE:I = 0x4

.field private static final ACTION_HOLD:I = 0x2

.field private static final ACTION_RELEASE:I = 0x1

.field private static final ACTION_RESET_DONE:I = 0x6

.field private static final ACTION_START:I = 0x3

.field private static final ACTION_TRANSITION_DONE:I = 0x5

.field private static final EVENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byd/carmodel/CarModelEventBindings$Binding;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLER:Landroid/os/Handler;

.field private static final LAST_POSES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;",
            ">;"
        }
    .end annotation
.end field

.field private static final OWNERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/byd/carmodel/CarModelEventBindings$Binding;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSE_HOLD:I = 0x2

.field private static final POSE_NONE:I = 0x0

.field private static final POSE_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CarModelEventBindings"

.field private static final TRANSITION_PHASE_COUNT:I = 0x4

.field private static orderCounter:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/byd/carmodel/CarModelEventBindings;->EVENTS:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/byd/carmodel/CarModelEventBindings;->LAST_POSES:Ljava/util/Map;

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/byd/carmodel/CarModelEventBindings;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->reconcile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->completeEnter(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return-void
.end method

.method static synthetic access$200(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->completeTransition(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return-void
.end method

.method static synthetic access$300(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->completeReset(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return-void
.end method

.method static synthetic access$400(Lcom/byd/carmodel/CarModelEventBindings$Binding;I)V
    .registers 2

    .line 20
    invoke-static {p0, p1}, Lcom/byd/carmodel/CarModelEventBindings;->completeOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;I)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .registers 1

    .line 20
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->priorityOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14

    const-string v0, "\u64ad\u653e\u81ea\u5b9a\u4e49\u52a8\u753b\u5931\u8d25\uff1a"

    .line 692
    sget-object v1, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 694
    :try_start_6
    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object v9

    if-nez v9, :cond_e

    const/4 v3, 0x0

    goto :goto_10

    .line 695
    :cond_e
    iget-object v3, v9, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    :goto_10
    move-object v4, v3

    if-eqz v9, :cond_28

    if-eqz v4, :cond_28

    .line 696
    iget-object v3, v4, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    if-nez v3, :cond_1a

    goto :goto_28

    :cond_1a
    move-object v3, v9

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    .line 699
    invoke-static/range {v3 .. v8}, Lcom/byd/carmodel/CarModelEventBindings;->append(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 700
    invoke-virtual {v9}, Lf/k/l/i/b;->s()V
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_2a

    .line 701
    :try_start_25
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    .line 697
    :cond_28
    :goto_28
    monitor-exit v1

    return v2

    :catchall_2a
    move-exception p0

    const-string p2, "CarModelEventBindings"

    .line 703
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    monitor-exit v1

    return v2

    :catchall_3e
    move-exception p0

    .line 706
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method private static append(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 741
    invoke-virtual {p0, p3}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    .line 742
    new-instance p0, Lcom/byd/lane/common/data/MyCarPartsAnimation;

    invoke-direct {p0}, Lcom/byd/lane/common/data/MyCarPartsAnimation;-><init>()V

    .line 744
    iput-object p2, p0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->name:Ljava/lang/String;

    .line 745
    iput-object p3, p0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    const-string p2, "stop"

    .line 746
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    .line 747
    iput p5, p0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->repeatTimes:I

    .line 748
    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static best(Ljava/lang/String;)Lcom/byd/carmodel/CarModelEventBindings$Binding;
    .registers 8

    .line 398
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->EVENTS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;

    .line 399
    iget-boolean v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    if-eqz v3, :cond_b

    iget v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_b

    :cond_28
    if-eqz v1, :cond_3e

    .line 400
    iget v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->priority:I

    iget v4, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->priority:I

    if-gt v3, v4, :cond_3e

    iget v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->priority:I

    iget v4, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->priority:I

    if-ne v3, v4, :cond_b

    iget-wide v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->order:J

    iget-wide v5, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->order:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    :cond_3e
    move-object v1, v2

    goto :goto_b

    :cond_40
    return-object v1
.end method

.method private static cancelPending(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->pending:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 381
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->pending:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->pending:Ljava/lang/Runnable;

    :cond_e
    return-void
.end method

.method private static clear(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 6

    .line 639
    sget-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_3
    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object v1

    if-nez v1, :cond_b

    const/4 v2, 0x0

    goto :goto_d

    .line 642
    :cond_b
    iget-object v2, v1, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    :goto_d
    if-eqz v1, :cond_69

    if-eqz v2, :cond_69

    .line 643
    iget-object v3, v2, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    if-nez v3, :cond_16

    goto :goto_69

    .line 646
    :cond_16
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->enter:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/byd/carmodel/CarModelEventBindings;->stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/byd/carmodel/CarModelEventBindings;->stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->off:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/byd/carmodel/CarModelEventBindings;->stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/byd/carmodel/CarModelEventBindings;->stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->enter:Ljava/lang/String;

    .line 651
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    .line 652
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->off:Ljava/lang/String;

    .line 653
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    .line 654
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 655
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object p0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    invoke-static {v1, v2, v3, p0}, Lcom/byd/carmodel/CarModelEventBindings;->stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_65
    invoke-virtual {v1}, Lf/k/l/i/b;->s()V
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_6b

    goto :goto_73

    .line 644
    :cond_69
    :goto_69
    :try_start_69
    monitor-exit v0

    return-void

    :catchall_6b
    move-exception p0

    const-string v1, "CarModelEventBindings"

    const-string v2, "\u505c\u6b62\u81ea\u5b9a\u4e49\u52a8\u753b\u5931\u8d25"

    .line 659
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    :goto_73
    monitor-exit v0

    return-void

    :catchall_75
    move-exception p0

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_69 .. :try_end_77} :catchall_75

    throw p0
.end method

.method private static completeEnter(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 6

    .line 567
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_64

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    if-nez v0, :cond_10

    goto :goto_64

    .line 572
    :cond_10
    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    goto :goto_60

    .line 576
    :cond_1a
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onMode:Ljava/lang/String;

    iget v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onRepeat:I

    invoke-static {p0, v0, v3, v4}, Lcom/byd/carmodel/CarModelEventBindings;->replace(Lcom/byd/carmodel/CarModelEventBindings$Binding;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 577
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    .line 578
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    if-eqz v0, :cond_2d

    .line 579
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    iput-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    .line 580
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 581
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    if-nez v0, :cond_3a

    .line 583
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return-void

    .line 586
    :cond_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->startedAt:J

    const-string v0, "once"

    .line 587
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onDurationMs:I

    if-lez v0, :cond_5f

    .line 588
    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onDurationMs:I

    int-to-long v0, v0

    .line 589
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeEnd:Ljava/lang/String;

    const-string v4, "hold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const/4 v2, 0x2

    .line 588
    :cond_5c
    invoke-static {p0, v0, v1, v2}, Lcom/byd/carmodel/CarModelEventBindings;->schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V

    :cond_5f
    return-void

    .line 573
    :cond_60
    :goto_60
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return-void

    .line 568
    :cond_64
    :goto_64
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    .line 569
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    return-void
.end method

.method private static completeOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;I)V
    .registers 11

    .line 537
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_21

    .line 538
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 539
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    .line 540
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    .line 541
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    .line 542
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetting:Z

    .line 543
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    const/4 p1, 0x0

    .line 544
    iput-object p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    .line 545
    iget-boolean p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    if-nez p1, :cond_20

    iput v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    :cond_20
    return-void

    .line 548
    :cond_21
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->transitionSourceOf(Lcom/byd/carmodel/CarModelEventBindings$Binding;)Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;

    move-result-object v0

    .line 549
    iget-object v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->off:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_46

    iget-object v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->off:Ljava/lang/String;

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 550
    new-instance v0, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->event:Ljava/lang/String;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    :cond_46
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6e

    .line 552
    iget-object p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6e

    .line 553
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->showHold(Lcom/byd/carmodel/CarModelEventBindings$Binding;)Z

    move-result p1

    .line 554
    iput-boolean p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 555
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    .line 556
    iput-boolean p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    .line 557
    iget-boolean v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    if-eqz v3, :cond_62

    if-eqz p1, :cond_62

    goto :goto_63

    :cond_62
    move v2, v1

    :goto_63
    iput v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    .line 558
    invoke-static {}, Lcom/byd/carmodel/CarModelEventBindings;->nextOrder()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->ownerOrder:J

    if-eqz p1, :cond_6e

    return-void

    .line 561
    :cond_6e
    iget-boolean p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    if-eqz p1, :cond_74

    iput v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    .line 562
    :cond_74
    invoke-static {p0, v0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;)V

    return-void
.end method

.method private static completeReset(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 3

    .line 623
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_2a

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetting:Z

    if-nez v0, :cond_10

    goto :goto_2a

    .line 628
    :cond_10
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetting:Z

    .line 629
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    .line 630
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 631
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    .line 632
    iput v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    .line 633
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->LAST_POSES:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->takeOver(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    .line 635
    iget-object p0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->reconcile(Ljava/lang/String;)V

    return-void

    .line 624
    :cond_2a
    :goto_2a
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetting:Z

    .line 625
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    return-void
.end method

.method private static completeTransition(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 6

    .line 595
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_64

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    if-nez v0, :cond_10

    goto :goto_64

    .line 600
    :cond_10
    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a

    goto :goto_60

    .line 604
    :cond_1a
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onMode:Ljava/lang/String;

    iget v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onRepeat:I

    invoke-static {p0, v0, v3, v4}, Lcom/byd/carmodel/CarModelEventBindings;->replace(Lcom/byd/carmodel/CarModelEventBindings$Binding;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 605
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    .line 606
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    if-eqz v0, :cond_2d

    .line 607
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    iput-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    .line 608
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 609
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    if-nez v0, :cond_3a

    .line 611
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return-void

    .line 614
    :cond_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->startedAt:J

    const-string v0, "once"

    .line 615
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onDurationMs:I

    if-lez v0, :cond_5f

    .line 616
    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onDurationMs:I

    int-to-long v0, v0

    .line 617
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeEnd:Ljava/lang/String;

    const-string v4, "hold"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const/4 v2, 0x2

    .line 616
    :cond_5c
    invoke-static {p0, v0, v1, v2}, Lcom/byd/carmodel/CarModelEventBindings;->schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V

    :cond_5f
    return-void

    .line 601
    :cond_60
    :goto_60
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return-void

    .line 596
    :cond_64
    :goto_64
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    .line 597
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    return-void
.end method

.method private static detachOwnerState(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 3

    .line 500
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->cancelPending(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    .line 501
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_12

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const/4 v0, 0x0

    .line 502
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 503
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    .line 504
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    .line 505
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    .line 506
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetting:Z

    .line 507
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    const/4 v1, 0x0

    .line 508
    iput-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    .line 509
    iget-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    if-nez v1, :cond_28

    iput v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    :cond_28
    return-void
.end method

.method private static finishOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)Z
    .registers 12

    .line 127
    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e7

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    if-eqz v0, :cond_b

    goto/16 :goto_e7

    :cond_b
    const-string v0, "reverse"

    .line 131
    iget-object v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->endMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->off:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_56

    .line 132
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->clear(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    .line 133
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->off:Ljava/lang/String;

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->offMode:Ljava/lang/String;

    iget v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->offRepeat:I

    invoke-static {v0, v3, v4, v5}, Lcom/byd/carmodel/CarModelEventBindings;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 134
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->off:Ljava/lang/String;

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    iput-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    .line 135
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 136
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    .line 137
    iput-boolean v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    .line 138
    invoke-static {}, Lcom/byd/carmodel/CarModelEventBindings;->nextOrder()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->ownerOrder:J

    if-eqz v0, :cond_52

    .line 139
    iget v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->offDurationMs:I

    if-lez v2, :cond_52

    .line 140
    iget v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->offDurationMs:I

    int-to-long v2, v2

    invoke-static {p0, v2, v3, v1}, Lcom/byd/carmodel/CarModelEventBindings;->schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V

    goto :goto_55

    .line 142
    :cond_52
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    :goto_55
    return v0

    :cond_56
    const-string v0, "hold"

    .line 146
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->endMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 147
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->showHold(Lcom/byd/carmodel/CarModelEventBindings$Binding;)Z

    move-result v0

    .line 148
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 149
    iput-boolean v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    .line 150
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    .line 151
    invoke-static {}, Lcom/byd/carmodel/CarModelEventBindings;->nextOrder()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->ownerOrder:J

    if-nez v0, :cond_75

    .line 152
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    :cond_75
    return v0

    :cond_76
    const-string v0, "finish"

    .line 155
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->endMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    if-eqz v0, :cond_e3

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->startedAt:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-string v0, "loop"

    .line 158
    iget-object v7, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onMode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 159
    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->cycleDurationMs:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v7, v0

    .line 160
    rem-long v9, v3, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_ae

    cmp-long v0, v9, v5

    if-nez v0, :cond_ae

    move-wide v7, v5

    goto :goto_b8

    :cond_ae
    sub-long/2addr v7, v9

    goto :goto_b8

    .line 163
    :cond_b0
    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onDurationMs:I

    int-to-long v7, v0

    sub-long/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :goto_b8
    cmp-long v0, v7, v5

    const/4 v3, 0x2

    if-nez v0, :cond_cb

    .line 166
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c6

    goto :goto_c7

    :cond_c6
    move v3, v1

    :goto_c7
    invoke-static {p0, v3}, Lcom/byd/carmodel/CarModelEventBindings;->completeOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;I)V

    return v1

    .line 169
    :cond_cb
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    .line 170
    iput-boolean v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    .line 171
    invoke-static {}, Lcom/byd/carmodel/CarModelEventBindings;->nextOrder()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->ownerOrder:J

    .line 172
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_de

    goto :goto_df

    :cond_de
    move v3, v1

    :goto_df
    invoke-static {p0, v7, v8, v3}, Lcom/byd/carmodel/CarModelEventBindings;->schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V

    return v1

    .line 175
    :cond_e3
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return v1

    .line 128
    :cond_e7
    :goto_e7
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return v1
.end method

.method private static nextOrder()J
    .registers 4

    .line 387
    sget-wide v0, Lcom/byd/carmodel/CarModelEventBindings;->orderCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/byd/carmodel/CarModelEventBindings;->orderCounter:J

    return-wide v0
.end method

.method private static parse(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/byd/carmodel/CarModelEventBindings$Binding;
    .registers 29

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const-string v2, "part"

    const-string v3, "CS_Car"

    .line 260
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byd/carmodel/CarModelEventBindings;->safeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "on"

    const-string v3, ""

    .line 261
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byd/carmodel/CarModelEventBindings;->safeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "off"

    .line 262
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byd/carmodel/CarModelEventBindings;->safeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "enter"

    .line 263
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byd/carmodel/CarModelEventBindings;->safeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_ed

    if-eqz v7, :cond_ed

    if-eqz v8, :cond_ed

    if-eqz v6, :cond_ed

    .line 264
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_42

    goto/16 :goto_ed

    :cond_42
    const-string v1, "onMode"

    const-string v2, "once"

    .line 267
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->safeMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "offMode"

    .line 268
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->safeMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "hold"

    .line 269
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->safeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "endMode"

    const-string v2, "reset"

    .line 270
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->safeEndMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "activeEnd"

    const-string v3, "none"

    .line 271
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->safeActiveEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "transitions"

    .line 272
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->parseTransitions(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v14

    .line 273
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 274
    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->parseAnimationNames(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v15

    .line 275
    new-instance v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;

    const-string v3, "loop"

    .line 277
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v16, -0x1

    const/16 v17, 0x1

    move-object/from16 v25, v15

    if-eqz v4, :cond_9f

    move/from16 v4, v16

    goto :goto_a1

    :cond_9f
    move/from16 v4, v17

    :goto_a1
    const-string v15, "onRepeat"

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    .line 278
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    move/from16 v3, v16

    goto :goto_b2

    :cond_b0
    move/from16 v3, v17

    :goto_b2
    const-string v4, "offRepeat"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    const-string v3, "enterDurationMs"

    .line 279
    invoke-static {v0, v3}, Lcom/byd/carmodel/CarModelEventBindings;->safeDuration(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v18

    const-string v3, "transitionDurationMs"

    invoke-static {v0, v3}, Lcom/byd/carmodel/CarModelEventBindings;->safeDuration(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v19

    const-string v3, "durationMs"

    .line 280
    invoke-static {v1, v3}, Lcom/byd/carmodel/CarModelEventBindings;->safeDuration(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v20

    const-string v1, "onDurationMs"

    .line 281
    invoke-static {v0, v1}, Lcom/byd/carmodel/CarModelEventBindings;->safeDuration(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v21

    const-string v1, "offDurationMs"

    invoke-static {v0, v1}, Lcom/byd/carmodel/CarModelEventBindings;->safeDuration(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v22

    const-string v1, "cycleDurationMs"

    .line 282
    invoke-static {v0, v1}, Lcom/byd/carmodel/CarModelEventBindings;->safeDuration(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v23

    const-string v1, "triggerDelayMs"

    invoke-static {v0, v1}, Lcom/byd/carmodel/CarModelEventBindings;->safeDuration(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v24

    move-object v3, v2

    move-object/from16 v4, p0

    move-object/from16 v15, v25

    move/from16 v16, v26

    invoke-direct/range {v3 .. v24}, Lcom/byd/carmodel/CarModelEventBindings$Binding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;IIIIIIIII)V

    return-object v2

    :cond_ed
    :goto_ed
    return-object v1
.end method

.method private static parseAnimationNames(Lorg/json/JSONObject;)[Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    const-string v0, "animations"

    .line 304
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_a
    const/4 v0, 0x0

    if-eqz p0, :cond_45

    .line 305
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_45

    .line 306
    :cond_14
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    move v3, v0

    move v4, v3

    .line 308
    :goto_1c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3c

    const-string v5, ""

    .line 309
    invoke-virtual {p0, v3, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/byd/carmodel/CarModelEventBindings;->safeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 310
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_39

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v2, v4

    move v4, v6

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_3c
    if-ne v4, v1, :cond_3f

    return-object v2

    .line 313
    :cond_3f
    new-array p0, v4, [Ljava/lang/String;

    .line 314
    invoke-static {v2, v0, p0, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_45
    :goto_45
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method private static parseTransitions(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    .line 288
    :cond_8
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    const/4 v2, 0x0

    .line 290
    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 292
    :try_start_16
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 294
    invoke-static {v4}, Lcom/byd/carmodel/CarModelEventBindings;->parseAnimationNames(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v4

    .line 295
    array-length v5, v4

    if-lez v5, :cond_28

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_28

    :catchall_28
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2b
    return-object v0
.end method

.method static declared-synchronized play(Ljava/lang/String;Z)Z
    .registers 8

    const-class v0, Lcom/byd/carmodel/CarModelEventBindings;

    monitor-enter v0

    .line 82
    :try_start_3
    sget-object v1, Lcom/byd/carmodel/CarModelEventBindings;->EVENTS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_7d

    const/4 v1, 0x0

    if-nez p0, :cond_10

    .line 84
    monitor-exit v0

    return v1

    .line 86
    :cond_10
    :try_start_10
    iget v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->generation:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->generation:I

    .line 87
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->cancelPending(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    if-eqz p1, :cond_60

    .line 89
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseForRestart(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    .line 90
    iput-boolean v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    const-wide/16 v4, 0x0

    .line 91
    iput-wide v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->startedAt:J

    .line 92
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 93
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    .line 94
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    .line 95
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    .line 96
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetting:Z

    .line 97
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    .line 99
    iput v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    .line 100
    invoke-static {}, Lcom/byd/carmodel/CarModelEventBindings;->nextOrder()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->order:J

    .line 101
    iget-object p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_7d

    if-nez p1, :cond_45

    .line 102
    monitor-exit v0

    return v1

    .line 104
    :cond_45
    :try_start_45
    iget p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->triggerDelayMs:I

    if-lez p1, :cond_57

    .line 105
    iget p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->triggerDelayMs:I

    int-to-long v1, p1

    const/4 p1, 0x3

    invoke-static {p0, v1, v2, p1}, Lcom/byd/carmodel/CarModelEventBindings;->schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V

    .line 106
    iget-object p0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->reconcile(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_7d

    .line 107
    monitor-exit v0

    return v3

    .line 109
    :cond_57
    :try_start_57
    iput v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    .line 110
    iget-object p0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->reconcile(Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_7d

    .line 111
    monitor-exit v0

    return v3

    .line 114
    :cond_60
    :try_start_60
    sget-object p1, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    iget-object v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_6c

    move p1, v3

    goto :goto_6d

    :cond_6c
    move p1, v1

    .line 115
    :goto_6d
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    .line 116
    iput v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    if-nez p1, :cond_77

    .line 118
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_7d

    .line 119
    monitor-exit v0

    return v3

    .line 121
    :cond_77
    :try_start_77
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->finishOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)Z

    move-result p0
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_7d

    monitor-exit v0

    return p0

    :catchall_7d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static priorityOf(Ljava/lang/String;)I
    .registers 2

    const-string v0, "CS_Idle"

    .line 391
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const-string v0, "CS_WF"

    .line 392
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "CS_WB"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1e

    :cond_1b
    const/16 p0, 0x64

    return p0

    :cond_1e
    :goto_1e
    const/16 p0, 0xa

    return p0
.end method

.method private static readText(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 752
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 754
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array v1, p0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, p0, :cond_1a

    sub-int v4, p0, v3

    .line 757
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_1a

    add-int/2addr v3, v4

    goto :goto_e

    .line 760
    :cond_1a
    new-instance p0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_29

    .line 762
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 763
    throw p0
.end method

.method private static recentPose(Ljava/lang/String;Lcom/byd/carmodel/CarModelEventBindings$Binding;)Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;
    .registers 11

    .line 428
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->LAST_POSES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return-object v2

    :cond_c
    if-nez p1, :cond_11

    const-wide/16 v3, 0x0

    goto :goto_17

    .line 430
    :cond_11
    iget p1, p1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->triggerDelayMs:I

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    :goto_17
    const-wide/16 v5, 0x5dc

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 431
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->capturedAt:J

    sub-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-lez p1, :cond_2c

    .line 432
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2c
    return-object v1
.end method

.method private static reconcile(Ljava/lang/String;)V
    .registers 7

    .line 478
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->best(Ljava/lang/String;)Lcom/byd/carmodel/CarModelEventBindings$Binding;

    move-result-object v0

    .line 479
    sget-object v1, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;

    if-ne v1, v0, :cond_11

    if-eqz v1, :cond_11

    return-void

    :cond_11
    if-eqz v1, :cond_2a

    .line 481
    iget-boolean v2, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    if-nez v2, :cond_1f

    iget-boolean v2, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    if-nez v2, :cond_2a

    iget-boolean v2, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    if-eqz v2, :cond_2a

    :cond_1f
    if-eqz v0, :cond_29

    .line 482
    iget-wide v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->order:J

    iget-wide v4, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->ownerOrder:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2a

    :cond_29
    return-void

    :cond_2a
    if-nez v1, :cond_31

    .line 484
    invoke-static {p0, v0}, Lcom/byd/carmodel/CarModelEventBindings;->recentPose(Ljava/lang/String;Lcom/byd/carmodel/CarModelEventBindings$Binding;)Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;

    move-result-object v2

    goto :goto_35

    :cond_31
    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->transitionSourceOf(Lcom/byd/carmodel/CarModelEventBindings$Binding;)Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;

    move-result-object v2

    :goto_35
    if-eqz v0, :cond_4d

    .line 486
    invoke-static {v0, v2, v1}, Lcom/byd/carmodel/CarModelEventBindings;->startOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;Lcom/byd/carmodel/CarModelEventBindings$Binding;)Z

    move-result v0

    if-eqz v0, :cond_3e

    return-void

    .line 487
    :cond_3e
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->best(Ljava/lang/String;)Lcom/byd/carmodel/CarModelEventBindings$Binding;

    move-result-object v0

    if-eqz v1, :cond_4d

    .line 488
    iget-boolean p0, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    if-eqz p0, :cond_4d

    iget p0, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    if-eqz p0, :cond_4d

    return-void

    :cond_4d
    if-eqz v1, :cond_52

    .line 490
    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->takeOver(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    :cond_52
    if-eqz v0, :cond_5a

    if-eq v0, v1, :cond_5a

    const/4 p0, 0x0

    .line 491
    invoke-static {v0, v2, p0}, Lcom/byd/carmodel/CarModelEventBindings;->startOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;Lcom/byd/carmodel/CarModelEventBindings$Binding;)Z

    :cond_5a
    return-void
.end method

.method private static releaseForRestart(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 3

    .line 513
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_b

    return-void

    .line 514
    :cond_b
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->LAST_POSES:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->takeOver(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return-void
.end method

.method private static releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 2

    .line 519
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->transitionSourceOf(Lcom/byd/carmodel/CarModelEventBindings$Binding;)Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/byd/carmodel/CarModelEventBindings;->releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;)V

    return-void
.end method

.method private static releaseOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;)V
    .registers 4

    .line 523
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_22

    .line 524
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-static {v0}, Lcom/byd/carmodel/CarModelEventBindings;->best(Ljava/lang/String;)Lcom/byd/carmodel/CarModelEventBindings$Binding;

    move-result-object v0

    if-eqz v0, :cond_1b

    if-eq v0, p0, :cond_1b

    .line 525
    invoke-static {v0, p1, p0}, Lcom/byd/carmodel/CarModelEventBindings;->startOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;Lcom/byd/carmodel/CarModelEventBindings$Binding;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 528
    :cond_1b
    invoke-static {p0, p1}, Lcom/byd/carmodel/CarModelEventBindings;->startReset(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;)Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    :cond_22
    if-eqz p1, :cond_2b

    .line 530
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->LAST_POSES:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const/4 p1, 0x0

    .line 531
    iput p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    .line 532
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->takeOver(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    .line 533
    iget-object p0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->reconcile(Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized reload(Landroid/content/Context;)V
    .registers 7

    const-class v0, Lcom/byd/carmodel/CarModelEventBindings;

    monitor-enter v0

    .line 42
    :try_start_3
    sget-object v1, Lcom/byd/carmodel/CarModelEventBindings;->EVENTS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;

    .line 43
    iget v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->generation:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->generation:I

    .line 44
    invoke-static {v2}, Lcom/byd/carmodel/CarModelEventBindings;->cancelPending(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    .line 45
    invoke-static {v2}, Lcom/byd/carmodel/CarModelEventBindings;->clear(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    goto :goto_d

    .line 47
    :cond_26
    sget-object v1, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 48
    sget-object v1, Lcom/byd/carmodel/CarModelEventBindings;->LAST_POSES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 49
    sget-object v1, Lcom/byd/carmodel/CarModelEventBindings;->EVENTS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_be

    if-nez p0, :cond_39

    .line 51
    monitor-exit v0

    return-void

    .line 53
    :cond_39
    :try_start_39
    invoke-static {p0}, Lcom/byd/carmodel/CarModelResolver;->activeManifest(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_bc

    .line 54
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_be

    if-nez v1, :cond_47

    goto/16 :goto_bc

    .line 58
    :cond_47
    :try_start_47
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "other"

    const-string v2, "modelType"

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_ad

    if-nez p0, :cond_60

    .line 60
    monitor-exit v0

    return-void

    :cond_60
    :try_start_60
    const-string p0, "eventBindings"

    .line 62
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_6a

    const/4 v1, 0x0

    goto :goto_6e

    .line 63
    :cond_6a
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    :goto_6e
    if-eqz v1, :cond_8d

    const/4 v2, 0x0

    .line 65
    :goto_71
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8d

    .line 66
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/byd/carmodel/CarModelEventBindings;->parse(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/byd/carmodel/CarModelEventBindings$Binding;

    move-result-object v4

    if-eqz v4, :cond_8a

    .line 69
    sget-object v5, Lcom/byd/carmodel/CarModelEventBindings;->EVENTS:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_8d
    const-string p0, "CarModelEventBindings"

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u52a0\u8f7d\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u52a8\u753b\u6620\u5c04\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/byd/carmodel/CarModelEventBindings;->EVENTS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/byd/carmodel/CarModelExtraSignals;->syncMovementFromSpeed()V
    :try_end_ac
    .catchall {:try_start_60 .. :try_end_ac} :catchall_ad

    goto :goto_ba

    :catchall_ad
    move-exception p0

    .line 76
    :try_start_ae
    sget-object v1, Lcom/byd/carmodel/CarModelEventBindings;->EVENTS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-string v1, "CarModelEventBindings"

    const-string v2, "\u8bfb\u53d6\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u52a8\u753b\u6620\u5c04\u5931\u8d25"

    .line 77
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_ae .. :try_end_ba} :catchall_be

    .line 79
    :goto_ba
    monitor-exit v0

    return-void

    .line 55
    :cond_bc
    :goto_bc
    monitor-exit v0

    return-void

    :catchall_be
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static replace(Lcom/byd/carmodel/CarModelEventBindings$Binding;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14

    const-string v0, "\u5207\u6362\u81ea\u5b9a\u4e49\u52a8\u753b\u5931\u8d25\uff1a"

    .line 710
    sget-object v1, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 712
    :try_start_6
    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object v9

    if-nez v9, :cond_e

    const/4 v3, 0x0

    goto :goto_10

    .line 713
    :cond_e
    iget-object v3, v9, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    :goto_10
    move-object v4, v3

    if-eqz v9, :cond_78

    if-eqz v4, :cond_78

    .line 714
    iget-object v3, v4, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    if-nez v3, :cond_1a

    goto :goto_78

    .line 717
    :cond_1a
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->enter:Ljava/lang/String;

    invoke-static {v9, v4, v3, v5}, Lcom/byd/carmodel/CarModelEventBindings;->stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    invoke-static {v9, v4, v3, v5}, Lcom/byd/carmodel/CarModelEventBindings;->stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->off:Ljava/lang/String;

    invoke-static {v9, v4, v3, v5}, Lcom/byd/carmodel/CarModelEventBindings;->stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    invoke-static {v9, v4, v3, v5}, Lcom/byd/carmodel/CarModelEventBindings;->stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    if-eqz v3, :cond_69

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->enter:Ljava/lang/String;

    .line 722
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    .line 723
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->off:Ljava/lang/String;

    .line 724
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    .line 725
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 726
    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    invoke-static {v9, v4, v3, v5}, Lcom/byd/carmodel/CarModelEventBindings;->stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_69
    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    move-object v3, v9

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/byd/carmodel/CarModelEventBindings;->append(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 729
    invoke-virtual {v9}, Lf/k/l/i/b;->s()V
    :try_end_75
    .catchall {:try_start_6 .. :try_end_75} :catchall_7a

    .line 730
    :try_start_75
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    .line 715
    :cond_78
    :goto_78
    monitor-exit v1

    return v2

    :catchall_7a
    move-exception p0

    const-string p2, "CarModelEventBindings"

    .line 732
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    monitor-exit v1

    return v2

    :catchall_8e
    move-exception p0

    .line 735
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_75 .. :try_end_90} :catchall_8e

    throw p0
.end method

.method static declared-synchronized resetAnimations()V
    .registers 4

    const-class v0, Lcom/byd/carmodel/CarModelEventBindings;

    monitor-enter v0

    .line 238
    :try_start_3
    sget-object v1, Lcom/byd/carmodel/CarModelEventBindings;->EVENTS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;

    .line 239
    iget v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->generation:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->generation:I

    .line 240
    invoke-static {v2}, Lcom/byd/carmodel/CarModelEventBindings;->cancelPending(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    .line 241
    invoke-static {v2}, Lcom/byd/carmodel/CarModelEventBindings;->clear(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    const/4 v3, 0x0

    .line 242
    iput-boolean v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    .line 243
    iput v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    .line 244
    iput-boolean v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 245
    iput-boolean v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    .line 246
    iput-boolean v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    .line 247
    iput-boolean v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    .line 248
    iput-boolean v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetting:Z

    .line 249
    iput-boolean v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    const/4 v3, 0x0

    .line 250
    iput-object v3, v2, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    goto :goto_d

    .line 252
    :cond_3a
    sget-object v1, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 253
    sget-object v1, Lcom/byd/carmodel/CarModelEventBindings;->LAST_POSES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_46

    .line 254
    monitor-exit v0

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static resetFor(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_31

    .line 447
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->event:Ljava/lang/String;

    iget-object v1, p1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v1, p1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->part:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetTransitions:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1c

    goto :goto_31

    .line 451
    :cond_1c
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetTransitions:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    iget p1, p1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->phase:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 452
    iget-object p0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetTransitions:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_31
    :goto_31
    const/4 p0, 0x0

    return-object p0
.end method

.method private static safeActiveEnd(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "hold"

    .line 342
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "reset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const-string p0, "none"

    :cond_13
    :goto_13
    return-object p0
.end method

.method private static safeDuration(Lorg/json/JSONObject;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 347
    :cond_4
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_11

    const p1, 0x927c0

    if-gt p0, p1, :cond_11

    move v0, p0

    :cond_11
    return v0
.end method

.method private static safeEndMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "reverse"

    .line 337
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "reset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "hold"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "finish"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_22

    :cond_21
    move-object p0, v0

    :cond_22
    :goto_22
    return-object p0
.end method

.method private static safeMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "loop"

    .line 333
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "stop"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const-string p0, "once"

    :cond_13
    :goto_13
    return-object p0
.end method

.method private static safeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_40

    .line 319
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_c

    goto :goto_40

    :cond_c
    const/4 v1, 0x0

    .line 322
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 323
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_1f

    const/16 v3, 0x7a

    if-le v2, v3, :cond_3c

    :cond_1f
    const/16 v3, 0x41

    if-lt v2, v3, :cond_27

    const/16 v3, 0x5a

    if-le v2, v3, :cond_3c

    :cond_27
    const/16 v3, 0x30

    if-lt v2, v3, :cond_2f

    const/16 v3, 0x39

    if-le v2, v3, :cond_3c

    :cond_2f
    const/16 v3, 0x5f

    if-eq v2, v3, :cond_3c

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3c

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3c

    return-object v0

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_3f
    return-object p0

    :cond_40
    :goto_40
    return-object v0
.end method

.method private static schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V
    .registers 6

    .line 352
    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->generation:I

    .line 353
    new-instance v1, Lcom/byd/carmodel/CarModelEventBindings$1;

    invoke-direct {v1, p0, v0, p3}, Lcom/byd/carmodel/CarModelEventBindings$1;-><init>(Lcom/byd/carmodel/CarModelEventBindings$Binding;II)V

    iput-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->pending:Ljava/lang/Runnable;

    .line 376
    sget-object p3, Lcom/byd/carmodel/CarModelEventBindings;->HANDLER:Landroid/os/Handler;

    iget-object p0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->pending:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static showHold(Lcom/byd/carmodel/CarModelEventBindings$Binding;)Z
    .registers 5

    .line 665
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 666
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->clear(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    const/4 p0, 0x0

    return p0

    .line 669
    :cond_d
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->clear(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    .line 670
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    const-string v2, "loop"

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/byd/carmodel/CarModelEventBindings;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 671
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    iput-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    return v0
.end method

.method private static startOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;Lcom/byd/carmodel/CarModelEventBindings$Binding;)Z
    .registers 13

    .line 180
    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13e

    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    if-nez v0, :cond_b

    goto/16 :goto_13e

    .line 183
    :cond_b
    invoke-static {p0, p1}, Lcom/byd/carmodel/CarModelEventBindings;->transitionFor(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 184
    iget v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitionDurationMs:I

    if-lez v3, :cond_18

    move v3, v2

    goto :goto_19

    :cond_18
    move v3, v1

    .line 185
    :goto_19
    iget v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    if-ne v4, v2, :cond_2b

    iget-object v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->enter:Ljava/lang/String;

    .line 186
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2b

    iget v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->enterDurationMs:I

    if-lez v4, :cond_2b

    move v4, v2

    goto :goto_2c

    :cond_2b
    move v4, v1

    :goto_2c
    if-nez v4, :cond_36

    if-eqz v3, :cond_31

    goto :goto_36

    .line 187
    :cond_31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    goto :goto_38

    :cond_36
    :goto_36
    const-wide/16 v5, 0x0

    :goto_38
    iput-wide v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->startedAt:J

    .line 191
    iget v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    const-string v6, "once"

    const/4 v7, 0x2

    if-ne v5, v7, :cond_47

    .line 192
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    const-string v5, "loop"

    const/4 v8, -0x1

    goto :goto_57

    :cond_47
    if-eqz v3, :cond_4c

    :goto_49
    move v8, v2

    move-object v5, v6

    goto :goto_57

    :cond_4c
    if-eqz v4, :cond_51

    .line 200
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->enter:Ljava/lang/String;

    goto :goto_49

    .line 204
    :cond_51
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    .line 205
    iget-object v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onMode:Ljava/lang/String;

    .line 206
    iget v8, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onRepeat:I

    .line 208
    :goto_57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_70

    if-nez p2, :cond_68

    iget-object v9, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    .line 209
    invoke-static {v9, v0, v5, v8}, Lcom/byd/carmodel/CarModelEventBindings;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_70

    goto :goto_6e

    .line 210
    :cond_68
    invoke-static {p2, v0, v5, v8}, Lcom/byd/carmodel/CarModelEventBindings;->replace(Lcom/byd/carmodel/CarModelEventBindings$Binding;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_70

    :goto_6e
    move v5, v2

    goto :goto_71

    :cond_70
    move v5, v1

    :goto_71
    if-eqz v5, :cond_74

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    .line 211
    :goto_75
    iput-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    .line 212
    iput-boolean v5, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    if-eqz v5, :cond_81

    if-nez v3, :cond_81

    if-eqz v4, :cond_81

    move v0, v2

    goto :goto_82

    :cond_81
    move v0, v1

    .line 213
    :goto_82
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    if-eqz v5, :cond_8a

    if-eqz v3, :cond_8a

    move v0, v2

    goto :goto_8b

    :cond_8a
    move v0, v1

    .line 214
    :goto_8b
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    .line 215
    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    if-nez v0, :cond_98

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    if-eqz v0, :cond_96

    goto :goto_98

    :cond_96
    move v0, v1

    goto :goto_99

    :cond_98
    :goto_98
    move v0, v2

    :goto_99
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    if-eqz v5, :cond_a3

    .line 216
    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    if-ne v0, v7, :cond_a3

    move v0, v2

    goto :goto_a4

    :cond_a3
    move v0, v1

    :goto_a4
    iput-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    if-nez v5, :cond_ab

    .line 218
    iput v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    return v1

    :cond_ab
    if-eqz p2, :cond_b0

    .line 221
    invoke-static {p2}, Lcom/byd/carmodel/CarModelEventBindings;->detachOwnerState(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    .line 222
    :cond_b0
    sget-object p2, Lcom/byd/carmodel/CarModelEventBindings;->OWNERS:Ljava/util/Map;

    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object p2, Lcom/byd/carmodel/CarModelEventBindings;->LAST_POSES:Ljava/util/Map;

    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u52a8\u753b\u4ef2\u88c1 part="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " owner="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->event:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    if-eqz v0, :cond_f5

    if-eqz p1, :cond_f5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " from="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->phase:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f7

    :cond_f5
    const-string p1, ""

    :goto_f7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CarModelEventBindings"

    .line 224
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-boolean p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    if-eqz p1, :cond_10f

    .line 227
    iget p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitionDurationMs:I

    int-to-long p1, p1

    const/4 v0, 0x5

    invoke-static {p0, p1, p2, v0}, Lcom/byd/carmodel/CarModelEventBindings;->schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V

    goto :goto_13d

    .line 228
    :cond_10f
    iget-boolean p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    if-eqz p1, :cond_11b

    .line 229
    iget p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->enterDurationMs:I

    int-to-long p1, p1

    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Lcom/byd/carmodel/CarModelEventBindings;->schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V

    goto :goto_13d

    .line 230
    :cond_11b
    iget p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    if-ne p1, v2, :cond_13d

    iget-object p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onMode:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13d

    iget p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onDurationMs:I

    if-lez p1, :cond_13d

    .line 231
    iget p1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onDurationMs:I

    int-to-long p1, p1

    .line 232
    iget-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeEnd:Ljava/lang/String;

    const-string v1, "hold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    goto :goto_13a

    :cond_139
    move v7, v2

    .line 231
    :goto_13a
    invoke-static {p0, p1, p2, v7}, Lcom/byd/carmodel/CarModelEventBindings;->schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V

    :cond_13d
    :goto_13d
    return v2

    :cond_13e
    :goto_13e
    return v1
.end method

.method private static startReset(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;)Z
    .registers 6

    .line 456
    invoke-static {p0, p1}, Lcom/byd/carmodel/CarModelEventBindings;->resetFor(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    .line 457
    iget v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetDurationMs:I

    if-gtz v2, :cond_c

    goto :goto_6a

    :cond_c
    const-string v2, "once"

    const/4 v3, 0x1

    .line 458
    invoke-static {p0, v0, v2, v3}, Lcom/byd/carmodel/CarModelEventBindings;->replace(Lcom/byd/carmodel/CarModelEventBindings$Binding;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 460
    :cond_16
    iput-object v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeTransition:Ljava/lang/String;

    .line 461
    iput-boolean v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    .line 462
    iput-boolean v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    .line 463
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    .line 464
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    .line 465
    iput-boolean v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetting:Z

    .line 466
    iput-boolean v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    .line 467
    iput v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->startedAt:J

    .line 469
    invoke-static {}, Lcom/byd/carmodel/CarModelEventBindings;->nextOrder()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->ownerOrder:J

    .line 470
    sget-object v0, Lcom/byd/carmodel/CarModelEventBindings;->LAST_POSES:Ljava/util/Map;

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetDurationMs:I

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lcom/byd/carmodel/CarModelEventBindings;->schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u52a8\u753b\u56de\u9ed8\u8ba4\u59ff\u6001 part="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->event:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " phase="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->phase:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarModelEventBindings"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6a
    :goto_6a
    return v1
.end method

.method private static stop(Lf/k/l/i/b;Lcom/autonavi/gbl/lane/model/CarStyleInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p3, :cond_1f

    .line 678
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1f

    .line 681
    :cond_9
    invoke-virtual {p0, p3}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    .line 682
    new-instance p0, Lcom/byd/lane/common/data/MyCarPartsAnimation;

    invoke-direct {p0}, Lcom/byd/lane/common/data/MyCarPartsAnimation;-><init>()V

    .line 684
    iput-object p2, p0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->name:Ljava/lang/String;

    .line 685
    iput-object p3, p0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    const/4 p2, 0x0

    .line 686
    iput p2, p0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    .line 687
    iput p2, p0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->repeatTimes:I

    .line 688
    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method private static takeOver(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    .registers 1

    .line 495
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->clear(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    .line 496
    invoke-static {p0}, Lcom/byd/carmodel/CarModelEventBindings;->detachOwnerState(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    return-void
.end method

.method private static transitionFor(Lcom/byd/carmodel/CarModelEventBindings$Binding;Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_39

    .line 439
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->event:Ljava/lang/String;

    iget-object v2, p1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->event:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    iget-object v2, p1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->part:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_39

    .line 440
    :cond_18
    iget-object p0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitions:Ljava/util/Map;

    iget-object v1, p1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->event:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_39

    .line 441
    array-length v1, p0

    if-nez v1, :cond_28

    goto :goto_39

    .line 442
    :cond_28
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    iget p1, p1, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->phase:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 443
    aget-object p0, p0, p1

    return-object p0

    :cond_39
    :goto_39
    return-object v0
.end method

.method private static transitionSourceOf(Lcom/byd/carmodel/CarModelEventBindings$Binding;)Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;
    .registers 8

    if-eqz p0, :cond_80

    .line 409
    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hasActivePose:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitioning:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    if-nez v0, :cond_10

    goto/16 :goto_80

    .line 413
    :cond_10
    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->holding:Z

    if-nez v0, :cond_6f

    iget v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    goto :goto_6f

    .line 415
    :cond_1a
    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->entering:Z

    if-nez v0, :cond_6d

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->switching:Z

    if-nez v0, :cond_6d

    iget-boolean v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetting:Z

    if-nez v0, :cond_6d

    iget-wide v0, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->startedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6d

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->startedAt:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 417
    iget-object v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onMode:Ljava/lang/String;

    const-string v3, "loop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 418
    iget v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->cycleDurationMs:I

    goto :goto_48

    :cond_46
    iget v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onDurationMs:I

    :goto_48
    const/4 v4, 0x1

    .line 417
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v4, v2

    .line 419
    iget-object v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onMode:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 420
    rem-long/2addr v0, v4

    long-to-double v0, v0

    long-to-double v2, v4

    div-double/2addr v0, v2

    goto :goto_64

    :cond_5b
    long-to-double v0, v0

    long-to-double v2, v4

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 421
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_64
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, v2

    .line 422
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_70

    :cond_6d
    const/4 v0, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v0, 0x3

    :goto_70
    move v4, v0

    .line 424
    new-instance v0, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;

    iget-object v2, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->event:Ljava/lang/String;

    iget-object v3, p0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v0

    :cond_80
    :goto_80
    const/4 p0, 0x0

    return-object p0
.end method
