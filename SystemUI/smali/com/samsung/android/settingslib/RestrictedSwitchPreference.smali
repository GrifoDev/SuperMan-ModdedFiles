.class public Lcom/samsung/android/settingslib/RestrictedSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "RestrictedSwitchPreference.java"


# instance fields
.field mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

.field mRestrictedSwitchSummary:Ljava/lang/String;

.field mUseAdditionalSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v5, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    iput-object v6, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    sget v4, Lcom/android/settingslib/R$layout;->restricted_switch_widget:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    new-instance v4, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v4, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    if-eqz p2, :cond_2

    sget-object v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_useAdditionalSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6

    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    :cond_0
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedSwitchPreference_restrictedSwitchSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_7

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    if-nez v1, :cond_8

    move-object v4, v6

    :goto_2
    iput-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    if-nez v4, :cond_3

    sget v4, Lcom/android/settingslib/R$string;->disabled_by_admin:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_4

    sget v4, Lcom/android/settingslib/R$layout;->restricted_switch_preference:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->setLayoutResource(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->useAdminDisabledSummary(Z)V

    :cond_4
    return-void

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_0

    :cond_7
    iget-object v1, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_8
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v4, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    sget v4, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v4, 0x1020040

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mUseAdditionalSummary:Z

    if-eqz v4, :cond_6

    sget v4, Lcom/android/settingslib/R$id;->additional_summary:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mRestrictedSwitchSummary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->useAdminDisabledSummary(Z)V

    return-void
.end method
