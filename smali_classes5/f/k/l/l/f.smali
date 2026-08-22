.class public Lf/k/l/l/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "[B>;>;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/gbl/lane/model/LaneResourceResponse;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lf/k/l/l/f;->a:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lf/k/l/l/f;->b:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lf/k/l/l/f;->a:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/k/l/l/f;->a:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lf/k/l/l/f;->b:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lf/k/l/l/f;->b:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public b(I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lf/h/c/c0;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/byd/carmodel/CarModelResolver;->resolve(Landroid/content/Context;I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_imported_model_skip

    return-object v0

    :cond_imported_model_skip
    invoke-static {p1}, Lf/k/l/l/h;->b(I)Landroid/util/Pair;

    move-result-object v0

    const/16 v1, 0x96b

    const-string v2, "LaneCarSRResource/CarAround/Sedan/Texture/CA_Main_1.png"

    if-eq p1, v1, :cond_1

    const/16 v1, 0x96c

    if-eq p1, v1, :cond_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    packed-switch p1, :pswitch_data_7

    const-string v2, ""

    goto/16 :goto_1

    :pswitch_0
    const-string v2, "LaneCarSRResource/Decision/Texture/Waiting_night.png"

    goto/16 :goto_1

    :pswitch_1
    const-string v2, "LaneCarSRResource/Decision/Texture/TargetLane_night.png"

    goto/16 :goto_1

    :pswitch_2
    const-string v2, "LaneCarSRResource/Decision/Texture/LCC_night.png"

    goto/16 :goto_1

    :pswitch_3
    const-string v2, "LaneCarSRResource/Decision/Texture/GuideLine_night.png"

    goto/16 :goto_1

    :pswitch_4
    const-string v2, "LaneCarSRResource/ADAS/LDWELK.png"

    goto/16 :goto_1

    :pswitch_5
    const-string v2, "LaneCarSRResource/ADAS/LKA.png"

    goto/16 :goto_1

    :pswitch_6
    const-string v2, "LaneCarSRResource/ADAS/NO_CHANGE_LINE.png"

    goto/16 :goto_1

    :pswitch_7
    const-string v2, "LaneCarSRResource/Decision/Texture/TargetLocation_day.png"

    goto/16 :goto_1

    :pswitch_8
    const-string v2, "LaneCarSRResource/Decision/Texture/LCC_day.png"

    goto/16 :goto_1

    :pswitch_9
    const-string v2, "LaneCarSRResource/Decision/Texture/GuideLine_day.png"

    goto/16 :goto_1

    :pswitch_a
    const-string v2, "LaneCarSRResource/Decision/Texture/Waiting_day.png"

    goto/16 :goto_1

    :pswitch_b
    const-string v2, "LaneCarSRResource/Decision/Texture/TargetLane_day.png"

    goto/16 :goto_1

    :pswitch_c
    const-string v2, "LaneCarSRResource/Decision/Texture/Outline_day.png"

    goto/16 :goto_1

    :pswitch_d
    const-string v2, "LaneCarSRResource/DecisionLine/lujingmiaobian_day.png"

    goto/16 :goto_1

    :pswitch_e
    const-string v2, "LaneCarSRResource/CarAround/SUV/Texture/CA_Shadow.png"

    goto/16 :goto_1

    :pswitch_f
    const-string v2, "LaneCarSRResource/CarAround/SUV/SUV.dat"

    goto/16 :goto_1

    :pswitch_10
    const-string v2, "LaneCarSRResource/CarAround/Truck/Texture/CA_Shadow.png"

    goto/16 :goto_1

    :pswitch_11
    const-string v2, "LaneCarSRResource/CarAround/Truck/Texture/CA_Main_1.png"

    goto/16 :goto_1

    :pswitch_12
    const-string v2, "LaneCarSRResource/CarAround/Truck/Truck.dat"

    goto/16 :goto_1

    :pswitch_13
    const-string v2, "LaneCarSRResource/CarAround/Pickup/Texture/CA_Shadow.png"

    goto/16 :goto_1

    :pswitch_14
    const-string v2, "LaneCarSRResource/CarAround/Pickup/Pickup.dat"

    goto/16 :goto_1

    :pswitch_15
    const-string v2, "LaneCarSRResource/HumanAnimal/Tricycle/Texture/Tri_Shadow.png"

    goto/16 :goto_1

    :pswitch_16
    const-string v2, "LaneCarSRResource/HumanAnimal/Tricycle/Texture/Tri_1.png"

    goto/16 :goto_1

    :pswitch_17
    const-string v2, "LaneCarSRResource/HumanAnimal/Tricycle/Tricycle.dat"

    goto/16 :goto_1

    :pswitch_18
    const-string v2, "LaneCarSRResource/HumanAnimal/Pedestrian/Texture/Ped_1.png"

    goto/16 :goto_1

    :pswitch_19
    const-string v2, "LaneCarSRResource/HumanAnimal/Pedestrian/Pedestrian.dat"

    goto/16 :goto_1

    :pswitch_1a
    const-string v2, "LaneCarSRResource/HumanAnimal/Motorcycle/Texture/Mot_Shadow.png"

    goto/16 :goto_1

    :pswitch_1b
    const-string v2, "LaneCarSRResource/HumanAnimal/Motorcycle/Texture/Mot_1.png"

    goto/16 :goto_1

    :pswitch_1c
    const-string v2, "LaneCarSRResource/HumanAnimal/Motorcycle/Motorcycle.dat"

    goto/16 :goto_1

    :pswitch_1d
    const-string v2, "LaneCarSRResource/HumanAnimal/Pedestrian/Texture/Ped_Shadow.png"

    goto/16 :goto_1

    :pswitch_1e
    const-string v2, "LaneCarSRResource/HumanAnimal/Bicycle/Texture/Bic_Shadow.png"

    goto/16 :goto_1

    :pswitch_1f
    const-string v2, "LaneCarSRResource/HumanAnimal/Bicycle/Bicycle.dat"

    goto/16 :goto_1

    :pswitch_20
    const-string v2, "LaneCarSRResource/HumanAnimal/Animal/Texture/Ani_Shadow.png"

    goto/16 :goto_1

    :pswitch_21
    const-string v2, "LaneCarSRResource/HumanAnimal/Animal/Texture/Ani_1.png"

    goto/16 :goto_1

    :pswitch_22
    const-string v2, "LaneCarSRResource/HumanAnimal/Animal/Animal.dat"

    goto/16 :goto_1

    :pswitch_23
    const-string v2, "LaneCarSRResource/StaticTrafficFacilities/TrafficCone/Texture/TrafficCone_Shadow.png"

    goto/16 :goto_1

    :pswitch_24
    const-string v2, "LaneCarSRResource/StaticTrafficFacilities/TrafficCone/Texture/TrafficCone.png"

    goto/16 :goto_1

    :pswitch_25
    const-string v2, "LaneCarSRResource/StaticTrafficFacilities/TrafficCone/TrafficCone.dat"

    goto/16 :goto_1

    :pswitch_26
    const-string v2, "LaneCarSRResource/Warning/Texture/Warn_RB.png"

    goto/16 :goto_1

    :pswitch_27
    const-string v2, "LaneCarSRResource/Warning/Texture/Warn_LB.png"

    goto/16 :goto_1

    :pswitch_28
    const-string v2, "LaneCarSRResource/Warning/Texture/Warn_RF.png"

    goto/16 :goto_1

    :pswitch_29
    const-string v2, "LaneCarSRResource/Warning/Texture/Warn_LF.png"

    goto/16 :goto_1

    :pswitch_2a
    const-string v2, "LaneCarSRResource/Warning/Texture/Warn_R.png"

    goto/16 :goto_1

    :pswitch_2b
    const-string v2, "LaneCarSRResource/Warning/Texture/Warn_L.png"

    goto/16 :goto_1

    :pswitch_2c
    const-string v2, "LaneCarSRResource/Warning/Texture/Warn_B.png"

    goto/16 :goto_1

    :pswitch_2d
    const-string v2, "LaneCarSRResource/Warning/Texture/Warn_F.png"

    goto/16 :goto_1

    :pswitch_2e
    const-string v2, "LaneCarSRResource/Warning/Warning.dat"

    goto/16 :goto_1

    :pswitch_2f
    const-string v2, "LaneCarSRResource/CarAround/Sedan/Texture/CA_Emergency.png"

    goto/16 :goto_1

    :pswitch_30
    const-string v2, "LaneCarSRResource/CarAround/Sedan/Texture/CA_Shadow.png"

    goto/16 :goto_1

    :pswitch_31
    const-string v2, "LaneCarSRResource/CarAround/Sedan/Sedan.dat"

    goto/16 :goto_1

    :pswitch_32
    const-string v2, "LaneCarSRResource/CarAround/Fire/Texture/CA_Shadow.png"

    goto/16 :goto_1

    :pswitch_33
    const-string v2, "LaneCarSRResource/CarAround/Fire/Fire.dat"

    goto/16 :goto_1

    :pswitch_34
    const-string v2, "LaneCarSRResource/CarAround/Coach/Texture/CA_Shadow.png"

    goto/16 :goto_1

    :pswitch_35
    const-string v2, "LaneCarSRResource/CarAround/Coach/Clean.dat"

    goto/16 :goto_1

    :pswitch_36
    const-string v2, "LaneCarSRResource/CarAround/Clean/Texture/CA_Shadow.png"

    goto/16 :goto_1

    :pswitch_37
    const-string v2, "LaneCarSRResource/CarAround/Clean/Clean.dat"

    goto/16 :goto_1

    :pswitch_38
    const-string v2, "LaneCarSRResource/CarAround/Ambulance/Texture/CA_Shadow.png"

    goto/16 :goto_1

    :pswitch_39
    const-string v2, "LaneCarSRResource/CarAround/Ambulance/Texture/CA_Main_1.png"

    goto/16 :goto_1

    :pswitch_3a
    const-string v2, "LaneCarSRResource/CarAround/Ambulance/Ambulance.dat"

    goto/16 :goto_1

    :pswitch_3b
    const-string v2, "LaneCarSRResource/CarAround/BUS/Texture/CA_Shadow.png"

    goto/16 :goto_1

    :pswitch_3c
    const-string v2, "LaneCarSRResource/CarAround/BUS/Texture/CA_Main_1.png"

    goto/16 :goto_1

    :pswitch_3d
    const-string v2, "LaneCarSRResource/CarAround/BUS/BUS.dat"

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "LaneCarSRResource/StaticTrafficFacilities/WarnTriangle/Texture/WarnTriangle.png"

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "LaneCarSRResource/StaticTrafficFacilities/WarnTriangle/WarnTriangle.dat"

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "LaneCarSRResource/StaticTrafficFacilities/Construction/Texture/Construction.png"

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "LaneCarSRResource/StaticTrafficFacilities/Construction/Construction.dat"

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "LaneCarSRResource/StaticTrafficFacilities/Drum/Texture/Drum_Shadow.png"

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "LaneCarSRResource/StaticTrafficFacilities/Drum/Texture/Drum.png"

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "LaneCarSRResource/StaticTrafficFacilities/Drum/Drum.dat"

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "LaneCarSRResource/CarAround/VAN/Texture/CA_Main_2.png"

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "LaneCarSRResource/CarAround/VAN/Texture/CA_Shadow.png"

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "LaneCarSRResource/CarAround/VAN/Texture/CA_Main.png"

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "LaneCarSRResource/CarAround/VAN/VAN.dat"

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "LaneCarSRResource/CarAround/SUV/Texture/CA_Main_2.png"

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "LaneCarSRResource/CarAround/Truck/Texture/CA_Main_2.png"

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "LaneCarSRResource/CarAround/Pickup/Texture/CA_Main_2.png"

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "LaneCarSRResource/CarAround/Truck/Texture/CA_Main_9.png"

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "LaneCarSRResource/CarAround/Truck/Texture/CA_Main_13.png"

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "LaneCarSRResource/CarAround/Truck/Texture/CA_Main_17.png"

    goto/16 :goto_1

    :pswitch_3e
    :sswitch_11
    const-string v2, "LaneCarSRResource/CarAround/SUV/Texture/CA_Main.png"

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "LaneCarSRResource/CarAround/Truck/Texture/CA_Main_19.png"

    goto/16 :goto_1

    :pswitch_3f
    :sswitch_13
    const-string v2, "LaneCarSRResource/CarAround/Pickup/Texture/CA_Main.png"

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "LaneCarSRResource/HumanAnimal/Pedestrian/Texture/Ped_2.png"

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "LaneCarSRResource/HumanAnimal/Tricycle/Texture/Tri_2.png"

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "LaneCarSRResource/HumanAnimal/Animal/Texture/Ani_2.png"

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "LaneCarSRResource/HumanAnimal/Tricycle/Texture/Tri_9.png"

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "LaneCarSRResource/HumanAnimal/Pedestrian/Texture/Ped_9.png"

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "LaneCarSRResource/HumanAnimal/Motorcycle/Texture/Mot_9.png"

    goto/16 :goto_1

    :sswitch_1a
    const-string v2, "LaneCarSRResource/HumanAnimal/Animal/Texture/Ani_9.png"

    goto/16 :goto_1

    :sswitch_1b
    const-string v2, "LaneCarSRResource/HumanAnimal/Motorcycle/Texture/Mot_2.png"

    goto/16 :goto_1

    :sswitch_1c
    const-string v2, "LaneCarSRResource/HumanAnimal/Tricycle/Texture/Tri_13.png"

    goto/16 :goto_1

    :sswitch_1d
    const-string v2, "LaneCarSRResource/HumanAnimal/Pedestrian/Texture/Ped_13.png"

    goto/16 :goto_1

    :sswitch_1e
    const-string v2, "LaneCarSRResource/HumanAnimal/Motorcycle/Texture/Mot_13.png"

    goto/16 :goto_1

    :sswitch_1f
    const-string v2, "LaneCarSRResource/HumanAnimal/Animal/Texture/Ani_13.png"

    goto/16 :goto_1

    :sswitch_20
    const-string v2, "LaneCarSRResource/HumanAnimal/Tricycle/Texture/Tri_17.png"

    goto/16 :goto_1

    :sswitch_21
    const-string v2, "LaneCarSRResource/HumanAnimal/Pedestrian/Texture/Ped_17.png"

    goto/16 :goto_1

    :sswitch_22
    const-string v2, "LaneCarSRResource/HumanAnimal/Motorcycle/Texture/Mot_17.png"

    goto/16 :goto_1

    :sswitch_23
    const-string v2, "LaneCarSRResource/HumanAnimal/Animal/Texture/Ani_17.png"

    goto/16 :goto_1

    :sswitch_24
    const-string v2, "LaneCarSRResource/HumanAnimal/Tricycle/Texture/Tri_19.png"

    goto/16 :goto_1

    :sswitch_25
    const-string v2, "LaneCarSRResource/HumanAnimal/Pedestrian/Texture/Ped_19.png"

    goto/16 :goto_1

    :sswitch_26
    const-string v2, "LaneCarSRResource/HumanAnimal/Motorcycle/Texture/Mot_19.png"

    goto/16 :goto_1

    :sswitch_27
    const-string v2, "LaneCarSRResource/HumanAnimal/Animal/Texture/Ani_19.png"

    goto/16 :goto_1

    :sswitch_28
    const-string v2, "LaneCarSRResource/CarAround/Sedan/Texture/CA_Main_2.png"

    goto/16 :goto_1

    :sswitch_29
    const-string v2, "LaneCarSRResource/CarAround/Sedan/Texture/CA_Main_9.png"

    goto/16 :goto_1

    :sswitch_2a
    const-string v2, "LaneCarSRResource/CarAround/Sedan/Texture/CA_Main_13.png"

    goto/16 :goto_1

    :sswitch_2b
    const-string v2, "LaneCarSRResource/CarAround/Sedan/Texture/CA_Main_17.png"

    goto/16 :goto_1

    :sswitch_2c
    const-string v2, "LaneCarSRResource/CarAround/Sedan/Texture/CA_Main_19.png"

    goto/16 :goto_1

    :sswitch_2d
    const-string v2, "LaneCarSRResource/CarAround/Ambulance/Texture/CA_Main_2.png"

    goto/16 :goto_1

    :sswitch_2e
    const-string v2, "LaneCarSRResource/CarAround/Fire/Texture/CA_Main_2.png"

    goto/16 :goto_1

    :sswitch_2f
    const-string v2, "LaneCarSRResource/CarAround/Coach/Texture/CA_Main_2.png"

    goto/16 :goto_1

    :sswitch_30
    const-string v2, "LaneCarSRResource/CarAround/Clean/Texture/CA_Main_2.png"

    goto/16 :goto_1

    :sswitch_31
    const-string v2, "LaneCarSRResource/CarAround/Ambulance/Texture/CA_Main_9.png"

    goto/16 :goto_1

    :sswitch_32
    const-string v2, "LaneCarSRResource/CarAround/BUS/Texture/CA_Main_9.png"

    goto/16 :goto_1

    :sswitch_33
    const-string v2, "LaneCarSRResource/CarAround/Ambulance/Texture/CA_Main_13.png"

    goto/16 :goto_1

    :sswitch_34
    const-string v2, "LaneCarSRResource/CarAround/BUS/Texture/CA_Main_13.png"

    goto/16 :goto_1

    :sswitch_35
    const-string v2, "LaneCarSRResource/CarAround/Ambulance/Texture/CA_Main_17.png"

    goto/16 :goto_1

    :sswitch_36
    const-string v2, "LaneCarSRResource/CarAround/BUS/Texture/CA_Main_17.png"

    goto/16 :goto_1

    :pswitch_40
    :sswitch_37
    const-string v2, "LaneCarSRResource/CarAround/Fire/Texture/CA_Main.png"

    goto/16 :goto_1

    :pswitch_41
    :sswitch_38
    const-string v2, "LaneCarSRResource/CarAround/Clean/Texture/CA_Main.png"

    goto/16 :goto_1

    :sswitch_39
    const-string v2, "LaneCarSRResource/CarAround/Ambulance/Texture/CA_Main_19.png"

    goto/16 :goto_1

    :sswitch_3a
    const-string v2, "LaneCarSRResource/CarAround/BUS/Texture/CA_Main_19.png"

    goto/16 :goto_1

    :sswitch_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_DIY.png"

    goto/16 :goto_0

    :sswitch_3c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_Daytime.png"

    goto/16 :goto_0

    :sswitch_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_Fog.png"

    goto/16 :goto_0

    :sswitch_3e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_Backup.png"

    goto/16 :goto_0

    :sswitch_3f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_Clearance.png"

    goto/16 :goto_0

    :sswitch_40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_Emergency.png"

    goto/16 :goto_0

    :sswitch_41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_RDirection.png"

    goto/16 :goto_0

    :sswitch_42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_LDirection.png"

    goto :goto_0

    :sswitch_43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/Rear_Ring_noa_day.png"

    goto :goto_0

    :sswitch_44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_Stop.png"

    goto :goto_0

    :sswitch_45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_High.png"

    goto :goto_0

    :sswitch_46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_Lower.png"

    goto :goto_0

    :sswitch_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CarSelf_Main.png"

    goto :goto_0

    :sswitch_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Texture/CS_Shadow.png"

    goto :goto_0

    :sswitch_49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CarSelf.dat"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, "LaneCarSRResource/CarAround/BUS/Texture/CA_Main_2.png"

    goto :goto_1

    :cond_1
    :pswitch_42
    :sswitch_4a
    const-string v2, "LaneCarSRResource/CarAround/Coach/Texture/CA_Main.png"

    :goto_1
    :pswitch_43
    new-instance p1, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {p1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_49
        0x3ea -> :sswitch_48
        0x3eb -> :sswitch_47
        0x3ec -> :sswitch_46
        0x3ed -> :sswitch_45
        0x3ee -> :sswitch_44
        0x3ef -> :sswitch_43
        0x3f0 -> :sswitch_42
        0x3f1 -> :sswitch_41
        0x3f2 -> :sswitch_40
        0x3f3 -> :sswitch_3f
        0x3f4 -> :sswitch_3e
        0x3f5 -> :sswitch_3d
        0x3f6 -> :sswitch_3c
        0x3f7 -> :sswitch_3b
        0x836 -> :sswitch_3a
        0x839 -> :sswitch_39
        0x83c -> :sswitch_38
        0x83f -> :sswitch_4a
        0x842 -> :sswitch_37
        0x89a -> :sswitch_36
        0x89d -> :sswitch_35
        0x8a0 -> :sswitch_38
        0x8a3 -> :sswitch_4a
        0x8a6 -> :sswitch_37
        0x8fe -> :sswitch_34
        0x901 -> :sswitch_33
        0x904 -> :sswitch_38
        0x907 -> :sswitch_4a
        0x90a -> :sswitch_37
        0x962 -> :sswitch_32
        0x965 -> :sswitch_31
        0x968 -> :sswitch_38
        0x96e -> :sswitch_37
        0x972 -> :sswitch_30
        0x975 -> :sswitch_2f
        0x978 -> :sswitch_2e
        0x9d3 -> :sswitch_2d
        0xc85 -> :sswitch_2c
        0xce9 -> :sswitch_2b
        0xd4d -> :sswitch_2a
        0xdb1 -> :sswitch_29
        0xdbb -> :sswitch_28
        0x13ee -> :sswitch_27
        0x13f5 -> :sswitch_26
        0x13f8 -> :sswitch_25
        0x13fa -> :sswitch_24
        0x1452 -> :sswitch_23
        0x1459 -> :sswitch_22
        0x145c -> :sswitch_21
        0x145e -> :sswitch_20
        0x14b6 -> :sswitch_1f
        0x14bd -> :sswitch_1e
        0x14c0 -> :sswitch_1d
        0x14c2 -> :sswitch_1c
        0x14c7 -> :sswitch_1b
        0x151a -> :sswitch_1a
        0x1521 -> :sswitch_19
        0x1524 -> :sswitch_18
        0x1526 -> :sswitch_17
        0x152e -> :sswitch_16
        0x1530 -> :sswitch_15
        0x1538 -> :sswitch_14
        0x17d6 -> :sswitch_13
        0x17d9 -> :sswitch_12
        0x17dc -> :sswitch_11
        0x183a -> :sswitch_13
        0x183d -> :sswitch_10
        0x1840 -> :sswitch_11
        0x189e -> :sswitch_13
        0x18a1 -> :sswitch_f
        0x18a4 -> :sswitch_11
        0x1902 -> :sswitch_13
        0x1905 -> :sswitch_e
        0x1908 -> :sswitch_11
        0x190c -> :sswitch_d
        0x190f -> :sswitch_c
        0x1912 -> :sswitch_b
        0x1f47 -> :sswitch_a
        0x1f48 -> :sswitch_9
        0x1f49 -> :sswitch_8
        0x1f53 -> :sswitch_7
        0x1fac -> :sswitch_9
        0x2010 -> :sswitch_9
        0x2074 -> :sswitch_9
        0x20d8 -> :sswitch_9
        0x2329 -> :sswitch_6
        0x232a -> :sswitch_5
        0x232b -> :sswitch_4
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_2
        0x2af9 -> :sswitch_1
        0x2afa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_41
        :pswitch_36
        :pswitch_35
        :pswitch_42
        :pswitch_34
        :pswitch_33
        :pswitch_40
        :pswitch_32
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbb9
        :pswitch_31
        :pswitch_43
        :pswitch_30
        :pswitch_2f
        :pswitch_43
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc1d
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfa1
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1389
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x138e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1771
        :pswitch_14
        :pswitch_3f
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_3e
        :pswitch_e
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1b59
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(I)[B
    .locals 2

    iget-object v0, p0, Lf/k/l/l/f;->a:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/k/l/l/f;->a:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Lcom/autonavi/gbl/lane/model/LaneResourceResponse;
    .locals 2

    iget-object v0, p0, Lf/k/l/l/f;->b:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/k/l/l/f;->b:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/gbl/lane/model/LaneResourceResponse;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(I[B)V
    .locals 3

    iget-object v0, p0, Lf/k/l/l/f;->a:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/k/l/l/f;->a:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f(Ljava/lang/String;Lcom/autonavi/gbl/lane/model/LaneResourceResponse;)V
    .locals 3

    iget-object v0, p0, Lf/k/l/l/f;->b:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/k/l/l/f;->b:Landroid/util/LruCache;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
