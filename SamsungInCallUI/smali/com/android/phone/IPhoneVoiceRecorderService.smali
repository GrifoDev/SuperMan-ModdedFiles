.class public interface abstract Lcom/android/phone/IPhoneVoiceRecorderService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/IPhoneVoiceRecorderService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getRecordTime()J
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isVoiceRecording()Z
.end method

.method public abstract pauseRecord()V
.end method

.method public abstract registerCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V
.end method

.method public abstract resumeRecord()V
.end method

.method public abstract setCallerName(Ljava/lang/String;)V
.end method

.method public abstract setCallerNumber(Ljava/lang/String;)V
.end method

.method public abstract startRecord()V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V
.end method
