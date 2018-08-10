.class public Lcom/android/systemui/stackdivider/AppPairPopupView;
.super Landroid/widget/FrameLayout;
.source "AppPairPopupView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final BUBBLE_FIRST_BODY:I

.field private final BUBBLE_FIRST_LINE:I

.field private final BUBBLE_SECOND_BODY:I

.field private final BUBBLE_SECOND_LINE:I

.field private final LARGE_FONT_SCALE:F

.field private final NUM_OF_IMG_SRC:I

.field private mBubbleView:Landroid/widget/FrameLayout;

.field private mContentTxtScroll:Landroid/widget/ScrollView;

.field private mContentTxtView:Landroid/widget/TextView;

.field private mFirstBody:Landroid/widget/ImageView;

.field private mFirstLine:Landroid/widget/ImageView;

.field private final mImgSrc:[I

.field private mIsLandScape:Z

.field private mIsNeedGravityToRight:Z

.field private mIsNeedResetToolTipSize:Z

.field private mIsNeedTopArrow:Z

.field private mPointCircleView:Landroid/widget/FrameLayout;

.field private mPopupManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

.field private mSecondBody:Landroid/widget/ImageView;

.field private mSecondLine:Landroid/widget/ImageView;

.field private mTitleTxtView:Landroid/widget/TextView;

.field private mTxtView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->LARGE_FONT_SCALE:F

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsLandScape:Z

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedGravityToRight:Z

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedTopArrow:Z

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mBubbleView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mPointCircleView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mTxtView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mFirstBody:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mFirstLine:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mSecondBody:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mSecondLine:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mTitleTxtView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContentTxtScroll:Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContentTxtView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mPopupManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->NUM_OF_IMG_SRC:I

    iput v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->BUBBLE_FIRST_BODY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->BUBBLE_FIRST_LINE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->BUBBLE_SECOND_BODY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->BUBBLE_SECOND_LINE:I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mImgSrc:[I

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedResetToolTipSize:Z

    return-void

    :array_0
    .array-data 4
        0x7f080087
        0x7f080081
        0x7f080088
        0x7f080082
        0x7f080089
        0x7f080083
        0x7f08008a
        0x7f080084
        0x7f080086
        0x7f080080
        0x7f080085
        0x7f08007f
        0x7f08006f
        0x7f080079
        0x7f080070
        0x7f08007a
        0x7f080071
        0x7f08007b
        0x7f080072
        0x7f08007c
        0x7f080074
        0x7f08007e
        0x7f080073
        0x7f08007d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->LARGE_FONT_SCALE:F

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsLandScape:Z

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedGravityToRight:Z

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedTopArrow:Z

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mBubbleView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mPointCircleView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mTxtView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mFirstBody:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mFirstLine:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mSecondBody:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mSecondLine:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mTitleTxtView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContentTxtScroll:Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContentTxtView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mPopupManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->NUM_OF_IMG_SRC:I

    iput v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->BUBBLE_FIRST_BODY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->BUBBLE_FIRST_LINE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->BUBBLE_SECOND_BODY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->BUBBLE_SECOND_LINE:I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mImgSrc:[I

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedResetToolTipSize:Z

    return-void

    :array_0
    .array-data 4
        0x7f080087
        0x7f080081
        0x7f080088
        0x7f080082
        0x7f080089
        0x7f080083
        0x7f08008a
        0x7f080084
        0x7f080086
        0x7f080080
        0x7f080085
        0x7f08007f
        0x7f08006f
        0x7f080079
        0x7f080070
        0x7f08007a
        0x7f080071
        0x7f08007b
        0x7f080072
        0x7f08007c
        0x7f080074
        0x7f08007e
        0x7f080073
        0x7f08007d
    .end array-data
.end method


# virtual methods
.method public checkAndRestrictFontSize()V
    .locals 9

    const/4 v8, 0x0

    const-wide v6, 0x3ff4ccccc0000000L    # 1.2999999523162842

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3fa66666    # 1.3f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mTitleTxtView:Landroid/widget/TextView;

    int-to-float v4, v2

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContentTxtView:Landroid/widget/TextView;

    int-to-float v4, v0

    div-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public getBubbleView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mBubbleView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getCircleWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mPointCircleView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public getFirstBody()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mFirstBody:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFirstLine()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mFirstLine:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSecondBody()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mSecondBody:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSecondLine()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mSecondLine:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTxtView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mTxtView:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a036c

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mBubbleView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a036a

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mPointCircleView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a036f

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mTxtView:Landroid/view/View;

    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mFirstBody:Landroid/widget/ImageView;

    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mFirstLine:Landroid/widget/ImageView;

    const v0, 0x7f0a00ae

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mSecondBody:Landroid/widget/ImageView;

    const v0, 0x7f0a00af

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mSecondLine:Landroid/widget/ImageView;

    const v0, 0x7f0a0370

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mTitleTxtView:Landroid/widget/TextView;

    const v0, 0x7f0a036d

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContentTxtView:Landroid/widget/TextView;

    const v0, 0x7f0a036e

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContentTxtScroll:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->checkAndRestrictFontSize()V

    invoke-virtual {p0, p0}, Lcom/android/systemui/stackdivider/AppPairPopupView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedResetToolTipSize:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedResetToolTipSize:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mPopupManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mPopupManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->reSetBubbleSize()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "AppPairToolTip"

    const-string/jumbo v1, "Hide Popup View, because AppPairPopupView is touched."

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v2
.end method

.method public setBubbleViewImage(I)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mImgSrc:[I

    mul-int/lit8 v5, p1, 0x4

    add-int/lit8 v5, v5, 0x0

    aget v0, v4, v5

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mImgSrc:[I

    mul-int/lit8 v5, p1, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v1, v4, v5

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mImgSrc:[I

    mul-int/lit8 v5, p1, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v2, v4, v5

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mImgSrc:[I

    mul-int/lit8 v5, p1, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v3, v4, v5

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mFirstBody:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mFirstLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mSecondBody:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mSecondLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setIsNeedResetToolTipSize(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedResetToolTipSize:Z

    return-void
.end method

.method public setNeedTopArrow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedTopArrow:Z

    return-void
.end method

.method setOnTouchListeners()V
    .locals 3

    const v2, 0x7f0a036f

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a036a

    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/AppPairPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/stackdivider/AppPairPopupView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/AppPairPopupView$1;-><init>(Lcom/android/systemui/stackdivider/AppPairPopupView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/android/systemui/stackdivider/AppPairPopupView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/AppPairPopupView$2;-><init>(Lcom/android/systemui/stackdivider/AppPairPopupView;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPopupManager(Lcom/android/systemui/stackdivider/AppPairPopupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mPopupManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    return-void
.end method

.method public setTextViewMargin(I)V
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mTitleTxtView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContentTxtScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703ed

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703ec

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703eb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-ne p1, v11, :cond_3

    move v8, v1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    if-ne p1, v6, :cond_4

    :cond_0
    move v7, v2

    :goto_1
    if-ne p1, v10, :cond_5

    move v6, v1

    :goto_2
    invoke-virtual {v5, v8, v7, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    if-ne p1, v11, :cond_6

    move v6, v1

    :goto_3
    if-ne p1, v10, :cond_7

    :goto_4
    const/4 v7, 0x3

    if-eq p1, v7, :cond_1

    const/4 v7, 0x4

    if-ne p1, v7, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    invoke-virtual {v0, v6, v9, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mTitleTxtView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mContentTxtScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    move v8, v4

    goto :goto_0

    :cond_4
    move v7, v3

    goto :goto_1

    :cond_5
    move v6, v4

    goto :goto_2

    :cond_6
    move v6, v4

    goto :goto_3

    :cond_7
    move v1, v4

    goto :goto_4
.end method

.method public setVariables(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsLandScape:Z

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedGravityToRight:Z

    return-void
.end method

.method startAnimation(I)V
    .locals 8

    const/4 v1, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    new-instance v0, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedGravityToRight:Z

    if-eqz v3, :cond_1

    move v3, v6

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsLandScape:Z

    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedTopArrow:Z

    or-int/2addr v4, v5

    if-eqz v4, :cond_2

    move v4, v7

    :goto_1
    move-object v2, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;-><init>(ZLandroid/view/View;FFI)V

    new-instance v2, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedGravityToRight:Z

    if-eqz v3, :cond_3

    move v5, v6

    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsLandScape:Z

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mIsNeedTopArrow:Z

    or-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v6, v7

    :cond_0
    move v3, v1

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/stackdivider/AppPairPopupAnimator;-><init>(ZLandroid/view/View;FFI)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mBubbleView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/AppPairPopupView;->mPointCircleView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    move v3, v7

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2
.end method
