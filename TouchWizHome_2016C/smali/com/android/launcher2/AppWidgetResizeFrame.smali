.class public Lcom/android/launcher2/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field static final BACKGROUND_PADDING:I = 0x10

.field static final BORDER_MARGIN:I = 0x10

.field public static final BOTTOM:I = 0x3

.field private static final DEBUGGABLE:Z

.field static final DIMMED_HANDLE_ALPHA:F = 0.0f

.field public static final LEFT:I = 0x0

.field static final RESIZE_THRESHOLD:F = 0.66f

.field public static final RIGHT:I = 0x2

.field static final SNAP_DURATION:I = 0x96

.field public static final TOP:I = 0x1

.field private static final enableMultitouchForWidgetResize:Z


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBeginResize:Z

.field private mBorderFramePadding:I

.field private mBorderHasChanged:Z

.field private mBorderMargin:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mBottomMaxDeltaOffset:I

.field private mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

.field private mClearIfNoScale:Z

.field private mDeltaX:I

.field private mDeltaY:I

.field private final mDirectionVector:[I

.field private mDownX:I

.field private mDownY:I

.field private mExpandability:[I

.field private mForceInvalid:Z

.field private mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

.field private mHorizontalScaleActive:Z

.field private final mLastDirectionVector:[I

.field private mLastTouch:[I

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mResizeWithSameRate:Z

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleHasHappened:Z

.field private mSizes:Lcom/android/launcher2/WidgetSizes;

.field private mStartSpanX:F

.field private mStartSpanY:F

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mVerticalScaleActive:Z

.field private mVisualizeInvalid:Z

.field private mWidgetView:Landroid/view/View;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/HomeItem;Landroid/view/View;Lcom/android/launcher2/CellLayoutWithResizableWidgets;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    const/4 v6, 0x4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeWithSameRate:Z

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    new-instance v6, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v6, Lcom/android/launcher2/WidgetSizes;

    invoke-direct {v6, p1}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    const v6, 0x7f0a0220

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderFramePadding:I

    iput-object p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    iput-object p4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Workspace;

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    const-string v5, ""

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v6, :cond_4

    check-cast p3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iget-object v6, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.samsung.android.snote.control.ui.quickmemo.quickmemowidget.PushAndAttachWidget"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeWithSameRate:Z

    :cond_0
    :goto_0
    const v6, 0x7f0200fe

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackground:Landroid/graphics/drawable/Drawable;

    const v6, 0x7f0200ff

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    iget v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/launcher2/AppWidgetResizeFrame;->setPadding(IIII)V

    const v6, 0x7f0a031f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomMaxDeltaOffset:I

    const v6, 0x7f0900df

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v7, 0x7f020100

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x13

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v7, 0x7f020100

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x15

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v7, 0x7f020100

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x31

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v7, 0x7f020100

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x51

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCountX()I

    move-result v7

    if-lt v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCountY()I

    move-result v7

    if-lt v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    sget-boolean v6, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "AppWidgetResizeFrame"

    const-string v7, "unknown view type of AppWidgetResizeFrame"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private beginResizeIfPointInRegion(II)Z
    .locals 13

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v9}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_2

    move v3, v7

    :goto_0
    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v9}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f0c002b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f020100

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int v5, v9, v1

    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    iget v12, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    add-int/2addr v9, v12

    add-int/2addr v5, v9

    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v9, v2, Landroid/graphics/Rect;->left:I

    if-le p1, v9, :cond_4

    iget v9, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v5

    if-ge p1, v9, :cond_4

    if-eqz v3, :cond_4

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iget v9, v2, Landroid/graphics/Rect;->right:I

    if-ge p1, v9, :cond_5

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v5

    if-le p1, v9, :cond_5

    if-eqz v3, :cond_5

    move v9, v7

    :goto_3
    iput-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget v9, v2, Landroid/graphics/Rect;->top:I

    if-le p2, v9, :cond_6

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    if-ge p2, v9, :cond_6

    if-eqz v6, :cond_6

    move v9, v7

    :goto_4
    iput-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v9, :cond_7

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    if-le p2, v9, :cond_7

    if-eqz v6, :cond_7

    move v9, v7

    :goto_5
    iput-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v9, :cond_8

    :cond_0
    move v0, v7

    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    iput v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    iput v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iput v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    iget v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iput v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    iput v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    iput v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v7, :cond_9

    move v7, v10

    :goto_7
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v7, :cond_a

    move v7, v10

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v7, :cond_b

    move v7, v10

    :goto_9
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v8, :cond_c

    :goto_a
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    return v0

    :cond_2
    move v3, v8

    goto/16 :goto_0

    :cond_3
    move v6, v8

    goto/16 :goto_1

    :cond_4
    move v9, v8

    goto/16 :goto_2

    :cond_5
    move v9, v8

    goto/16 :goto_3

    :cond_6
    move v9, v8

    goto :goto_4

    :cond_7
    move v9, v8

    goto :goto_5

    :cond_8
    move v0, v8

    goto :goto_6

    :cond_9
    move v7, v11

    goto :goto_7

    :cond_a
    move v7, v11

    goto :goto_8

    :cond_b
    move v7, v11

    goto :goto_9

    :cond_c
    move v10, v11

    goto :goto_a
.end method

.method private commitResize()V
    .locals 12

    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualOk()V

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    const-wide/16 v2, -0x64

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    iget v4, v4, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v8, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const-string v9, "resizeItemInDatabase"

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    new-instance v0, Lcom/android/launcher2/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0, v11}, Lcom/android/launcher2/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "AppWidgetResizeFrame"

    const-string v1, "unknown view type in app widget resize frame"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private getRect()Landroid/graphics/Rect;
    .locals 7

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getEditModeShrinkFactor()F

    move-result v0

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v4, v5

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v3, v5

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v5, v5, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    mul-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    mul-float/2addr v3, v5

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    mul-float v6, v4, v0

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    mul-float v6, v3, v0

    float-to-int v6, v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    return-object v2
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCellWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidthGap()I

    move-result v3

    add-int v29, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCellHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getHeightGap()I

    move-result v3

    add-int v30, v2, v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move/from16 v0, v29

    int-to-float v3, v0

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v3, v3

    sub-float v19, v2, v3

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move/from16 v0, v30

    int-to-float v3, v0

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v3, v3

    sub-float v25, v2, v3

    const/16 v18, 0x0

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3f28f5c3    # 0.66f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v18

    :cond_0
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3f28f5c3    # 0.66f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->round(F)I

    move-result v24

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, v25

    if-ltz v2, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v2, v25

    if-gtz v2, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v2, v19

    if-gtz v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-float v2, v2

    cmpg-float v2, v2, v19

    if-gez v2, :cond_f

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualInvalid()V

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v2, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v2, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v2, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v2, :cond_10

    :cond_9
    const/16 v21, 0x1

    :goto_1
    if-nez p1, :cond_11

    if-nez v18, :cond_a

    if-eqz v24, :cond_e

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v2, :cond_c

    :cond_b
    if-nez v18, :cond_c

    if-eqz v21, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v2, :cond_11

    :cond_d
    if-nez v24, :cond_11

    if-nez v21, :cond_11

    :cond_e
    :goto_2
    return-void

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualOk()V

    goto :goto_0

    :cond_10
    const/16 v21, 0x0

    goto :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v2, :cond_20

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    neg-int v2, v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v3

    sub-int/2addr v2, v3

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    :cond_12
    mul-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    sub-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    :cond_13
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    neg-int v2, v2

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v3

    sub-int/2addr v2, v3

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v24, v24, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    :cond_14
    :goto_4
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeWithSameRate:Z

    if-eqz v2, :cond_16

    :cond_15
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int v28, v18, v2

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeWithSameRate:Z

    if-eqz v2, :cond_18

    :cond_17
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int v20, v24, v2

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/WidgetSizes;->isAvailableSize(II)Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, v22

    iget v12, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v22

    iget v13, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, v22

    iget v14, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v22

    iget v15, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeWithSameRate:Z

    if-eqz v2, :cond_1a

    :cond_19
    move/from16 v0, v28

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int v2, v2, v16

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeWithSameRate:Z

    if-eqz v2, :cond_1c

    :cond_1b
    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int v2, v2, v17

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    :cond_1c
    if-eqz v18, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v2, :cond_29

    const/4 v2, -0x1

    :goto_5
    aput v2, v3, v4

    :cond_1d
    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_2a

    const/4 v2, -0x1

    :goto_6
    aput v2, v3, v4

    :cond_1e
    if-eqz p1, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    move/from16 v9, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualInvalid()V

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    move-object/from16 v0, v22

    iput v12, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v22

    iput v13, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v22

    iput v15, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v22

    iput v15, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    :cond_1f
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_2

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v2, :cond_22

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    neg-int v2, v2

    move/from16 v0, v18

    neg-int v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v3

    sub-int/2addr v2, v3

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    add-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_3

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v2

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int v3, v3, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v28

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    add-int/2addr v2, v3

    move/from16 v0, v28

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/launcher2/WidgetSizes;->capWidth(I)I

    move-result v28

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v18, v28, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v2, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    int-to-float v2, v2

    move/from16 v0, v29

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    neg-int v2, v2

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    sub-int v3, v26, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-int v3, v3, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    add-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_3

    :cond_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeWithSameRate:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    add-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_3

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    neg-int v2, v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v3

    sub-int/2addr v2, v3

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    mul-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    sub-int v2, v2, v18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_3

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v2, v2, v24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_4

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v2

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int v3, v3, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    add-int/2addr v2, v3

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher2/WidgetSizes;->capHeight(I)I

    move-result v20

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    sub-int v24, v20, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v2, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    int-to-float v2, v2

    move/from16 v0, v30

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    neg-int v2, v2

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    sub-int v3, v27, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    sub-int v3, v3, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v2, v2, v24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_4

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeWithSameRate:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    neg-int v2, v2

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v3

    sub-int/2addr v2, v3

    move/from16 v0, v17

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v24, v24, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    sub-int v2, v2, v24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_4

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v2, v2, v24

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_4

    :cond_29
    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_2a
    const/4 v2, 0x1

    goto/16 :goto_6

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastDirectionVector:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    goto/16 :goto_7

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v3, v2, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v3, v2, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v3, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v3, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v2, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    iget-boolean v2, v2, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeWidgetItem;

    iget v3, v3, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    goto/16 :goto_8

    :cond_2d
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    if-eqz p1, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDirectionVector:[I

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualInvalid()V

    goto/16 :goto_8
.end method

.method private setVisualInvalid()V
    .locals 2

    const v1, 0x7f020101

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setVisualOk()V
    .locals 2

    const v1, 0x7f020100

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateDeltas(II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v7}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->spanToPixel(II)[I

    move-result-object v3

    aget v5, v3, v8

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v2, v5, -0x1

    aget v5, v3, v9

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v5, p1

    if-gt v5, v2, :cond_2

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int v5, v2, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v5, p2

    if-gt v5, v1, :cond_4

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int v5, v1, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    const/4 v4, 0x1

    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    iput-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    :goto_2
    return-void

    :cond_2
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr v5, p1

    if-gt v5, v2, :cond_3

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr v5, p2

    if-gt v5, v1, :cond_5

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    iput p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    goto :goto_2
.end method

.method private visualizeResizeForDelta(II)V
    .locals 20

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateDeltas(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v3, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    :cond_1
    :goto_1
    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v3, v0, :cond_2

    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v2, v0, :cond_3

    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    :cond_3
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    if-lez p1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    add-int v6, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    sub-int v7, v17, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v4, v17, 0x2

    const/16 v17, 0x0

    sub-int v18, p1, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    sub-int v17, v17, v14

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    add-int v17, v17, v14

    add-int v17, v17, v15

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    div-int/lit8 v18, p1, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    add-int v17, v17, p1

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeWithSameRate:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    if-lez p2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    add-int v8, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    sub-int v5, v11, v17

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v4, v17, 0x2

    const/16 v17, 0x0

    sub-int v18, p2, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    add-int v17, v17, v16

    add-int v17, v17, v13

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    add-int v17, v17, p2

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeWithSameRate:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    goto/16 :goto_1
.end method

.method private visualizeResizeForDelta(IIII)V
    .locals 5

    sub-int v0, p2, p4

    iget-boolean v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    mul-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getTop()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    sub-int v2, p1, p3

    invoke-direct {p0, v2, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomMaxDeltaOffset:I

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    :goto_1
    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderFramePadding:I

    sub-int v2, v5, v6

    const/4 v0, 0x0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    sub-int/2addr v5, v2

    iget v6, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    sub-int/2addr v6, v2

    invoke-virtual {v0, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public exitResize()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    return-void
.end method

.method public getWidgetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    return-object v0
.end method

.method public isPointInFrame(FF)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/AppIconView;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/AppIconView;

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    aget v3, v4, v3

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    aget v4, v4, v2

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher2/AppIconView;->setLastTouchPoint(II)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->startDrag(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode(Z)V

    move v1, v2

    :goto_1
    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    aget v3, v4, v3

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    aget v4, v4, v2

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setLastTouchPoint(II)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanX:F

    sub-float v0, v2, v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanY:F

    sub-float v1, v3, v4

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    float-to-int v4, v0

    float-to-int v5, v1

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    return v6
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanX:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanY:F

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v5

    :pswitch_0
    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    iput v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v2

    if-nez v2, :cond_1

    iput-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mClearIfNoScale:Z

    iput-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleHasHappened:Z

    iput-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(IIII)V

    goto :goto_0

    :pswitch_2
    iput-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(IIII)V

    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    iget-boolean v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mClearIfNoScale:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleHasHappened:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    goto :goto_0

    :pswitch_3
    iget-boolean v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    :cond_2
    iput-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public snapToWidget(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(ZLcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;)V

    return-void
.end method

.method public snapToWidget(ZLcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;)V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f020100

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    float-to-int v3, v15

    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v11

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v15, v15, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    int-to-float v15, v12

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v12, v15

    int-to-float v15, v11

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v11, v15

    :cond_0
    mul-int/lit8 v15, v3, 0x2

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    add-int v7, v15, v16

    mul-int/lit8 v15, v3, 0x2

    add-int/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    add-int v6, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v15

    add-int/2addr v15, v4

    sub-int/2addr v15, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    move/from16 v16, v0

    sub-int v8, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    add-int/2addr v15, v14

    sub-int/2addr v15, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    move/from16 v16, v0

    sub-int v9, v15, v16

    if-nez p1, :cond_2

    iput v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    iput v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    iput v8, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iput v9, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    goto/16 :goto_0

    :cond_2
    const/4 v15, 0x4

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    sget-object v17, Lcom/android/launcher2/CellLayout$LayoutParams;->WIDTH:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v7, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Lcom/android/launcher2/CellLayout$LayoutParams;->HEIGHT:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v6, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget-object v17, Lcom/android/launcher2/CellLayout$LayoutParams;->X:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v8, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget-object v17, Lcom/android/launcher2/CellLayout$LayoutParams;->Y:Landroid/util/Property;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    aput v9, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v5, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v15, Lcom/android/launcher2/AppWidgetResizeFrame$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/launcher2/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {v10, v15}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v15}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    const/4 v15, 0x5

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    :pswitch_0
    const/4 v15, 0x3

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :pswitch_1
    const/4 v15, 0x3

    new-array v15, v15, [Landroid/animation/Animator;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    sget-object v18, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
