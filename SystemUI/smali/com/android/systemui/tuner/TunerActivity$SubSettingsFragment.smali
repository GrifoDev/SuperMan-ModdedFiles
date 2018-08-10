.class public Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "TunerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubSettingsFragment"
.end annotation


# instance fields
.field private mParentScreen:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
