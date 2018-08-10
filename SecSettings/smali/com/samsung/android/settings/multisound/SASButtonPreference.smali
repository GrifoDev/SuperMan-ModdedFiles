.class public Lcom/samsung/android/settings/multisound/SASButtonPreference;
.super Landroid/support/v7/preference/Preference;
.source "SASButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/multisound/SASButtonPreference$1;,
        Lcom/samsung/android/settings/multisound/SASButtonPreference$2;
    }
.end annotation


# instance fields
.field public mButton:Landroid/widget/CompoundButton;

.field private mButtonType:I

.field private final mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mChecked:Z

.field mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private volatile mPreventRadioButtonCallbacks:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/SASButtonPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisound/SASButtonPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->onButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040031

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    new-instance v0, Lcom/samsung/android/settings/multisound/SASButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference$1;-><init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/samsung/android/settings/multisound/SASButtonPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference$2;-><init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    const v0, 0x7f0d0220

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method private onButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    if-eq v1, p2, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-nez v0, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 10

    const/4 v9, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v8, 0x7f0a08fe

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    const v8, 0x7f0a08fb

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-boolean v9, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mPreventRadioButtonCallbacks:Z

    iget-boolean v8, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    invoke-virtual {v5, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-boolean v8, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean v6, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mPreventRadioButtonCallbacks:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setClickable(Z)V

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setFocusable(Z)V

    :cond_0
    iget v8, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    if-ne v8, v9, :cond_3

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iput-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    :goto_0
    const v8, 0x7f0a08fc

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v8, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;

    invoke-direct {v8, p0, v5, v1}, Lcom/samsung/android/settings/multisound/SASButtonPreference$3;-><init>(Lcom/samsung/android/settings/multisound/SASButtonPreference;Landroid/widget/RadioButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x1020006

    invoke-virtual {p1, v8}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iput-object v5, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1
.end method

.method public setButtonType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButtonType:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->persistBoolean(Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->notifyChanged()V

    goto :goto_1

    :cond_3
    iput-boolean p1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mChecked:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->persistBoolean(Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/SASButtonPreference;->mButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/SASButtonPreference;->notifyChanged()V

    goto :goto_1
.end method
