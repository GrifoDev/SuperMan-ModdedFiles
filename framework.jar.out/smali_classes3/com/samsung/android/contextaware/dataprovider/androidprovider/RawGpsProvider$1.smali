.class Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;
.super Ljava/lang/Object;
.source "RawGpsProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 11

    const/4 v8, 0x3

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const-string/jumbo v5, "SystemTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const-string/jumbo v5, "TimeStamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v5, v2, v10

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    array-length v4, v2

    if-le v4, v8, :cond_3

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v5, v2, v8

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap1(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const-string/jumbo v5, "Valid"

    invoke-virtual {v4, v5, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->-wrap0(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const-string/jumbo v5, "SVCount"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->notifyObserver()V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Location service is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Location service is enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "getContextType() is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "out of service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "temporarily unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
