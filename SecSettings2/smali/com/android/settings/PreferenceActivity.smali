.class public Lcom/android/settings/PreferenceActivity;
.super Lcom/android/settings/SettingsActivity;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;


# direct methods
.method static synthetic -set0(Lcom/android/settings/PreferenceActivity;Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;)Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PreferenceActivity;->mFragment:Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
