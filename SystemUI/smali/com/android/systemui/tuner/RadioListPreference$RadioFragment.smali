.class public Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;
.super Lcom/android/systemui/tuner/TunerPreferenceFragment;
.source "RadioListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/RadioListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioFragment"
.end annotation


# instance fields
.field private mListPref:Lcom/android/systemui/tuner/RadioListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;-><init>()V

    return-void
.end method

.method private update()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->mListPref:Lcom/android/systemui/tuner/RadioListPreference;

    invoke-virtual {v7}, Lcom/android/systemui/tuner/RadioListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->mListPref:Lcom/android/systemui/tuner/RadioListPreference;

    invoke-virtual {v7}, Lcom/android/systemui/tuner/RadioListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->mListPref:Lcom/android/systemui/tuner/RadioListPreference;

    invoke-virtual {v7}, Lcom/android/systemui/tuner/RadioListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_0

    aget-object v3, v2, v4

    new-instance v5, Lcom/android/systemui/tuner/SelectablePreference;

    invoke-direct {v5, v0}, Lcom/android/systemui/tuner/SelectablePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v5, v3}, Lcom/android/systemui/tuner/SelectablePreference;->setTitle(Ljava/lang/CharSequence;)V

    aget-object v7, v6, v4

    invoke-static {v1, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/tuner/SelectablePreference;->setChecked(Z)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/systemui/tuner/SelectablePreference;->setKey(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v2, p0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->mListPref:Lcom/android/systemui/tuner/RadioListPreference;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->update()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->mListPref:Lcom/android/systemui/tuner/RadioListPreference;

    invoke-static {v0}, Lcom/android/systemui/tuner/RadioListPreference;->-get0(Lcom/android/systemui/tuner/RadioListPreference;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    const/4 v0, 0x1

    return v0
.end method

.method public setPreference(Lcom/android/systemui/tuner/RadioListPreference;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->mListPref:Lcom/android/systemui/tuner/RadioListPreference;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->update()V

    :cond_0
    return-void
.end method
