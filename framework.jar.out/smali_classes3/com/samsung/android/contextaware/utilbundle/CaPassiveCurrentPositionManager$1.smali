.class Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 18

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->-get1(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->-get1(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v4

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v12

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->-get2(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)I

    move-result v16

    move-object/from16 v5, v17

    invoke-virtual/range {v3 .. v16}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->setPosition(I[IDDDDFFI)V

    const/high16 v2, 0x45960000    # 4800.0f

    cmpg-float v2, v15, v2

    if-gtz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->-get0(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->notifyPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;)V

    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Location service is disabled"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Location service is enabled"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
