.class public Landroid/support/v17/leanback/widget/WindowAlignment$Axis;
.super Ljava/lang/Object;
.source "WindowAlignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/WindowAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Axis"
.end annotation


# instance fields
.field private mMaxEdge:I

.field private mMaxScroll:I

.field private mMinEdge:I

.field private mMinScroll:I

.field private mName:Ljava/lang/String;

.field private mPaddingMax:I

.field private mPaddingMin:I

.field private mPreferredKeyLine:I

.field private mReversedFlow:Z

.field private mSize:I

.field private mWindowAlignment:I

.field private mWindowAlignmentOffset:I

.field private mWindowAlignmentOffsetPercent:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->reset()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final calculateKeyline()I
    .locals 5

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v3, -0x40800000    # -1.0f

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v1, :cond_2

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    add-int v0, v1, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    if-ltz v1, :cond_3

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    sub-int v0, v1, v2

    :goto_2
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    neg-int v0, v1

    goto :goto_2
.end method

.method final calculateScrollToKeyLine(II)I
    .locals 1

    sub-int v0, p1, p2

    return v0
.end method

.method public final getClientSize()I
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getMaxScroll()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    return v0
.end method

.method public final getMinScroll()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    return v0
.end method

.method public final getPaddingMax()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    return v0
.end method

.method public final getPaddingMin()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    return v0
.end method

.method public final getScroll(I)I
    .locals 10

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v2

    if-nez v3, :cond_3

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int v6, v4, v8

    iget-boolean v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v8, :cond_2

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    :cond_0
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    sub-int v8, p1, v8

    if-gt v8, v6, :cond_3

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iget v9, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int v1, v8, v9

    if-nez v2, :cond_1

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    if-le v1, v8, :cond_1

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_1
    return v1

    :cond_2
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_0

    :cond_3
    if-nez v2, :cond_7

    sub-int v8, v7, v4

    iget v9, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int v5, v8, v9

    iget-boolean v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v8, :cond_6

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7

    :cond_4
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    sub-int/2addr v8, p1

    if-gt v8, v5, :cond_7

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v9, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    sub-int v9, v7, v9

    sub-int v0, v8, v9

    if-nez v3, :cond_5

    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    if-ge v0, v8, :cond_5

    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_5
    return v0

    :cond_6
    iget v8, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_4

    :cond_7
    invoke-virtual {p0, p1, v4}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v8

    return v8
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    return v0
.end method

.method public final invalidateScrollMax()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    return-void
.end method

.method public final invalidateScrollMin()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    return-void
.end method

.method public final isMaxUnknown()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMinUnknown()Z
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isPreferKeylineOverHighEdge()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final isPreferKeylineOverLowEdge()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPreferredKeyLine:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method reset()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    return-void
.end method

.method public final setPadding(II)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    iput p2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMax:I

    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mSize:I

    return-void
.end method

.method public final setWindowAlignment(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    return-void
.end method

.method public final setWindowAlignmentOffset(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffset:I

    return-void
.end method

.method public final setWindowAlignmentOffsetPercent(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignmentOffsetPercent:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateMinMax(IIII)V
    .locals 6

    iput p1, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iput p2, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateKeyline()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v1

    if-nez v2, :cond_1

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_6

    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    :cond_0
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinEdge:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_8

    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    :cond_2
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxEdge:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mPaddingMin:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_a

    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    :cond_4
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_c

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverLowEdge()Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_d

    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    invoke-virtual {p0, p4, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    :cond_7
    invoke-virtual {p0, p3, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_0

    :cond_8
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    :cond_9
    invoke-virtual {p0, p4, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_1

    :cond_a
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    :cond_b
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_e

    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    :goto_4
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mReversedFlow:Z

    if-nez v4, :cond_f

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverHighEdge()Z

    move-result v4

    :goto_5
    if-eqz v4, :cond_10

    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-virtual {p0, p3, v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->calculateScrollToKeyLine(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverHighEdge()Z

    move-result v4

    goto :goto_2

    :cond_d
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    goto :goto_3

    :cond_e
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mWindowAlignment:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverLowEdge()Z

    move-result v4

    goto :goto_5

    :cond_10
    iget v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    iget v5, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMaxScroll:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->mMinScroll:I

    goto :goto_3
.end method
