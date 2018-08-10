.class public abstract Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "AbstractDetailsDescriptionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    return-void
.end method

.method private setTopMargin(Landroid/widget/TextView;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected abstract onBindDescription(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;Ljava/lang/Object;)V
.end method

.method public final onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-virtual {p0, v2, p2}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->onBindDescription(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget v4, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleMargin:I

    invoke-direct {p0, v3, v4}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    const/4 v0, 0x1

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_0
    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget v4, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleLineSpacing:I

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget v4, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleMaxLines:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_2

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    iget v4, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mUnderTitleBaselineMargin:I

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, v5

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_2
    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-direct {p0, v3, v6}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_3
    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    iget v4, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyLineSpacing:I

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    if-eqz v0, :cond_4

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    iget v4, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mUnderSubtitleBaselineMargin:I

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, v5

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    iget v4, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mUnderTitleBaselineMargin:I

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, v5

    iget-object v5, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto/16 :goto_2

    :cond_5
    iget-object v3, v2, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v3, v6}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto/16 :goto_2
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_details_description:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->addPreDrawListener()V

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->removePreDrawListener()V

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method
