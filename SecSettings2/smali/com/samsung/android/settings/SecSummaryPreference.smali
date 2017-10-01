.class public Lcom/samsung/android/settings/SecSummaryPreference;
.super Landroid/preference/Preference;
.source "SecSummaryPreference.java"


# instance fields
.field private mAmount:Ljava/lang/String;

.field private mEndLabel:Ljava/lang/String;

.field private mLeft:I

.field private mLeftRatio:F

.field private mMiddle:I

.field private mMiddleRatio:F

.field private mRight:I

.field private mRightRatio:F

.field private mStartLabel:Ljava/lang/String;

.field private mUnits:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f04027b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSummaryPreference;->setLayoutResource(I)V

    const v0, 0x7f0d0097

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mLeft:I

    const v0, 0x7f0d0098

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mRight:I

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f110633

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v1, 0x7f110595

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LinearColorBar;

    iget v1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mLeftRatio:F

    iget v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mMiddleRatio:F

    iget v3, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mRightRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    iget v1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mLeft:I

    iget v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mMiddle:I

    iget v3, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mRight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->setColors(III)V

    iget-object v1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mAmount:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b13de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mAmount:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mUnits:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setColors(III)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mLeft:I

    iput p2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mMiddle:I

    iput p3, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mRight:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mStartLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public setRatios(FFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mLeftRatio:F

    iput p2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mMiddleRatio:F

    iput p3, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mRightRatio:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSummaryPreference;->notifyChanged()V

    return-void
.end method

.method public setUnits(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mUnits:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b13de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mAmount:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/settings/SecSummaryPreference;->mUnits:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
