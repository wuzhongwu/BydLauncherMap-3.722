.class Lcom/byd/mockgps/MockTime$1;
.super Ljava/lang/Object;
.source "MockTime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/mockgps/MockTime;->sync(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mode:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput p1, p0, Lcom/byd/mockgps/MockTime$1;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 148
    iget p0, p0, Lcom/byd/mockgps/MockTime$1;->val$mode:I

    # invokes: Lcom/byd/mockgps/MockTime;->pushOnce(I)V
    invoke-static {p0}, Lcom/byd/mockgps/MockTime;->access$000(I)V

    return-void
.end method
