.class public Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "AbstractDetailsDescriptionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final mBody:Landroid/widget/TextView;

.field final mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field final mBodyLineSpacing:I

.field final mBodyMaxLines:I

.field final mBodyMinLines:I

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final mSubtitle:Landroid/widget/TextView;

.field final mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field final mTitle:Landroid/widget/TextView;

.field final mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field final mTitleLineSpacing:I

.field final mTitleMargin:I

.field final mTitleMaxLines:I

.field final mUnderSubtitleBaselineMargin:I

.field final mUnderTitleBaselineMargin:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    sget v2, Landroid/support/v17/leanback/R$id;->lb_details_description_title:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    sget v2, Landroid/support/v17/leanback/R$id;->lb_details_description_subtitle:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    sget v2, Landroid/support/v17/leanback/R$id;->lb_details_description_body:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_description_title_baseline:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_description_under_title_baseline_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mUnderTitleBaselineMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_description_under_subtitle_baseline_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mUnderSubtitleBaselineMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_description_title_line_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleLineSpacing:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_description_body_line_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyLineSpacing:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$integer;->lb_details_description_body_max_lines:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyMaxLines:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$integer;->lb_details_description_body_min_lines:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyMinLines:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleMaxLines:I

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    new-instance v3, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$1;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private getFontMetricsInt(Landroid/widget/TextView;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPreDrawListener()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public getSubtitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method removePreDrawListener()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method
