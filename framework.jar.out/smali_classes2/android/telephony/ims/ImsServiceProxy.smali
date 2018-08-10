.class public Landroid/telephony/ims/ImsServiceProxy;
.super Landroid/telephony/ims/ImsServiceProxyCompat;
.source "ImsServiceProxy.java"

# interfaces
.implements Landroid/telephony/ims/feature/IRcsFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsServiceProxy$1;,
        Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;
    }
.end annotation


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field private mFeatureStatusCached:Ljava/lang/Integer;

.field private mIsAvailable:Z

.field private final mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureListener;

.field private final mLock:Ljava/lang/Object;

.field private mStatusCallback:Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;

.field private final mSupportedFeature:I


# direct methods
.method static synthetic -get0(Landroid/telephony/ims/ImsServiceProxy;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mIsAvailable:Z

    return v0
.end method

.method static synthetic -get1(Landroid/telephony/ims/ImsServiceProxy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/telephony/ims/ImsServiceProxy;)Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mStatusCallback:Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telephony/ims/ImsServiceProxy;)I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    return v0
.end method

.method static synthetic -set0(Landroid/telephony/ims/ImsServiceProxy;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic -set1(Landroid/telephony/ims/ImsServiceProxy;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mIsAvailable:Z

    return p1
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/ImsServiceProxyCompat;-><init>(ILandroid/os/IBinder;)V

    const-string/jumbo v0, "ImsServiceProxy"

    iput-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mIsAvailable:Z

    iput-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/ImsServiceProxy$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsServiceProxy$1;-><init>(Landroid/telephony/ims/ImsServiceProxy;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureListener;

    iput p2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsServiceProxyCompat;-><init>(ILandroid/os/IBinder;)V

    const-string/jumbo v0, "ImsServiceProxy"

    iput-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mIsAvailable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/ImsServiceProxy$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsServiceProxy$1;-><init>(Landroid/telephony/ims/ImsServiceProxy;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureListener;

    iput p3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    return-void
.end method

.method private getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;
    .locals 1

    invoke-static {p1}, Lcom/android/ims/internal/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    return-object v0
.end method

.method private retrieveFeatureStatus()Ljava/lang/Integer;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v1, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->getFeatureStatus(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    :cond_0
    return-object v4
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3, p1}, Lcom/android/ims/internal/IImsServiceController;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected checkServiceIsReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->isBinderReady()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "ImsServiceProxy is not ready to accept commands."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v6, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/ims/internal/IImsServiceController;->createCallProfile(IIIII)Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v6, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/ims/internal/IImsServiceController;->createCallSession(IIILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public endSession(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3, p1}, Lcom/android/ims/internal/IImsServiceController;->endSession(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->getConfigInterface(II)Lcom/android/ims/internal/IImsConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->getEcbmInterface(II)Lcom/android/ims/internal/IImsEcbm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFeatureStatus()I
    .locals 5

    iget-object v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFeatureStatus - returning cached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    invoke-direct {p0}, Landroid/telephony/ims/ImsServiceProxy;->retrieveFeatureStatus()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_1

    const/4 v2, 0x0

    monitor-exit v1

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    :try_start_1
    iput-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mFeatureStatusCached:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFeatureStatus - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public getListener()Lcom/android/ims/internal/IImsServiceFeatureListener;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mListenerBinder:Lcom/android/ims/internal/IImsServiceFeatureListener;

    return-object v0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->getMultiEndpointInterface(II)Lcom/android/ims/internal/IImsMultiEndpoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->getPendingCallSession(IIILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->getUtInterface(II)Lcom/android/ims/internal/IImsUt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isBinderAlive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBinderReady()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->getFeatureStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isConnected(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->isConnected(IIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isOpened()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->isOpened(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3, p1}, Lcom/android/ims/internal/IImsServiceController;->removeRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public setStatusCallback(Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsServiceProxy;->mStatusCallback:Landroid/telephony/ims/ImsServiceProxy$INotifyStatusChanged;

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->setUiTTYMode(IIILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/ims/internal/IImsServiceController;->startSession(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public turnOffIms()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->turnOffIms(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public turnOnIms()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Landroid/telephony/ims/ImsServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsServiceProxy;->checkServiceIsReady()V

    iget-object v0, p0, Landroid/telephony/ims/ImsServiceProxy;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsServiceProxy;->getServiceInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;

    move-result-object v0

    iget v2, p0, Landroid/telephony/ims/ImsServiceProxy;->mSlotId:I

    iget v3, p0, Landroid/telephony/ims/ImsServiceProxy;->mSupportedFeature:I

    invoke-interface {v0, v2, v3}, Lcom/android/ims/internal/IImsServiceController;->turnOnIms(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
