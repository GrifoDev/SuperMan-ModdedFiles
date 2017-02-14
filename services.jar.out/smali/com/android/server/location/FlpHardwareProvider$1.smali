.class Lcom/android/server/location/FlpHardwareProvider$1;
.super Landroid/hardware/location/IFusedLocationHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public flushBatchedLocations()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/location/FlpHardwareProvider$1;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap8(Lcom/android/server/location/FlpHardwareProvider;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v1, "Tried to call flushBatchedLocations on an unsupported implementation"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSupportedBatchSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap5(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap4(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public injectDeviceContext(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap9(Lcom/android/server/location/FlpHardwareProvider;I)V

    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap10(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V

    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FlpHardwareProvider"

    const-string/jumbo v2, "Replacing an existing IFusedLocationHardware sink"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap6(Lcom/android/server/location/FlpHardwareProvider;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestBatchOfLocations(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap15(Lcom/android/server/location/FlpHardwareProvider;I)V

    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v2, 0x65

    invoke-static {v1, v2, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap21(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v1

    sget v2, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap0(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FlpHardwareProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Convert HW FLP request : startBatching id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get3(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->-get2(Lcom/android/server/location/FlpHardwareProvider;)Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/location/ISLocationManager;->startCoreBatching(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get4(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap17(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    goto :goto_0
.end method

.method public stopBatching(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/location/FlpHardwareProvider;->-wrap21(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    const-string/jumbo v1, "FlpHardwareProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Convert HW FLP request : stopBatching id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap0(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get3(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->stopCoreBatching(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap18(Lcom/android/server/location/FlpHardwareProvider;I)V

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get4(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get4(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->-get4(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsDeviceContextInjection()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap1(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap2(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get1(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-get0(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/location/FlpHardwareProvider;->-set0(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v2, 0x67

    invoke-static {v1, v2, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap21(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap0(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "FlpHardwareProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatchingOptions id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v1

    sget v2, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get4(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FlpHardwareProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Convert HW FLP request : updateBatchingOptions id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get3(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->-get2(Lcom/android/server/location/FlpHardwareProvider;)Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/location/ISLocationManager;->updateCoreBatchingOptions(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get4(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get3(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/location/ISLocationManager;->stopCoreBatching(I)V

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get4(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->-get4(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap17(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FlpHardwareProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/location/FusedBatchOptions;->getFlags()I

    move-result v1

    sget v2, Landroid/location/FusedBatchOptions$BatchFlags;->CALLBACK_ON_LOCATION_FIX:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap18(Lcom/android/server/location/FlpHardwareProvider;I)V

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get3(Lcom/android/server/location/FlpHardwareProvider;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v2}, Lcom/android/server/location/FlpHardwareProvider;->-get2(Lcom/android/server/location/FlpHardwareProvider;)Lcom/android/server/location/FlpHardwareProvider$FlpSLocationListener;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/samsung/android/location/ISLocationManager;->startCoreBatching(ILandroid/location/FusedBatchOptions;Lcom/samsung/android/location/ISLocationListener;)V

    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1}, Lcom/android/server/location/FlpHardwareProvider;->-get4(Lcom/android/server/location/FlpHardwareProvider;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap19(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap19(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
