.class public Lcom/android/settings/widget/ButtonPreference;
.super Landroid/support/v7/preference/Preference;
.source "ButtonPreference.java"


# instance fields
.field private mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mButtonContainer:Landroid/widget/LinearLayout;

.field private mButtonStyle:I

.field private mContainerBottomPadding:I

.field private mContainerTopPadding:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonStyle:I

    iput p2, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonStyle:I

    invoke-direct {p0}, Lcom/android/settings/widget/ButtonPreference;->initButtonLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonStyle:I

    invoke-direct {p0}, Lcom/android/settings/widget/ButtonPreference;->initButtonLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonStyle:I

    invoke-direct {p0}, Lcom/android/settings/widget/ButtonPreference;->initButtonLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonStyle:I

    invoke-direct {p0}, Lcom/android/settings/widget/ButtonPreference;->initButtonLayout()V

    return-void
.end method

.method private initButtonLayout()V
    .locals 1

    const v0, 0x7f0d0062

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ButtonPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    if-nez v0, :cond_0

    const v0, 0x7f0a0134

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a012c

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/RoundButtonView;

    iput-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget v1, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonStyle:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v1, p0, Lcom/android/settings/widget/ButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v1, p0, Lcom/android/settings/widget/ButtonPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget v0, p0, Lcom/android/settings/widget/ButtonPreference;->mContainerBottomPadding:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/widget/ButtonPreference;->mContainerTopPadding:I

    if-eqz v0, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v3

    iget v0, p0, Lcom/android/settings/widget/ButtonPreference;->mContainerTopPadding:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v4

    iget v1, p0, Lcom/android/settings/widget/ButtonPreference;->mContainerBottomPadding:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/widget/ButtonPreference;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    :goto_1
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/android/settings/widget/ButtonPreference;->mContainerTopPadding:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/settings/widget/ButtonPreference;->mContainerBottomPadding:I

    goto :goto_1
.end method

.method public setButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setButtonStyle(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ButtonPreference;->mButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/ButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/ButtonPreference;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setContainerTopBottomPadding(II)V
    .locals 0

    iput p2, p0, Lcom/android/settings/widget/ButtonPreference;->mContainerBottomPadding:I

    iput p1, p0, Lcom/android/settings/widget/ButtonPreference;->mContainerTopPadding:I

    return-void
.end method
