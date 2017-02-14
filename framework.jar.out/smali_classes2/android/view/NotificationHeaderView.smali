.class public Landroid/view/NotificationHeaderView;
.super Landroid/view/ViewGroup;
.source "NotificationHeaderView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationHeaderView$1;,
        Landroid/view/NotificationHeaderView$2;,
        Landroid/view/NotificationHeaderView$HeaderTouchListener;
    }
.end annotation


# static fields
.field public static final NO_COLOR:I = -0x1


# instance fields
.field private mAppName:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mChildMinWidth:I

.field private final mContentEndMargin:I

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field final mExpandDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mExpanded:Z

.field private mHeaderBackgroundHeight:I

.field private mHeaderText:Landroid/view/View;

.field private mIcon:Landroid/view/View;

.field private mIconColor:I

.field private mInfo:Landroid/view/View;

.field private mOriginalNotificationColor:I

.field private mProfileBadge:Landroid/view/View;

.field mProvider:Landroid/view/ViewOutlineProvider;

.field private mShowWorkBadgeAtEnd:Z

.field private mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;


# direct methods
.method static synthetic -get0(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get1(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/NotificationHeaderView;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/NotificationHeaderView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    return v0
.end method

.method static synthetic -get4(Landroid/view/NotificationHeaderView;)I
    .locals 1

    iget v0, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    return v0
.end method

.method static synthetic -get5(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    new-instance v0, Landroid/view/NotificationHeaderView$1;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$1;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    new-instance v0, Landroid/view/NotificationHeaderView$2;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$2;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    return-void
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private updateExpandButton()V
    .locals 4

    iget-boolean v1, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    if-eqz v1, :cond_0

    const v0, 0x10803ac

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040a1f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget v2, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void

    :cond_0
    const v0, 0x10803cc

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040a1e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateTouchListener()V
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->bindTouchRects()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getExpandButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getOriginalIconColor()I
    .locals 1

    iget v0, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    return v0
.end method

.method public getOriginalNotificationColor()I
    .locals 1

    iget v0, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    return v0
.end method

.method public getWorkProfileIcon()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchRect(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->-wrap0(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x102042e

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    const v0, 0x1020430

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    const v0, 0x1020433

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Landroid/view/View;

    const v0, 0x1020434

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v16

    sub-int v10, v15, v16

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v12}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v15

    add-int/2addr v8, v15

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int v13, v8, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v15

    int-to-float v15, v15

    sub-int v16, v10, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v15, v15, v16

    float-to-int v14, v15

    add-int v1, v14, v4

    move v6, v8

    move v7, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    if-ne v2, v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v15

    sub-int v7, v15, v11

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int v6, v7, v15

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getLayoutDirection()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    move v9, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v15

    sub-int v6, v15, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v15

    sub-int v7, v15, v9

    :cond_3
    invoke-virtual {v2, v6, v14, v7, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v12}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v15

    add-int v8, v13, v15

    goto :goto_1

    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/high16 v15, -0x80000000

    invoke-static {v6, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/high16 v15, -0x80000000

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v16

    add-int v12, v15, v16

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v15

    if-ge v7, v15, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    move-result v4

    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v12, v15

    goto :goto_1

    :cond_1
    if-le v12, v6, :cond_3

    sub-int v10, v12, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    if-le v1, v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    sub-int v15, v1, v15

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int v9, v1, v15

    const/high16 v15, -0x80000000

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    invoke-virtual {v15, v4, v13}, Landroid/view/View;->measure(II)V

    sub-int v15, v1, v9

    sub-int/2addr v10, v15

    :cond_2
    if-lez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int v15, v11, v10

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v15, -0x80000000

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-virtual {v15, v4, v13}, Landroid/view/View;->measure(II)V

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Landroid/view/NotificationHeaderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateExpandButton()V

    return-void
.end method

.method public setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    iput-object v1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    return-void
.end method

.method public setOriginalIconColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    return-void
.end method

.method public setOriginalNotificationColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    return-void
.end method

.method public setShowWorkBadgeAtEnd(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
