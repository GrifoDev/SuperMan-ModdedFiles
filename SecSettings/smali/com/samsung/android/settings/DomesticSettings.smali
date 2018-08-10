.class public Lcom/samsung/android/settings/DomesticSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DomesticSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DomesticSettings$1;,
        Lcom/samsung/android/settings/DomesticSettings$2;,
        Lcom/samsung/android/settings/DomesticSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field mTwoPhonePreference:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/DomesticSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/DomesticSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DomesticSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/DomesticSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DomesticSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DomesticSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15005d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "giga_lte"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "two_phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v2, "giga_lte"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DomesticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mptcp_value"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f121b3e

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/support/v7/preference/PreferenceScreen;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const v2, 0x7f121b3d

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
