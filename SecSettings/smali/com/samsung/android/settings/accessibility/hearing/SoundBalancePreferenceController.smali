.class public Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "SoundBalancePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;
    }
.end annotation


# instance fields
.field private mAudioBalancePref:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

.field private mBixbyMsgHandler:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mBixbyMsgHandler:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public executeBixbyAction(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;-><init>(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mBixbyMsgHandler:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mBixbyMsgHandler:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->isSeekbarInitFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mBixbyMsgHandler:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mBixbyMsgHandler:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "EarPhone"

    const-string/jumbo v2, "PluggedIN"

    const-string/jumbo v3, "No"

    invoke-virtual {p1, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Hearing"

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method public getBixbyStateId()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "LeftRrightSoundBalanceMoveRight"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "LeftRrightSoundBalanceMoveLeft"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "sound_balance"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mAudioBalancePref:Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->onResume()V

    return-void
.end method

.method public updateRawDataToIndex(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
