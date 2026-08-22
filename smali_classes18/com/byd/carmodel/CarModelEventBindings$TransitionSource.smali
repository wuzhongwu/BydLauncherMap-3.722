.class final Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;
.super Ljava/lang/Object;
.source "CarModelEventBindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byd/carmodel/CarModelEventBindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransitionSource"
.end annotation


# instance fields
.field final capturedAt:J

.field final event:Ljava/lang/String;

.field final part:Ljava/lang/String;

.field final phase:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 6

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iput-object p1, p0, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->event:Ljava/lang/String;

    .line 845
    iput-object p2, p0, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->part:Ljava/lang/String;

    .line 846
    iput p3, p0, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->phase:I

    .line 847
    iput-wide p4, p0, Lcom/byd/carmodel/CarModelEventBindings$TransitionSource;->capturedAt:J

    return-void
.end method
