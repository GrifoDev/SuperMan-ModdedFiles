.class public Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "SecRestrictedSettingsSwitchPreference.java"


# instance fields
.field mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v1, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public performClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settingslib/R$layout;->restricted_icon:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setWidgetLayoutResource(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method
