.class public Lcom/samsung/android/settingslib/RestrictedPreference;
.super Landroid/preference/Preference;
.source "RestrictedPreference.java"


# instance fields
.field mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

.field private mViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mViewId:I

    sget v0, Lcom/android/settingslib/R$layout;->restricted_icon:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setWidgetLayoutResource(I)V

    new-instance v0, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    sget v2, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget v1, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mViewId:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method
