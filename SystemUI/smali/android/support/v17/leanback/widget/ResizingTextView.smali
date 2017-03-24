.class Landroid/support/v17/leanback/widget/ResizingTextView;
.super Landroid/widget/TextView;
.source "ResizingTextView.java"


# instance fields
.field private mDefaultLineSpacingExtra:F

.field private mDefaultPaddingBottom:I

.field private mDefaultPaddingTop:I

.field private mDefaultTextSize:I

.field private mDefaultsInitialized:Z

.field private mIsResized:Z

.field private mMaintainLineSpacing:Z

.field private mResizedPaddingAdjustmentBottom:I

.field private mResizedPaddingAdjustmentTop:I

.field private mResizedTextSize:I

.field private mTriggerConditions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v17/leanback/widget/ResizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mIsResized:Z

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizeTrigger:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mTriggerConditions:I

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedTextSize:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_maintainLineSpacing:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedPaddingAdjustmentTop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentTop:I

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbResizingTextView_resizedPaddingAdjustmentBottom:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentBottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private setPaddingTopAndBottom(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->isPaddingRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingRelative(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11

    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    if-nez v9, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getTextSize()F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v9

    iput v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultsInitialized:Z

    :cond_0
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    invoke-direct {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mTriggerConditions:I

    and-int/lit8 v9, v9, 0x1

    if-lez v9, :cond_1

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getMaxLines()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_1

    if-ne v2, v3, :cond_7

    const/4 v7, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getTextSize()F

    move-result v9

    float-to-int v0, v9

    const/4 v6, 0x0

    if-eqz v7, :cond_8

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    if-eq v0, v9, :cond_2

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    const/4 v6, 0x1

    :cond_2
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    int-to-float v10, v10

    sub-float v8, v9, v10

    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v9

    cmpl-float v9, v9, v8

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    const/4 v6, 0x1

    :cond_3
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentTop:I

    add-int v5, v9, v10

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedPaddingAdjustmentBottom:I

    add-int v4, v9, v10

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v9

    if-ne v9, v5, :cond_4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v9

    if-eq v9, v4, :cond_5

    :cond_4
    invoke-direct {p0, v5, v4}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    const/4 v6, 0x1

    :cond_5
    :goto_1
    iput-boolean v7, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mIsResized:Z

    if-eqz v6, :cond_6

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_6
    return-void

    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    :cond_8
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mResizedTextSize:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    if-eq v0, v9, :cond_9

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultTextSize:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p0, v10, v9}, Landroid/support/v17/leanback/widget/ResizingTextView;->setTextSize(IF)V

    const/4 v6, 0x1

    :cond_9
    iget-boolean v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mMaintainLineSpacing:Z

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingExtra()F

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_a

    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultLineSpacingExtra:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getLineSpacingMultiplier()F

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setLineSpacing(FF)V

    const/4 v6, 0x1

    :cond_a
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingTop()I

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    if-ne v9, v10, :cond_b

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ResizingTextView;->getPaddingBottom()I

    move-result v9

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    if-eq v9, v10, :cond_5

    :cond_b
    iget v9, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingTop:I

    iget v10, p0, Landroid/support/v17/leanback/widget/ResizingTextView;->mDefaultPaddingBottom:I

    invoke-direct {p0, v9, v10}, Landroid/support/v17/leanback/widget/ResizingTextView;->setPaddingTopAndBottom(II)V

    const/4 v6, 0x1

    goto :goto_1
.end method
