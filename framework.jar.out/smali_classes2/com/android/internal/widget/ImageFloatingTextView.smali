.class public Lcom/android/internal/widget/ImageFloatingTextView;
.super Landroid/widget/TextView;
.source "ImageFloatingTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mIndentLines:I


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
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v6, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingExtra()F

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingMultiplier()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getIncludeFontPadding()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {v5, p6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v3, 0x0

    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v5, :cond_2

    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    add-int/lit8 v5, v5, 0x1

    new-array v3, v5, [I

    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-ge v2, v5, :cond_2

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 p6, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    :goto_3
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v5

    return-object v5

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    goto :goto_3
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
