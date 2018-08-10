.class public Lcom/samsung/android/settings/SecGearPreference;
.super Landroid/support/v7/preference/SecRestrictedPreference;
.source "SecGearPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mGearIcon:Landroid/view/View;

.field private mIsSummaryColorPrimaryDark:Z

.field private mOnGearClickListener:Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecRestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/SecGearPreference;->mIsSummaryColorPrimaryDark:Z

    return-void
.end method


# virtual methods
.method public getGearIcon()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecGearPreference;->mGearIcon:Landroid/view/View;

    return-object v0
.end method

.method protected getSecondTargetResId()I
    .locals 1

    const v0, 0x7f0d023e

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecRestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v2, 0x7f0a07b2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecGearPreference;->mGearIcon:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/samsung/android/settings/SecGearPreference;->mIsSummaryColorPrimaryDark:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColorPrimaryDark(Landroid/widget/TextView;)V

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a07b2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;->onGearClick(Lcom/samsung/android/settings/SecGearPreference;)V

    :cond_0
    return-void
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/SecGearPreference;->mIsSummaryColorPrimaryDark:Z

    return-void
.end method

.method public setOnGearClickListener(Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecGearPreference;->notifyChanged()V

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecGearPreference;->mOnGearClickListener:Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
