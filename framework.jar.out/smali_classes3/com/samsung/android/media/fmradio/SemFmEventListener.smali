.class public Lcom/samsung/android/media/fmradio/SemFmEventListener;
.super Ljava/lang/Object;
.source "SemFmEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/fmradio/SemFmEventListener$1;,
        Lcom/samsung/android/media/fmradio/SemFmEventListener$2;
    }
.end annotation


# static fields
.field private static final EVENT_AF_RECEIVED:I = 0xe

.field private static final EVENT_AF_STARTED:I = 0xd

.field private static final EVENT_CHANNEL_FOUND:I = 0x1

.field private static final EVENT_EAR_PHONE_CONNECT:I = 0x8

.field private static final EVENT_EAR_PHONE_DISCONNECT:I = 0x9

.field private static final EVENT_OFF:I = 0x6

.field private static final EVENT_ON:I = 0x5

.field private static final EVENT_PIECC_EVENT:I = 0x12

.field private static final EVENT_RDS_DISABLED:I = 0xc

.field private static final EVENT_RDS_ENABLED:I = 0xb

.field private static final EVENT_RDS_EVENT:I = 0xa

.field private static final EVENT_REC_FINISH:I = 0x11

.field private static final EVENT_RTPLUS_EVENT:I = 0x10

.field private static final EVENT_SCAN_FINISHED:I = 0x3

.field private static final EVENT_SCAN_STARTED:I = 0x2

.field private static final EVENT_SCAN_STOPPED:I = 0x4

.field private static final EVENT_TUNE:I = 0x7

.field private static final EVENT_VOLUME_LOCK:I = 0xf


# instance fields
.field callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;-><init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->callback:Lcom/samsung/android/media/fmradio/internal/IFMEventListener;

    .line 291
    new-instance v0, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/media/fmradio/SemFmEventListener$2;-><init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method


# virtual methods
.method public onAlternateFrequencyReceived(J)V
    .locals 0
    .param p1, "freq"    # J

    .prologue
    .line 172
    return-void
.end method

.method public onAlternateFrequencyStarted()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onChannelFound(J)V
    .locals 0
    .param p1, "frequency"    # J

    .prologue
    .line 42
    return-void
.end method

.method public onHeadsetConnected()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onHeadsetDisconnected()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onProgrammeIdentificationExtendedCountryCodesReceived(II)V
    .locals 0
    .param p1, "pi"    # I
    .param p2, "ecc"    # I

    .prologue
    .line 143
    return-void
.end method

.method public onRadioDataSystemDisabled()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public onRadioDataSystemEnabled()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "freq"    # J
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "radioText"    # Ljava/lang/String;

    .prologue
    .line 117
    return-void
.end method

.method public onRadioDisabled(I)V
    .locals 0
    .param p1, "reasonCode"    # I

    .prologue
    .line 83
    return-void
.end method

.method public onRadioEnabled()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onRadioTextPlusReceived(IIIIII)V
    .locals 0
    .param p1, "contentType1"    # I
    .param p2, "startPos1"    # I
    .param p3, "additionalLen1"    # I
    .param p4, "contentType2"    # I
    .param p5, "startPos2"    # I
    .param p6, "additionalLen2"    # I

    .prologue
    .line 133
    return-void
.end method

.method public onRecordingFinished()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onScanFinished([J)V
    .locals 0
    .param p1, "frequency"    # [J

    .prologue
    .line 67
    return-void
.end method

.method public onScanStarted()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onScanStopped([J)V
    .locals 0
    .param p1, "frequency"    # [J

    .prologue
    .line 58
    return-void
.end method

.method public onTuned(J)V
    .locals 0
    .param p1, "frequency"    # J

    .prologue
    .line 92
    return-void
.end method

.method public onVolumeLocked()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
