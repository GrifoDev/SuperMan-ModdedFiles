.class public Lcom/android/settingslib/TwoTargetPreference;
.super Landroid/support/v7/preference/Preference;
.source "TwoTargetPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settingslib/TwoTargetPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/settingslib/TwoTargetPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    sget v1, Lcom/android/settingslib/R$layout;->preference_two_target:I

    invoke-virtual {p0, v1}, Lcom/android/settingslib/TwoTargetPreference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/android/settingslib/TwoTargetPreference;->getSecondTargetResId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/TwoTargetPreference;->setWidgetLayoutResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    sget v3, Lcom/android/settingslib/R$id;->two_target_divider:I

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x1020018

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settingslib/TwoTargetPreference;->shouldHideSecondTarget()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method protected shouldHideSecondTarget()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settingslib/TwoTargetPreference;->getSecondTargetResId()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
