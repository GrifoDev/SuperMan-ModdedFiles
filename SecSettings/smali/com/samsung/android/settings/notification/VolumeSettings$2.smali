.class Lcom/samsung/android/settings/notification/VolumeSettings$2;
.super Ljava/lang/Object;
.source "VolumeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-wrap1(Lcom/samsung/android/settings/notification/VolumeSettings;Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3, v0}, Lcom/samsung/android/settings/notification/VolumeSettings;->-wrap0(Lcom/samsung/android/settings/notification/VolumeSettings;I)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
