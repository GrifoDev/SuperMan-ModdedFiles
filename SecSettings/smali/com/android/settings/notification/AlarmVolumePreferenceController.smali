.class public Lcom/android/settings/notification/AlarmVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "AlarmVolumePreferenceController.java"


# instance fields
.field private mHelper:Lcom/android/settings/notification/AudioHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/AlarmVolumePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object p4, p0, Lcom/android/settings/notification/AlarmVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getMuteIcon()I
    .locals 1

    const v0, 0x1080388

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "alarm_volume"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/AlarmVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
