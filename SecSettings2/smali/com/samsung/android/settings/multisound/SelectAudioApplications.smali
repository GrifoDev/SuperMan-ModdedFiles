.class public Lcom/samsung/android/settings/multisound/SelectAudioApplications;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SelectAudioApplications.java"


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRootPreference:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisound/SelectAudioApplications;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x20

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAppList:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v4, Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/notification/RadioPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications$1;-><init>(Lcom/samsung/android/settings/multisound/SelectAudioApplications;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->updateRadioState()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public updateRadioState()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multisound_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/SelectAudioApplications;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method
