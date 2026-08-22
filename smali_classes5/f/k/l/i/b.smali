.class public Lf/k/l/i/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/k/l/i/b$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byd/lane/common/data/MyCarPartsStyle;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byd/lane/common/data/MyCarPartsAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

.field public g:Z

.field public h:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed$OnSpeedChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/k/l/i/b;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/k/l/i/b;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf/k/l/i/b;->e:Z

    new-instance v0, Lf/k/l/i/b$a;

    invoke-direct {v0, p0}, Lf/k/l/i/b$a;-><init>(Lf/k/l/i/b;)V

    iput-object v0, p0, Lf/k/l/i/b;->h:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed$OnSpeedChangeListener;

    invoke-virtual {p0}, Lf/k/l/i/b;->d()V

    return-void
.end method

.method public synthetic constructor <init>(Lf/k/l/i/b$a;)V
    .locals 0

    invoke-direct {p0}, Lf/k/l/i/b;-><init>()V

    return-void
.end method

.method public static b()Lf/k/l/i/b;
    .locals 1

    sget-object v0, Lf/k/l/i/b$b;->a:Lf/k/l/i/b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/autonavi/gbl/lane/model/CarStyleInfo;
    .locals 1

    iget-object v0, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lf/k/l/i/b;->e:Z

    return v0
.end method

.method public d()V
    .locals 5

    new-instance v0, Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    invoke-direct {v0}, Lcom/autonavi/gbl/lane/model/CarStyleInfo;-><init>()V

    iput-object v0, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    const/16 v1, 0x3e9

    iput v1, v0, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->modelResID:I

    new-instance v0, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v0}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    const-string v1, "CS_Car"

    iput-object v1, v0, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    const/16 v1, 0x3eb

    iput v1, v0, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    new-instance v1, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v1}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    const-string v2, "CS_Shadow"

    iput-object v2, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    const/16 v2, 0x3ea

    iput v2, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    new-instance v2, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v2}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    const-string v3, "CS_LPN"

    iput-object v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    const/16 v3, 0x3f8

    iput v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    iget-object v3, p0, Lf/k/l/i/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lf/k/l/i/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lf/k/l/i/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/byd/lane/common/data/MyCarPartsAnimation;

    invoke-direct {v0}, Lcom/byd/lane/common/data/MyCarPartsAnimation;-><init>()V

    const-string v1, "CS_WF"

    iput-object v1, v0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->name:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    const-string v2, "CS_WF_A"

    iput-object v2, v0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, v0, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->repeatTimes:I

    new-instance v3, Lcom/byd/lane/common/data/MyCarPartsAnimation;

    invoke-direct {v3}, Lcom/byd/lane/common/data/MyCarPartsAnimation;-><init>()V

    const-string v4, "CS_WB"

    iput-object v4, v3, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->name:Ljava/lang/String;

    iput v1, v3, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    const-string v4, "CS_WB_A"

    iput-object v4, v3, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    iput v2, v3, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->repeatTimes:I

    iget-object v2, p0, Lf/k/l/i/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/k/l/i/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object v0, v0, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    iget-object v2, p0, Lf/k/l/i/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object v0, v0, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    iget-object v2, p0, Lf/k/l/i/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v1}, Lf/k/l/i/b;->q(Z)V

    new-instance v0, Lcom/autosdk/common/storage/MapSharePreference;

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;->laneNavi:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;

    invoke-direct {v0, v1}, Lcom/autosdk/common/storage/MapSharePreference;-><init>(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceName;)V

    sget-object v1, Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;->laneNaviEnable:Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autosdk/common/storage/MapSharePreference;->d(Lcom/autosdk/common/storage/MapSharePreference$SharePreferenceKeyEnum;Z)Z

    move-result v0

    iput-boolean v0, p0, Lf/k/l/i/b;->g:Z

    return-void
.end method

.method public e()V
    .locals 2

    invoke-static {}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getInstance()Lcom/autosdk/bussiness/vehicle/BydAutoHub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autosdk/bussiness/vehicle/BydAutoHub;->getBydAutoSpeed()Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    move-result-object v0

    iput-object v0, p0, Lf/k/l/i/b;->f:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    iget-object v1, p0, Lf/k/l/i/b;->h:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed$OnSpeedChangeListener;

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;->registerListener(Lcom/autosdk/bussiness/vehicle/BydAutoSpeed$OnSpeedChangeListener;)V

    invoke-static {}, Lcom/byd/carmodel/CarModelExtraSignals;->syncMovementFromSpeed()V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object v0, v0, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object v2, v2, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;

    iget-object v2, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object v0, v0, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object v2, v2, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/gbl/lane/model/CarPartsStyle;

    iget-object v2, v2, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public h(I)V
    .locals 1

    invoke-static {}, Lf/k/r/f/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lf/k/l/i/b;->g:Z

    if-eqz v0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object p1

    invoke-virtual {p1}, Lf/k/l/i/b;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object p1

    invoke-virtual {p1}, Lf/k/l/i/b;->c()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lf/k/l/i/b;->b()Lf/k/l/i/b;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lf/k/l/i/b;->p(Z)V

    :cond_2
    return-void
.end method

.method public i(Z)V
    .locals 3

    const-string v0, "CS_Clearance"

    invoke-static {v0, p1}, Lcom/byd/carmodel/CarModelExtraSignals;->onBuiltInEvent(Ljava/lang/String;Z)V

    sget-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v1}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    const-string v2, "CS_Clearance"

    iput-object v2, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    const-string v2, "CS_Clearance"

    invoke-virtual {p0, v2}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x3f3

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    :goto_0
    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf/k/l/i/b;->s()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(Z)V
    .locals 3

    const-string v0, "CS_Lower"

    invoke-static {v0, p1}, Lcom/byd/carmodel/CarModelExtraSignals;->onBuiltInEvent(Ljava/lang/String;Z)V

    sget-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v1}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    const-string v2, "CS_Lower"

    iput-object v2, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    const-string v2, "CS_Lower"

    invoke-virtual {p0, v2}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x3ec

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    :goto_0
    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf/k/l/i/b;->s()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k(Z)V
    .locals 5

    const-string v0, "CS_Emergency"

    invoke-static {v0, p1}, Lcom/byd/carmodel/CarModelExtraSignals;->onBuiltInEvent(Ljava/lang/String;Z)V

    sget-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v1}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    const-string v2, "CS_Emergency"

    iput-object v2, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    new-instance v2, Lcom/byd/lane/common/data/MyCarPartsAnimation;

    invoke-direct {v2}, Lcom/byd/lane/common/data/MyCarPartsAnimation;-><init>()V

    const-string v3, "CS_Emergency"

    iput-object v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->name:Ljava/lang/String;

    const-string v3, "CS_Emergency_A"

    iput-object v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->repeatTimes:I

    const-string v4, "CS_Emergency"

    invoke-virtual {p0, v4}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    const-string v4, "CS_Emergency_A"

    invoke-virtual {p0, v4}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x3f2

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    const/4 p1, 0x1

    iput p1, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    goto :goto_0

    :cond_0
    iput v3, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    const/4 p1, 0x0

    iput p1, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    :goto_0
    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf/k/l/i/b;->s()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Z)V
    .locals 3

    const-string v0, "CS_High"

    invoke-static {v0, p1}, Lcom/byd/carmodel/CarModelExtraSignals;->onBuiltInEvent(Ljava/lang/String;Z)V

    sget-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v1}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    const-string v2, "CS_High"

    iput-object v2, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    const-string v2, "CS_High"

    invoke-virtual {p0, v2}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x3ed

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    :goto_0
    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf/k/l/i/b;->s()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(Z)V
    .locals 5

    const-string v0, "CS_LDirection"

    invoke-static {v0, p1}, Lcom/byd/carmodel/CarModelExtraSignals;->onBuiltInEvent(Ljava/lang/String;Z)V

    sget-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v1}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    const-string v2, "CS_LDirection"

    iput-object v2, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    new-instance v2, Lcom/byd/lane/common/data/MyCarPartsAnimation;

    invoke-direct {v2}, Lcom/byd/lane/common/data/MyCarPartsAnimation;-><init>()V

    const-string v3, "CS_LDirection"

    iput-object v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->name:Ljava/lang/String;

    const-string v3, "CS_LDirection_A"

    iput-object v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->repeatTimes:I

    const-string v4, "CS_LDirection"

    invoke-virtual {p0, v4}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    const-string v4, "CS_LDirection_A"

    invoke-virtual {p0, v4}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x3f0

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    const/4 p1, 0x1

    iput p1, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    goto :goto_0

    :cond_0
    iput v3, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    const/4 p1, 0x0

    iput p1, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    :goto_0
    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf/k/l/i/b;->s()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n(Z)V
    .locals 5

    const-string v0, "CS_RDirection"

    invoke-static {v0, p1}, Lcom/byd/carmodel/CarModelExtraSignals;->onBuiltInEvent(Ljava/lang/String;Z)V

    sget-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v1}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    const-string v2, "CS_RDirection"

    iput-object v2, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    new-instance v2, Lcom/byd/lane/common/data/MyCarPartsAnimation;

    invoke-direct {v2}, Lcom/byd/lane/common/data/MyCarPartsAnimation;-><init>()V

    const-string v3, "CS_RDirection"

    iput-object v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->name:Ljava/lang/String;

    const-string v3, "CS_RDirection_A"

    iput-object v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->repeatTimes:I

    const-string v4, "CS_RDirection"

    invoke-virtual {p0, v4}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    const-string v4, "CS_RDirection_A"

    invoke-virtual {p0, v4}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x3f1

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    const/4 p1, 0x1

    iput p1, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    goto :goto_0

    :cond_0
    iput v3, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    const/4 p1, 0x0

    iput p1, v2, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    :goto_0
    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf/k/l/i/b;->s()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public o(Z)V
    .locals 3

    const-string v0, "CS_Stop"

    invoke-static {v0, p1}, Lcom/byd/carmodel/CarModelExtraSignals;->onBuiltInEvent(Ljava/lang/String;Z)V

    sget-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/byd/lane/common/data/MyCarPartsStyle;

    invoke-direct {v1}, Lcom/byd/lane/common/data/MyCarPartsStyle;-><init>()V

    const-string v2, "CS_Stop"

    iput-object v2, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->name:Ljava/lang/String;

    const-string v2, "CS_Stop"

    invoke-virtual {p0, v2}, Lf/k/l/i/b;->g(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x3ee

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, v1, Lcom/autonavi/gbl/lane/model/CarPartsStyle;->textureId:I

    :goto_0
    iget-object p1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object p1, p1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsStyle:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf/k/l/i/b;->s()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public p(Z)V
    .locals 7

    const-string v0, "CS_WF"

    invoke-static {v0, p1}, Lcom/byd/carmodel/CarModelExtraSignals;->onBuiltInEvent(Ljava/lang/String;Z)V

    const-string v0, "CS_WB"

    invoke-static {v0, p1}, Lcom/byd/carmodel/CarModelExtraSignals;->onBuiltInEvent(Ljava/lang/String;Z)V

    const-string v0, "CarStyleManager"

    const-string v1, "openState={?}"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/autosdk/bussiness/common/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lf/k/l/i/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "CS_WF_A"

    invoke-virtual {p0, v1}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    const-string v1, "CS_WB_A"

    invoke-virtual {p0, v1}, Lf/k/l/i/b;->f(Ljava/lang/String;)V

    new-instance v1, Lcom/byd/lane/common/data/MyCarPartsAnimation;

    invoke-direct {v1}, Lcom/byd/lane/common/data/MyCarPartsAnimation;-><init>()V

    const-string v3, "CS_WF"

    iput-object v3, v1, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->name:Ljava/lang/String;

    const-string v3, "CS_WF_A"

    iput-object v3, v1, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, v1, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->repeatTimes:I

    new-instance v4, Lcom/byd/lane/common/data/MyCarPartsAnimation;

    invoke-direct {v4}, Lcom/byd/lane/common/data/MyCarPartsAnimation;-><init>()V

    const-string v6, "CS_WB"

    iput-object v6, v4, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->name:Ljava/lang/String;

    const-string v6, "CS_WB_A"

    iput-object v6, v4, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationName:Ljava/lang/String;

    iput v3, v4, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->repeatTimes:I

    if-eqz p1, :cond_0

    iput v2, v1, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    iput v2, v4, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    goto :goto_0

    :cond_0
    iput v5, v1, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    iput v5, v4, Lcom/autonavi/gbl/lane/model/CarPartsAnimation;->animationType:I

    :goto_0
    iget-object v2, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object v2, v2, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    iget-object v1, v1, Lcom/autonavi/gbl/lane/model/CarStyleInfo;->partsAnimation:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf/k/l/i/b;->s()V

    invoke-virtual {p0, p1}, Lf/k/l/i/b;->q(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lf/k/l/i/b;->e:Z

    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lf/k/l/i/b;->f:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lf/k/l/i/b;->h:Lcom/autosdk/bussiness/vehicle/BydAutoSpeed$OnSpeedChangeListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/autosdk/bussiness/vehicle/BydAutoSpeed;->unregisterListener(Lcom/autosdk/bussiness/vehicle/BydAutoSpeed$OnSpeedChangeListener;)V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 2

    invoke-static {}, Lf/k/l/i/c;->c()Lf/k/l/i/c;

    move-result-object v0

    iget-object v1, p0, Lf/k/l/i/b;->b:Lcom/autonavi/gbl/lane/model/CarStyleInfo;

    invoke-virtual {v0, v1}, Lf/k/l/i/c;->f(Lcom/autonavi/gbl/lane/model/CarStyleInfo;)V

    return-void
.end method
