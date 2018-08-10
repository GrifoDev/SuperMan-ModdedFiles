.class public Lcom/android/settingslib/RestrictedPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "RestrictedPreference.java"


# instance fields
.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field mIconVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Landroid/support/v7/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/RestrictedPreference;->mIconVisible:Z

    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    sget v0, Lcom/android/settingslib/R$layout;->restricted_icon:I

    return v0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v2, p0, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    sget v2, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$id;->icon_container:I

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settingslib/RestrictedPreference;->mIconVisible:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public performClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/settingslib/TwoTargetPreference;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/RestrictedPreference;->mIconVisible:Z

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/RestrictedPreference;->mIconVisible:Z

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
