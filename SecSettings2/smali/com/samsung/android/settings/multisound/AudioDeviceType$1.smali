.class Lcom/samsung/android/settings/multisound/AudioDeviceType$1;
.super Ljava/lang/Object;
.source "AudioDeviceType.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/AudioDeviceType;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-get0(Lcom/samsung/android/settings/multisound/AudioDeviceType;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multisound_devicetype"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->updateRadioState()V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->setMultiSound(I)Z

    move-result v0

    return v0
.end method
