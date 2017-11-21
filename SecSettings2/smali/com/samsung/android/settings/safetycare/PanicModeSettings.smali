.class public Lcom/samsung/android/settings/safetycare/PanicModeSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PanicModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;,
        Lcom/samsung/android/settings/safetycare/PanicModeSettings$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mList:Landroid/widget/ListView;

.field private mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

.field private mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

.field private mTempView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/safetycare/PanicModeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->updateSendSOSMessageSummary()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/safetycare/PanicModeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;-><init>(Lcom/samsung/android/settings/safetycare/PanicModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private updatePreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "key_safety_assistance_swa"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "key_safety_assistance_swa"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0
.end method

.method private updateSendSOSMessageSummary()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "send_emergency_message"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    const v1, 0x7f0b19dc

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const v1, 0x7f0b19dd

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x11f8

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mTempView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401b2

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->rebuildLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "PanicModeSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "PanicModeSettings"

    const-string/jumbo v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0401b2

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->rebuildLayout(Landroid/view/View;)V

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    :cond_0
    return-object v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "PanicModeSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->updatePreferenceHierarchy()Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwa:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->updateSendSOSMessageSummary()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "send_emergency_message"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mSendSOSMessageSwaObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public rebuildLayout(Landroid/view/View;)V
    .locals 5

    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->mTempView:Landroid/view/View;

    const v4, 0x7f1104ee

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f1104ef

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f1104ed

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    const v4, 0x7f0b0484

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v4, 0x7f02038e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void

    :cond_1
    const v4, 0x7f0b0483

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
