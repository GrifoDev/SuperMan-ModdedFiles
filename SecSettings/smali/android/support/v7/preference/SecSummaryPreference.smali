.class public Landroid/support/v7/preference/SecSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "SecSummaryPreference.java"


# instance fields
.field private mEndLabel:Ljava/lang/String;

.field private mLeft:I

.field private mLeftRatio:F

.field private mMiddle:I

.field private mMiddleRatio:F

.field private mRight:I

.field private mRightRatio:F

.field private mStartLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d02d0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/SecSummaryPreference;->setLayoutResource(I)V

    const v0, 0x7f06024c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/SecSummaryPreference;->mLeft:I

    const v0, 0x7f06024b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/SecSummaryPreference;->mRight:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    const v4, 0x7f0a0477

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v1, 0x7f0a0196

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    iget v1, p0, Landroid/support/v7/preference/SecSummaryPreference;->mLeftRatio:F

    iget v2, p0, Landroid/support/v7/preference/SecSummaryPreference;->mMiddleRatio:F

    iget v3, p0, Landroid/support/v7/preference/SecSummaryPreference;->mRightRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    iget v1, p0, Landroid/support/v7/preference/SecSummaryPreference;->mLeft:I

    iget v2, p0, Landroid/support/v7/preference/SecSummaryPreference;->mMiddle:I

    iget v3, p0, Landroid/support/v7/preference/SecSummaryPreference;->mRight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setColors(III)V

    iget-object v1, p0, Landroid/support/v7/preference/SecSummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/preference/SecSummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/preference/SecSummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/preference/SecSummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
