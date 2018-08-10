.class public Lcom/samsung/android/proaudio/SemProAudio;
.super Lcom/samsung/android/proaudio/aidl/IProAudio$Stub;
.source "SemProAudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListenerContainer:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/proaudio/aidl/IProAudio$Stub;-><init>()V

    const-string/jumbo v0, "SemProAudio"

    iput-object v0, p0, Lcom/samsung/android/proaudio/SemProAudio;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    invoke-direct {p0, p1}, Lcom/samsung/android/proaudio/SemProAudio;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/proaudio/SemProAudio;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    :try_start_0
    const-string/jumbo v3, "SemProAudio_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method private native nativeStart(I)I
.end method


# virtual methods
.method public addListener(Lcom/samsung/android/proaudio/aidl/IProAudioListener;)V
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v1, "SemProAudio"

    const-string/jumbo v2, "[SemproAudio] addListener - listener == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    :cond_1
    new-instance v0, Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;

    invoke-interface {p1}, Lcom/samsung/android/proaudio/aidl/IProAudioListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;-><init>(Landroid/os/IBinder;Lcom/samsung/android/proaudio/aidl/IProAudioListener;)V

    iget-object v1, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "SemProAudio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[SemproAudio] add Listener size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public attachApaService()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/proaudio/SemProAudio;->nativeStart(I)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "SemProAudio"

    const-string/jumbo v3, "[SemproAudio] nativeStart success ~ !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "SemProAudio"

    const-string/jumbo v3, "[SemproAudio] nativeStart fail ~ !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkListener()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v3, "SemProAudio"

    const-string/jumbo v4, "[SemProAudio] checkListener"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;

    iget-object v2, v3, Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;->mListener:Lcom/samsung/android/proaudio/aidl/IProAudioListener;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/samsung/android/proaudio/aidl/IProAudioListener;->onCheckCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public removeListener(Lcom/samsung/android/proaudio/aidl/IProAudioListener;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "SemProAudio"

    const-string/jumbo v4, "[SemproAudio] removeListener - listener == null || mListenerContainer == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;->mBinder:Landroid/os/IBinder;

    invoke-interface {p1}, Lcom/samsung/android/proaudio/aidl/IProAudioListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/proaudio/SemProAudio;->mListenerContainer:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;

    const-string/jumbo v3, "SemProAudio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[SemproAudio] deleted Listener :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public showMSG()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "SemProAudio"

    const-string/jumbo v1, "[SemproAudio] showMSG()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
