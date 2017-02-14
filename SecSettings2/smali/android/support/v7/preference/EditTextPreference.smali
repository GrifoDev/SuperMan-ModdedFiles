.class public Landroid/support/v7/preference/EditTextPreference;
.super Landroid/support/v7/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/EditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mText:Ljava/lang/String;


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/EditTextPreference;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/support/v7/preference/EditTextPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/EditTextPreference$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Landroid/support/v7/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/support/v7/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/preference/EditTextPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/support/v7/preference/EditTextPreference$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v7/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v7/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v1

    iput-object p1, p0, Landroid/support/v7/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/support/v7/preference/EditTextPreference;->shouldDisableDependents()Z

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/EditTextPreference;->notifyDependencyChange(Z)V

    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/EditTextPreference;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/preference/DialogPreference;->shouldDisableDependents()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
