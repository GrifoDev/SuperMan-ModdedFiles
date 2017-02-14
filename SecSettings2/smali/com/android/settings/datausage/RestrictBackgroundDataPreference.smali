.class public Lcom/android/settings/datausage/RestrictBackgroundDataPreference;
.super Lcom/android/settings/CustomDialogPreference;
.source "RestrictBackgroundDataPreference.java"


# instance fields
.field private mChecked:Z

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;


# direct methods
.method private setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mChecked:Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/CustomDialogPreference;->onAttached()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v0, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->setChecked(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x1020040

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->setRestrictBackground(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f0b16b8

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b16ba

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v0, 0x104000a

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void

    :cond_0
    const v0, 0x7f0b16b9

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->setRestrictBackground(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/CustomDialogPreference;->performClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/RestrictBackgroundDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;->refreshState()V

    return-void
.end method
