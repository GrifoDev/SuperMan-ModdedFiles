.class Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;
.super Ljava/lang/Object;
.source "SelectAudioApplications.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/SelectAudioApplications;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

.field final synthetic val$info:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    iput-object p2, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->val$info:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get1(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multisound_app"

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->val$info:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get1(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multisound_devicetype"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get0(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->val$info:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setAppDevice(II)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-virtual {v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->updateRadioState()V

    return v4

    :cond_1
    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/SelectAudioApplications;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->-get0(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;->val$info:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->setAppDevice(II)V

    goto :goto_0
.end method
