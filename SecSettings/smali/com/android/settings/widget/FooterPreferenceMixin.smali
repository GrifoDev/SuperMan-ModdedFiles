.class public Lcom/android/settings/widget/FooterPreferenceMixin;
.super Ljava/lang/Object;
.source "FooterPreferenceMixin.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/SetPreferenceScreen;


# instance fields
.field private mFooterPreference:Lcom/android/settings/widget/FooterPreference;

.field private final mFragment:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {p2, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    return-void
.end method

.method private getPrefContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createFooterPreference()Lcom/android/settings/widget/FooterPreference;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settings/widget/FooterPreference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settings/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    new-instance v1, Lcom/android/settings/widget/FooterPreference;

    invoke-direct {p0}, Lcom/android/settings/widget/FooterPreferenceMixin;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settings/widget/FooterPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settings/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settings/widget/FooterPreference;

    return-object v1
.end method

.method public hasFooter()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settings/widget/FooterPreference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settings/widget/FooterPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settings/widget/FooterPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method
