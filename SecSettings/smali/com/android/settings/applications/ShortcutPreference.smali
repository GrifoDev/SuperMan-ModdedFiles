.class public Lcom/android/settings/applications/ShortcutPreference;
.super Landroid/support/v7/preference/Preference;
.source "ShortcutPreference.java"


# instance fields
.field private final mPrefKey:Ljava/lang/String;

.field private final mTarget:Ljava/lang/Class;

.field private final mTitle:I


# virtual methods
.method public performClick()V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->performClick()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/android/settings/applications/ShortcutPreference;->mPrefKey:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ShortcutPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ShortcutPreference;->mTarget:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lcom/android/settings/applications/ShortcutPreference;->mTitle:I

    move-object v6, v3

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;I)V

    return-void
.end method
