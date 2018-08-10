.class Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;
.super Ljava/lang/Object;
.source "AddAudioApplications.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/AddAudioApplications$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iput-object p2, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v3, v3, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get1(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multisound_app"

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v3, v3, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get1(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v4, v4, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-virtual {v4}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b046a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v3, v3, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get0(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v4, v4, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v4}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get2(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->addPackage(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v3, v3, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get1(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multisound_devicetype"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v3, v3, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get2(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v3, v3, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get0(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/media/AudioManager;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->setAppDevice(II)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v3, v3, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-virtual {v3}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->finish()V

    return v8

    :cond_1
    if-ne v0, v8, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->this$1:Lcom/samsung/android/settings/multisound/AddAudioApplications$1;

    iget-object v3, v3, Lcom/samsung/android/settings/multisound/AddAudioApplications$1;->this$0:Lcom/samsung/android/settings/multisound/AddAudioApplications;

    invoke-static {v3}, Lcom/samsung/android/settings/multisound/AddAudioApplications;->-get0(Lcom/samsung/android/settings/multisound/AddAudioApplications;)Landroid/media/AudioManager;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->setAppDevice(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "AddAudioApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/AddAudioApplications$1$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method
