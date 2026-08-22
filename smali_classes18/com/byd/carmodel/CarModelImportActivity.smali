.class public Lcom/byd/carmodel/CarModelImportActivity;
.super Landroid/app/Activity;
.source "CarModelImportActivity.java"


# static fields
.field private static final REQUEST_PICK:I = 0x2bc1


# instance fields
.field private progress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/byd/carmodel/CarModelImportActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/byd/carmodel/CarModelImportActivity;->onImportDone(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onImportDone(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 59
    iget-object p1, p0, Lcom/byd/carmodel/CarModelImportActivity;->progress:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_a

    .line 61
    :try_start_4
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7

    :catchall_7
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/byd/carmodel/CarModelImportActivity;->progress:Landroid/app/ProgressDialog;

    .line 66
    :cond_a
    invoke-virtual {p0}, Lcom/byd/carmodel/CarModelImportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 67
    invoke-virtual {p0}, Lcom/byd/carmodel/CarModelImportActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x2bc1

    if-eq p1, v0, :cond_b

    .line 37
    invoke-virtual {p0}, Lcom/byd/carmodel/CarModelImportActivity;->finish()V

    return-void

    :cond_b
    const/4 p1, -0x1

    if-ne p2, p1, :cond_15

    if-eqz p3, :cond_15

    .line 40
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    if-nez p1, :cond_1c

    .line 42
    invoke-virtual {p0}, Lcom/byd/carmodel/CarModelImportActivity;->finish()V

    return-void

    .line 45
    :cond_1c
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/byd/carmodel/CarModelImportActivity;->progress:Landroid/app/ProgressDialog;

    const-string p3, "\u6b63\u5728\u5bfc\u5165\u8f66\u6a21\u5305\u2026"

    .line 46
    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p2, p0, Lcom/byd/carmodel/CarModelImportActivity;->progress:Landroid/app/ProgressDialog;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 48
    iget-object p2, p0, Lcom/byd/carmodel/CarModelImportActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V

    .line 49
    invoke-virtual {p0}, Lcom/byd/carmodel/CarModelImportActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/byd/carmodel/CarModelImportActivity$1;

    invoke-direct {p3, p0}, Lcom/byd/carmodel/CarModelImportActivity$1;-><init>(Lcom/byd/carmodel/CarModelImportActivity;)V

    invoke-static {p2, p1, p3}, Lcom/byd/carmodel/CarModelPackageManager;->importAsync(Landroid/content/Context;Landroid/net/Uri;Lcom/byd/carmodel/CarModelPackageManager$Callback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_6

    return-void

    .line 21
    :cond_6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x2bc1

    .line 26
    :try_start_1d
    invoke-virtual {p0, p1, v1}, Lcom/byd/carmodel/CarModelImportActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_2d

    :catchall_21
    const-string p1, "\u5f53\u524d\u7cfb\u7edf\u6ca1\u6709\u53ef\u7528\u7684\u6587\u4ef6\u9009\u62e9\u5668"

    .line 28
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 29
    invoke-virtual {p0}, Lcom/byd/carmodel/CarModelImportActivity;->finish()V

    :goto_2d
    return-void
.end method
