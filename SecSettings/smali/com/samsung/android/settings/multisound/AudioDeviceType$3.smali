.class Lcom/samsung/android/settings/multisound/AudioDeviceType$3;
.super Ljava/lang/Object;
.source "AudioDeviceType.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$3;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$3;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-get0(Lcom/samsung/android/settings/multisound/AudioDeviceType;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multisound_devicetype"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$3;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-wrap0(Lcom/samsung/android/settings/multisound/AudioDeviceType;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$3;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-get0(Lcom/samsung/android/settings/multisound/AudioDeviceType;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$3;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b046b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$3;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-wrap2(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V

    return v3
.end method
