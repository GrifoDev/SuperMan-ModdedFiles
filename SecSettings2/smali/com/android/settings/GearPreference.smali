.class public Lcom/android/settings/GearPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "GearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/GearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/settings/GearPreference$OnGearClickListener;


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f110585

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f110585

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/GearPreference;->mOnGearClickListener:Lcom/android/settings/GearPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/GearPreference;->mOnGearClickListener:Lcom/android/settings/GearPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/GearPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/GearPreference;)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/GearPreference$OnGearClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/GearPreference;->mOnGearClickListener:Lcom/android/settings/GearPreference$OnGearClickListener;

    invoke-virtual {p0}, Lcom/android/settings/GearPreference;->notifyChanged()V

    return-void
.end method
