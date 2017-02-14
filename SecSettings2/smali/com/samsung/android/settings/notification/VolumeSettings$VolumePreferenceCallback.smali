.class final Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "VolumeSettings.java"

# interfaces
.implements Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;-><init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string/jumbo v0, "VolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStreamValueChanged : AudioManager.STREAM_RING : progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "VolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStreamValueChanged : AudioManager.STREAM_NOTIFICATION : progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get1(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$H;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/notification/VolumeSettings$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$H;

    move-result-object v0

    invoke-virtual {v0, v6, p2, v3}, Lcom/samsung/android/settings/notification/VolumeSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string/jumbo v0, "VolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStreamValueChanged : AudioManager.STREAM_MUSIC : progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$H;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/notification/VolumeSettings$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$H;

    move-result-object v0

    invoke-virtual {v0, v4, p2, v3}, Lcom/samsung/android/settings/notification/VolumeSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "VolumeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStreamValueChanged : AudioManager.STREAM_SYSTEM : progress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$H;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/notification/VolumeSettings$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/notification/VolumeSettings$H;

    move-result-object v0

    invoke-virtual {v0, v5, p2, v3}, Lcom/samsung/android/settings/notification/VolumeSettings$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public stopSample()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method
