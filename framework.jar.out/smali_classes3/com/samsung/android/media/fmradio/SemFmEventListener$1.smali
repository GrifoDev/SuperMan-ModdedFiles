.class Lcom/samsung/android/media/fmradio/SemFmEventListener$1;
.super Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;
.source "SemFmEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/fmradio/SemFmEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/fmradio/SemFmEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/media/fmradio/SemFmEventListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    invoke-direct {p0}, Lcom/samsung/android/media/fmradio/internal/IFMEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlternateFrequencyReceived(J)V
    .locals 5
    .param p1, "freq"    # J

    .prologue
    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 275
    return-void
.end method

.method public onAlternateFrequencyStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    return-void
.end method

.method public onChannelFound(J)V
    .locals 5
    .param p1, "freq"    # J

    .prologue
    const/4 v3, 0x0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 196
    return-void
.end method

.method public onHeadsetConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 228
    return-void
.end method

.method public onHeadsetDisconnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 233
    return-void
.end method

.method public onProgrammeIdentificationExtendedCountryCodesReceived(II)V
    .locals 5
    .param p1, "pi"    # I
    .param p2, "ecc"    # I

    .prologue
    const/4 v4, 0x0

    .line 252
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    .line 253
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 252
    const/16 v2, 0x12

    invoke-static {v0, v2, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 251
    return-void
.end method

.method public onRadioDataSystemDisabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    return-void
.end method

.method public onRadioDataSystemEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 258
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    return-void
.end method

.method public onRadioDataSystemReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "freq"    # J
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "radioText"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    .line 241
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 240
    const/16 v2, 0xa

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 239
    return-void
.end method

.method public onRadioDisabled(I)V
    .locals 4
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 220
    return-void
.end method

.method public onRadioEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 216
    return-void
.end method

.method public onRadioTextPlusReceived(IIIIII)V
    .locals 5
    .param p1, "contentType1"    # I
    .param p2, "startPos1"    # I
    .param p3, "additionalLen1"    # I
    .param p4, "contentType2"    # I
    .param p5, "startPos2"    # I
    .param p6, "additionalLen2"    # I

    .prologue
    const/4 v4, 0x0

    .line 246
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    .line 247
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 246
    const/16 v2, 0x10

    invoke-static {v0, v2, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 245
    return-void
.end method

.method public onRecordingFinished()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 285
    return-void
.end method

.method public onScanFinished([J)V
    .locals 3
    .param p1, "freqArry"    # [J

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method

.method public onScanStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 201
    return-void
.end method

.method public onScanStopped([J)V
    .locals 3
    .param p1, "freqArry"    # [J

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void
.end method

.method public onTuned(J)V
    .locals 5
    .param p1, "freq"    # J

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v0, v2, v3, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    return-void
.end method

.method public onVolumeLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/samsung/android/media/fmradio/SemFmEventListener$1;->this$0:Lcom/samsung/android/media/fmradio/SemFmEventListener;

    iget-object v0, v0, Lcom/samsung/android/media/fmradio/SemFmEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    return-void
.end method
