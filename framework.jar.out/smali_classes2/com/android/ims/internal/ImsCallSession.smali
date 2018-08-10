.class public Lcom/android/ims/internal/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;,
        Lcom/android/ims/internal/ImsCallSession$Listener;,
        Lcom/android/ims/internal/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private mClosed:Z

.field private mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

.field private final miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method static synthetic -get0(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;)V

    invoke-interface {p1, v1}, Lcom/android/ims/internal/IImsCallSession;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {p0, p2}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    return-void
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->close()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public getSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public getState()I
    .locals 3

    const/4 v2, -0x1

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isInCall()Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public isMultiparty()Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    return v2
.end method

.method public merge()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reject(I)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    return-void
.end method

.method public setMute(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public terminate(I)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[ImsCallSession objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/ims/internal/ImsCallSession$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
