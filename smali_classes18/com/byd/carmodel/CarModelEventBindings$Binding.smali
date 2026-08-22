.class final Lcom/byd/carmodel/CarModelEventBindings$Binding;
.super Ljava/lang/Object;
.source "CarModelEventBindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/carmodel/CarModelEventBindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Binding"
.end annotation


# instance fields
.field active:Z

.field final activeEnd:Ljava/lang/String;

.field activeTransition:Ljava/lang/String;

.field final cycleDurationMs:I

.field desiredPose:I

.field final endMode:Ljava/lang/String;

.field final enter:Ljava/lang/String;

.field final enterDurationMs:I

.field entering:Z

.field final event:Ljava/lang/String;

.field generation:I

.field hasActivePose:Z

.field final hold:Ljava/lang/String;

.field holding:Z

.field final off:Ljava/lang/String;

.field final offDurationMs:I

.field final offMode:Ljava/lang/String;

.field final offRepeat:I

.field final on:Ljava/lang/String;

.field final onDurationMs:I

.field final onMode:Ljava/lang/String;

.field final onRepeat:I

.field order:J

.field ownerOrder:J

.field final part:Ljava/lang/String;

.field pending:Ljava/lang/Runnable;

.field final priority:I

.field final resetDurationMs:I

.field final resetTransitions:[Ljava/lang/String;

.field resetting:Z

.field startedAt:J

.field switching:Z

.field final transitionDurationMs:I

.field transitioning:Z

.field final transitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final triggerDelayMs:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;IIIIIIIII)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "IIIIIIIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 812
    iput-object v1, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->event:Ljava/lang/String;

    move-object v2, p2

    .line 813
    iput-object v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    const-string v2, ""

    if-nez p3, :cond_10

    move-object v3, v2

    goto :goto_11

    :cond_10
    move-object v3, p3

    .line 814
    :goto_11
    iput-object v3, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->enter:Ljava/lang/String;

    move-object v3, p4

    .line 815
    iput-object v3, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->on:Ljava/lang/String;

    move-object v3, p5

    .line 816
    iput-object v3, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->off:Ljava/lang/String;

    if-nez p6, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object v2, p6

    .line 817
    :goto_1d
    iput-object v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->hold:Ljava/lang/String;

    move-object v2, p7

    .line 818
    iput-object v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onMode:Ljava/lang/String;

    move-object v2, p8

    .line 819
    iput-object v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->offMode:Ljava/lang/String;

    move-object v2, p9

    .line 820
    iput-object v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->endMode:Ljava/lang/String;

    move-object v2, p10

    .line 821
    iput-object v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->activeEnd:Ljava/lang/String;

    if-nez p11, :cond_33

    .line 822
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_34

    :cond_33
    move-object v2, p11

    :goto_34
    iput-object v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitions:Ljava/util/Map;

    if-nez p12, :cond_3c

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    goto :goto_3e

    :cond_3c
    move-object/from16 v2, p12

    .line 823
    :goto_3e
    iput-object v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetTransitions:[Ljava/lang/String;

    move/from16 v2, p13

    .line 824
    iput v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onRepeat:I

    move/from16 v2, p14

    .line 825
    iput v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->offRepeat:I

    move/from16 v2, p15

    .line 826
    iput v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->enterDurationMs:I

    move/from16 v2, p16

    .line 827
    iput v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->transitionDurationMs:I

    move/from16 v2, p17

    .line 828
    iput v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->resetDurationMs:I

    move/from16 v2, p18

    .line 829
    iput v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->onDurationMs:I

    move/from16 v2, p19

    .line 830
    iput v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->offDurationMs:I

    move/from16 v2, p20

    .line 831
    iput v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->cycleDurationMs:I

    move/from16 v2, p21

    .line 832
    iput v2, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->triggerDelayMs:I

    .line 833
    # invokes: Lcom/byd/carmodel/CarModelEventBindings;->priorityOf(Ljava/lang/String;)I
    invoke-static {p1}, Lcom/byd/carmodel/CarModelEventBindings;->access$500(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/byd/carmodel/CarModelEventBindings$Binding;->priority:I

    return-void
.end method
