.class Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;
.super Ljava/lang/Object;
.source "SemProAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/proaudio/SemProAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerContainer"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mListener:Lcom/samsung/android/proaudio/aidl/IProAudioListener;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Lcom/samsung/android/proaudio/aidl/IProAudioListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;->mBinder:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/samsung/android/proaudio/SemProAudio$ListenerContainer;->mListener:Lcom/samsung/android/proaudio/aidl/IProAudioListener;

    return-void
.end method
