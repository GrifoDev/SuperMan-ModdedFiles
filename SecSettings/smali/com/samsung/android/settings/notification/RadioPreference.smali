.class public Lcom/samsung/android/settings/notification/RadioPreference;
.super Landroid/support/v7/preference/Preference;
.source "RadioPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/RadioPreference$1;,
        Lcom/samsung/android/settings/notification/RadioPreference$2;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/RadioPreference;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/RadioPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040031

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/samsung/android/settings/notification/RadioPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/RadioPreference$1;-><init>(Lcom/samsung/android/settings/notification/RadioPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/samsung/android/settings/notification/RadioPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/notification/RadioPreference$2;-><init>(Lcom/samsung/android/settings/notification/RadioPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    const v0, 0x7f0d0221

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setLayoutResource(I)V

    return-void
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    if-eq v1, p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v5, 0x7f0a08fe

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    iget-boolean v5, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mPreventRadioButtonCallbacks:Z

    iput-object v3, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/RadioPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setFocusable(Z)V

    :cond_0
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4}, Landroid/support/v7/preference/SecPreferenceUtils;->applyTitleLargerTextIfNeeded(Landroid/widget/TextView;)V

    const v5, 0x1020006

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/RadioPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mChecked:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/RadioPreference;->persistBoolean(Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/RadioPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/RadioPreference;->notifyChanged()V

    goto :goto_1
.end method
