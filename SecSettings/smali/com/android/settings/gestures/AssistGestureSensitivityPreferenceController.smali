.class public Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "AssistGestureSensitivityPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mPreference:Lcom/android/settings/SeekBarPreference;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private final mSettingObserver:Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->updatePreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    new-instance v0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;-><init>(Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mSettingObserver:Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    :cond_0
    return-void
.end method

.method private updatePreference()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mPreference:Lcom/android/settings/SeekBarPreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mPreference:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assist_gesture_sensitivity"

    iget-object v3, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mPreference:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v3}, Lcom/android/settings/SeekBarPreference;->getProgress()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mPreference:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mPreference:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mPreference:Lcom/android/settings/SeekBarPreference;

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "gesture_assist_sensitivity"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assist_gesture_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/settings/gestures/AssistGestureFeatureProvider;->isSupported(Landroid/content/Context;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mSettingObserver:Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assist_gesture_sensitivity"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mSettingObserver:Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->updatePreference()V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/gestures/AssistGestureSensitivityPreferenceController;->updatePreference()V

    return-void
.end method
