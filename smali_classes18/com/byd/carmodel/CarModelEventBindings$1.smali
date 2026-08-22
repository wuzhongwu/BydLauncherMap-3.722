.class Lcom/byd/carmodel/CarModelEventBindings$1;
.super Ljava/lang/Object;
.source "CarModelEventBindings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byd/carmodel/CarModelEventBindings;->schedule(Lcom/byd/carmodel/CarModelEventBindings$Binding;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:I

.field final synthetic val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

.field final synthetic val$generation:I


# direct methods
.method constructor <init>(Lcom/byd/carmodel/CarModelEventBindings$Binding;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

    iput p2, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$generation:I

    iput p3, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 356
    const-class v0, Lcom/byd/carmodel/CarModelEventBindings;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

    iget v1, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->generation:I

    iget v2, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$generation:I

    if-eq v1, v2, :cond_d

    monitor-exit v0

    return-void

    .line 358
    :cond_d
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->pending:Ljava/lang/Runnable;

    .line 359
    iget v1, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$action:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2a

    .line 360
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

    iget-boolean v1, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->active:Z

    if-eqz v1, :cond_4a

    .line 361
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

    const/4 v2, 0x1

    iput v2, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->desiredPose:I

    .line 362
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

    iget-object v1, v1, Lcom/byd/carmodel/CarModelEventBindings$Binding;->part:Ljava/lang/String;

    # invokes: Lcom/byd/carmodel/CarModelEventBindings;->reconcile(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->access$000(Ljava/lang/String;)V

    goto :goto_4a

    :cond_2a
    const/4 v2, 0x4

    if-ne v1, v2, :cond_33

    .line 365
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

    # invokes: Lcom/byd/carmodel/CarModelEventBindings;->completeEnter(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->access$100(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    goto :goto_4a

    :cond_33
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3c

    .line 367
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

    # invokes: Lcom/byd/carmodel/CarModelEventBindings;->completeTransition(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->access$200(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    goto :goto_4a

    :cond_3c
    const/4 v2, 0x6

    if-ne v1, v2, :cond_45

    .line 369
    iget-object v1, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

    # invokes: Lcom/byd/carmodel/CarModelEventBindings;->completeReset(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V
    invoke-static {v1}, Lcom/byd/carmodel/CarModelEventBindings;->access$300(Lcom/byd/carmodel/CarModelEventBindings$Binding;)V

    goto :goto_4a

    .line 371
    :cond_45
    iget-object v2, p0, Lcom/byd/carmodel/CarModelEventBindings$1;->val$binding:Lcom/byd/carmodel/CarModelEventBindings$Binding;

    # invokes: Lcom/byd/carmodel/CarModelEventBindings;->completeOwner(Lcom/byd/carmodel/CarModelEventBindings$Binding;I)V
    invoke-static {v2, v1}, Lcom/byd/carmodel/CarModelEventBindings;->access$400(Lcom/byd/carmodel/CarModelEventBindings$Binding;I)V

    .line 373
    :cond_4a
    :goto_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v1
.end method
