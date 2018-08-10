.class public Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;
.super Lcom/android/settings/applications/defaultapps/DefaultAppInfo;
.source "DefaultVoiceInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/DefaultVoiceInputPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceInputDefaultAppInfo"
.end annotation


# instance fields
.field public mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/PackageManagerWrapper;ILcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;Z)V
    .locals 6

    iget-object v3, p3, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->componentName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingIntent()Landroid/content/Intent;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->settings:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    iget-object v1, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->settings:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    instance-of v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper$InteractionInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->appLabel:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    iget-object v0, v0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->label:Ljava/lang/CharSequence;

    return-object v0
.end method
