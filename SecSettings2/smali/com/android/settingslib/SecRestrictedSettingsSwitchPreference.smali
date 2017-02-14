.class public Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;
.super Landroid/preference/SemSwitchPreferenceScreen;
.source "SecRestrictedSettingsSwitchPreference.java"


# instance fields
.field mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

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

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SemSwitchPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    const v2, 0x1020018

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settingslib/R$layout;->restricted_icon:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setWidgetLayoutResource(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/SemSwitchPreferenceScreen;->setEnabled(Z)V

    return-void
.end method
