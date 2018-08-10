.class public Lcom/android/settings/network/NetworkScorerPicker;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "NetworkScorerPicker.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# instance fields
.field private mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method private getActiveScorerPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v0}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setActiveScorer(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateCheckedState(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v5, v2, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v5, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method createNetworkScorerManagerWrapper(Landroid/content/Context;)Lcom/android/settings/network/NetworkScoreManagerWrapper;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v1, Lcom/android/settings/network/NetworkScoreManagerWrapper;

    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    invoke-direct {v1, v0}, Lcom/android/settings/network/NetworkScoreManagerWrapper;-><init>(Landroid/net/NetworkScoreManager;)V

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x35d

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkScorerPicker;->createNetworkScorerManagerWrapper(Landroid/content/Context;)Lcom/android/settings/network/NetworkScoreManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const v0, 0x7f1500a0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkScorerPicker;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->updateCandidates()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkScorerPicker;->setHasOptionsMenu(Z)V

    return-object v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/NetworkScorerPicker;->setActiveScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/network/NetworkScorerPicker;->updateCheckedState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCandidates()V
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v9, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v9}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getAllValidScorers()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    const v9, 0x7f121256

    invoke-virtual {v4, v9}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    :goto_0
    invoke-virtual {v8, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    new-instance v6, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScorerAppData;

    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {v6, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method
