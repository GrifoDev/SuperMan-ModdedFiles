.class Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;
.super Lcom/android/settings/applications/assist/AssistSettingObserver;
.source "DefaultVoiceInputPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSettingUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSettingChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->-get0(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->-get0(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;->refreshPreferences()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController$SettingObserver;->this$0:Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;->-wrap0(Lcom/android/settings/applications/assist/DefaultVoiceInputPreferenceController;)V

    goto :goto_0
.end method
