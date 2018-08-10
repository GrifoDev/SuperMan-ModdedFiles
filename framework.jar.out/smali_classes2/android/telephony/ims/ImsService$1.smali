.class Landroid/telephony/ims/ImsService$1;
.super Lcom/android/ims/internal/IImsServiceController$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/ImsService;


# direct methods
.method constructor <init>(Landroid/telephony/ims/ImsService;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsServiceController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "addRegistrationListener"

    invoke-static {v1, v2}, Landroid/telephony/ims/ImsService;->-wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/telephony/ims/feature/MMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createCallProfile(IIIII)Lcom/android/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createCallProfile"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4, p5}, Landroid/telephony/ims/feature/MMTelFeature;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createCallSession(IIILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createCallSession"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4, p5}, Landroid/telephony/ims/feature/MMTelFeature;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "createImsFeature"

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->-wrap2(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public endSession(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v3, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v4, "endSession"

    invoke-virtual {v1, v3, v4}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/telephony/ims/feature/MMTelFeature;->endSession(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getConfigInterface(II)Lcom/android/ims/internal/IImsConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getConfigInterface"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getEcbmInterface(II)Lcom/android/ims/internal/IImsEcbm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getEcbmInterface"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getFeatureStatus(II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v4, "getFeatureStatus"

    invoke-static {v3, v4}, Landroid/telephony/ims/ImsService;->-wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v3}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v3}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v3, v1, p2}, Landroid/telephony/ims/ImsService;->getImsFeatureFromType(Landroid/util/SparseArray;I)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/feature/ImsFeature;->getFeatureState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    :cond_0
    monitor-exit v4

    return v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getMultiEndpointInterface(II)Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getMultiEndpointInterface"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getPendingCallSession(IIILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getPendingCallSession"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUtInterface(II)Lcom/android/ims/internal/IImsUt;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "getUtInterface"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isConnected(IIII)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "isConnected"

    invoke-static {v1, v2}, Landroid/telephony/ims/ImsService;->-wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->isConnected(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isOpened(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "isOpened"

    invoke-static {v1, v2}, Landroid/telephony/ims/ImsService;->-wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->isOpened()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "removeImsFeature"

    invoke-virtual {v0, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->-wrap3(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "removeRegistrationListener"

    invoke-static {v1, v2}, Landroid/telephony/ims/ImsService;->-wrap1(Landroid/telephony/ims/ImsService;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/telephony/ims/feature/MMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUiTTYMode(IIILandroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "setUiTTYMode"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startSession(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "startSession"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/feature/MMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public turnOffIms(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "turnOffIms"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->turnOffIms()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public turnOnIms(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    const-string/jumbo v2, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v3, "turnOnIms"

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-get0(Landroid/telephony/ims/ImsService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1, p1, p2}, Landroid/telephony/ims/ImsService;->-wrap0(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/feature/MMTelFeature;->turnOnIms()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
