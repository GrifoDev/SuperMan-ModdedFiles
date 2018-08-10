.class public Lcom/android/internal/widget/ImageFloatingTextView;
.super Landroid/widget/TextView;
.source "ImageFloatingTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mBlockLayouts:Z

.field private mFirstMeasure:Z

.field private mIndentLines:I

.field private mLayoutMaxLines:I

.field private mMaxLinesForHeight:I

.field private mResolvedDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mFirstMeasure:Z

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    return-void
.end method


# virtual methods
.method public getLayoutHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method protected makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v5, ""

    :goto_0
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v7, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingExtra()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingMultiplier()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getIncludeFontPadding()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    if-lez v6, :cond_2

    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    :goto_1
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    iput v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    if-eqz p5, :cond_0

    invoke-virtual {v0, p6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050168

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v3, 0x0

    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [I

    const/4 v2, 0x0

    :goto_2
    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-ge v2, v6, :cond_4

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v6

    if-ltz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v4

    goto :goto_1

    :cond_3
    const v4, 0x7fffffff

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    :goto_3
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v6

    return-object v6

    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v3}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingTop:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingBottom:I

    sub-int v0, v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineHeight()I

    move-result v3

    div-int v2, v0, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_0
    iget v3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    if-eq v2, v3, :cond_1

    iput v2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    if-eq v3, v4, :cond_1

    iput-boolean v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mBlockLayouts:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ImageFloatingTextView;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mBlockLayouts:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->isLayoutDirectionResolved()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mBlockLayouts:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHasImage(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNumIndentLines(I)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
