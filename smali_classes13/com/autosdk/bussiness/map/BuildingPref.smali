.class public Lcom/autosdk/bussiness/map/BuildingPref;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyAll()V
    .locals 3

    invoke-static {}, Lcom/autosdk/bussiness/map/MapController;->getInstance()Lcom/autosdk/bussiness/map/MapController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/autosdk/bussiness/map/BuildingPref;->getShow()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(IZ)V

    invoke-virtual {v0, v2, v1}, Lcom/autosdk/bussiness/map/MapController;->setBuildingNormal(IZ)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/autosdk/bussiness/map/MapController;->set3Dobj(IZ)V

    invoke-virtual {v0, v2, v1}, Lcom/autosdk/bussiness/map/MapController;->setBuildingNormal(IZ)V

    return-void
.end method

.method public static getShow()Z
    .locals 4

    invoke-static {}, Lf/h/c/n0/l2;->g()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "byd_building_show"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
