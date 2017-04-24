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

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap7(Lcom/android/server/location/FlpHardwareProvider;)V

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

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap4(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap3(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public injectDeviceContext(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap8(Lcom/android/server/location/FlpHardwareProvider;I)V

    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap9(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V

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

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap5(Lcom/android/server/location/FlpHardwareProvider;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requestBatchOfLocations(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap14(Lcom/android/server/location/FlpHardwareProvider;I)V

    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v1, 0x65

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap19(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap16(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    return-void
.end method

.method public stopBatching(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap19(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->-wrap17(Lcom/android/server/location/FlpHardwareProvider;I)V

    return-void
.end method

.method public supportsDeviceContextInjection()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap0(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->-wrap1(Lcom/android/server/location/FlpHardwareProvider;)Z

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
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/16 v1, 0x67

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap19(Lcom/android/server/location/FlpHardwareProvider;IILandroid/location/FusedBatchOptions;)V

    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->-wrap18(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    return-void
.end method
