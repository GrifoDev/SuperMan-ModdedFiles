.class public Lcom/android/launcher2/WidgetFolder;
.super Landroid/widget/LinearLayout;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;,
        Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;,
        Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;,
        Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;,
        Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

.field private static final FOLDER_ICON_PAINT:Landroid/graphics/Paint;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

.field private folderLocation:[I

.field private iconLocation:[I

.field private isOpened:Z

.field private mCellCountX:I

.field private mCellCountY:I

.field private mCellGapX:I

.field private mCellGapY:I

.field private mCurrOrientation:I

.field mExpandDuration:I

.field private mFolderIconAnim:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

.field private mFolderViewIndex:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

.field private mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

.field private mOldCellCountXBeforeRotation:I

.field private mOldCellCountYBeforeRotation:I

.field private mOriginalOrientation:I

.field private mOtherParent:Landroid/view/ViewGroup;

.field private mPageRequested:I

.field private mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

.field private mPrevOrientation:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRunningTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field mSineInOut90:Landroid/view/animation/Interpolator;

.field private mTitle:Landroid/widget/TextView;

.field mTotExpandDuration:I

.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field private mWidgetFolderAvailableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetFolderView:Lcom/android/launcher2/WidgetFolderView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-class v0, Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/WidgetFolder;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/WidgetFolder;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/WidgetFolder;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/android/launcher2/WidgetFolder;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/launcher2/WidgetFolder;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/WidgetFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/WidgetFolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v5, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    new-instance v0, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v0}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mSineInOut90:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mSineInOut33:Landroid/view/animation/Interpolator;

    iput v5, p0, Lcom/android/launcher2/WidgetFolder;->mCurrOrientation:I

    iput v5, p0, Lcom/android/launcher2/WidgetFolder;->mPrevOrientation:I

    iput v5, p0, Lcom/android/launcher2/WidgetFolder;->mOriginalOrientation:I

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    new-instance v0, Lcom/android/launcher2/WidgetFolder$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetFolder$6;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/WidgetFolder;Lcom/android/launcher2/AvailableWidget;)Lcom/android/launcher2/PagedViewWidget;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/WidgetFolder;->buildWidgetView(Lcom/android/launcher2/AvailableWidget;)Lcom/android/launcher2/PagedViewWidget;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/WidgetFolder;Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/WidgetFolder;->loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher2/WidgetFolder;Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/WidgetFolder;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/launcher2/WidgetFolder;Landroid/widget/GridLayout;ILjava/util/List;III)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/WidgetFolder;->prepareLoadWidgetPreviewsTask(Landroid/widget/GridLayout;ILjava/util/List;III)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/launcher2/WidgetFolder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellGapX:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/WidgetFolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->layoutChildren()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mPageRequested:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderView;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getFolderView()Lcom/android/launcher2/WidgetFolderView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/HomeView$LayoutParams;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher2/WidgetFolder;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mSineInOut33:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mFolderViewIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellGapY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mOriginalOrientation:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mCurrOrientation:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mPrevOrientation:I

    return v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/WidgetFolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderPagedView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/WidgetFolder;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/WidgetFolder;)Landroid/widget/GridLayout;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getGridLayoutOfFirstPage()Landroid/widget/GridLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    return v0
.end method

.method private animateOpen()V
    .locals 5

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->centerAboutIcon()V

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->prepareForOpenAnimate()V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/WidgetFolder$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/WidgetFolder$2;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mTotExpandDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mFolderIconAnim:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mFolderIconAnim:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->open()V

    :cond_0
    return-void
.end method

.method private buildWidgetView(Lcom/android/launcher2/AvailableWidget;)Lcom/android/launcher2/PagedViewWidget;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewWidget;

    sget-boolean v3, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New PagedViewWidget "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-interface {p1, v0}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getGridSize()[I

    move-result-object v1

    aget v3, v0, v6

    aget v4, v1, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v0, v6

    aget v3, v0, v7

    aget v4, v1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v0, v7

    aget v3, v0, v6

    aget v4, v0, v7

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    invoke-interface {p1}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v3, Lcom/android/launcher2/FocusHelper;->WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    return-object v2
.end method

.method private calculateFolderViewIndex()V
    .locals 6

    iget v4, p0, Lcom/android/launcher2/WidgetFolder;->mOldCellCountXBeforeRotation:I

    iget v5, p0, Lcom/android/launcher2/WidgetFolder;->mOldCellCountYBeforeRotation:I

    mul-int v2, v4, v5

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v4, v4, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iget-object v5, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v5, v5, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int v1, v4, v5

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    mul-int v4, v0, v2

    iget v5, p0, Lcom/android/launcher2/WidgetFolder;->mFolderViewIndex:I

    add-int v3, v4, v5

    div-int v4, v3, v1

    iput v4, p0, Lcom/android/launcher2/WidgetFolder;->mPageRequested:I

    rem-int v4, v3, v1

    iput v4, p0, Lcom/android/launcher2/WidgetFolder;->mFolderViewIndex:I

    return-void
.end method

.method private createHorizontalFolderItems()V
    .locals 3

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    const-string v2, "Creating Widget View"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher2/WidgetFolder$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetFolder$1;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/WidgetFolderPagedView;->bind(Ljava/util/ArrayList;Lcom/android/launcher2/WidgetFolderPagedView$WidgetViewBuilder;)V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolderPagedView;->invalidatePageData()V

    return-void
.end method

.method private createVerticalFolderItems()V
    .locals 13

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040050

    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v5, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f110110

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout;

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    const-string v5, "Creating Widget View"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_6

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AvailableWidget;

    invoke-direct {p0, v6}, Lcom/android/launcher2/WidgetFolder;->buildWidgetView(Lcom/android/launcher2/AvailableWidget;)Lcom/android/launcher2/PagedViewWidget;

    move-result-object v11

    if-eqz v11, :cond_5

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    rem-int v8, v7, v1

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    div-int v9, v7, v1

    new-instance v10, Landroid/widget/GridLayout$LayoutParams;

    sget-object v1, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    invoke-static {v9, v1}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    sget-object v5, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v8, v5}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    invoke-direct {v10, v1, v5}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const v1, 0x800033

    invoke-virtual {v10, v1}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez v8, :cond_1

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellGapX:I

    :goto_1
    iput v1, v10, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    :goto_2
    if-lez v9, :cond_4

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellGapY:I

    :goto_3
    iput v1, v10, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    sget-boolean v1, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "; row: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", col: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", lm: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, v10, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", tm: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, v10, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v2, v11, v10}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    if-lez v8, :cond_3

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellGapX:I

    :goto_5
    iput v1, v10, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_5

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createFolderItems : build view fail - "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    new-instance v0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;-><init>(Lcom/android/launcher2/WidgetFolder;Landroid/widget/GridLayout;ILjava/util/ArrayList;Z)V

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Running runnable instantly "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " page "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " items "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->run()V

    return-void
.end method

.method static createWidgetFolderBitmap(Lcom/android/launcher2/WidgetFolderView;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolderView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolderView;->draw(Landroid/graphics/Canvas;)V

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeView$LayoutParams;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/HomeView$LayoutParams;

    invoke-direct {v0, v2, v2}, Lcom/android/launcher2/HomeView$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private getFolderAnimationInfo()Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;
    .locals 14

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getFolderView()Lcom/android/launcher2/WidgetFolderView;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;

    invoke-direct {v0}, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;-><init>()V

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    invoke-virtual {v1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v10, p0, Lcom/android/launcher2/WidgetFolder;->mPrevOrientation:I

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/android/launcher2/WidgetFolder;->mPrevOrientation:I

    iget v11, p0, Lcom/android/launcher2/WidgetFolder;->mCurrOrientation:I

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v11, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iget v11, p0, Lcom/android/launcher2/WidgetFolder;->mFolderViewIndex:I

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0a014b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f0a0305

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    sub-int v4, v10, v11

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v11, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuWidgets;->getBottom()I

    move-result v11

    sub-int v5, v10, v11

    iget v10, p0, Lcom/android/launcher2/WidgetFolder;->mPrevOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    iget v10, p0, Lcom/android/launcher2/WidgetFolder;->mCurrOrientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    add-int/2addr v12, v4

    aput v12, v10, v11

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    const/4 v11, 0x1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v5

    aput v12, v10, v11

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    iget-object v11, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    iget v13, v2, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    add-int/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    const/4 v11, 0x1

    aget v12, v10, v11

    iget v13, v2, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    add-int/2addr v12, v13

    aput v12, v10, v11

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher2/MenuView;

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    new-array v3, v10, [I

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v3, v12

    aput v12, v10, v11

    :cond_1
    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, v2, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-int v7, v10

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, v2, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    float-to-int v8, v10

    iget-object v10, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->location:[I

    const/4 v11, 0x0

    aput v7, v10, v11

    iget-object v10, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->location:[I

    const/4 v11, 0x1

    aput v8, v10, v11

    iget-object v10, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    const/4 v11, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    iget v13, v2, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    iget-object v10, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    const/4 v11, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    iget v13, v2, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    :cond_2
    return-object v0

    :cond_3
    iget v10, p0, Lcom/android/launcher2/WidgetFolder;->mPrevOrientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/android/launcher2/WidgetFolder;->mCurrOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    add-int/2addr v12, v4

    aput v12, v10, v11

    iget-object v10, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    const/4 v11, 0x1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v5

    aput v12, v10, v11

    goto/16 :goto_0
.end method

.method private getFolderView()Lcom/android/launcher2/WidgetFolderView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderView:Lcom/android/launcher2/WidgetFolderView;

    return-object v0
.end method

.method private getFolderWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getGridLayoutOfFirstPage()Landroid/widget/GridLayout;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    const v1, 0x7f110110

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    goto :goto_0
.end method

.method private getNumberOfRows()I
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getGridLayoutOfFirstPage()Landroid/widget/GridLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getRowCount()I

    move-result v1

    :cond_0
    return v1
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3

    const/4 v1, 0x0

    add-int/lit8 v2, p1, 0x0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v1, -0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0
.end method

.method private layoutChildren()V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/WidgetFolderPagedView;->getItemsAt(I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout;

    invoke-direct {p0, v3, v2}, Lcom/android/launcher2/WidgetFolder;->layoutChildrenOfGridLayout(Landroid/widget/GridLayout;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_1

    const v3, 0x7f110110

    invoke-virtual {p0, v3}, Lcom/android/launcher2/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3}, Lcom/android/launcher2/WidgetFolder;->layoutChildrenOfGridLayout(Landroid/widget/GridLayout;Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private layoutChildrenOfGridLayout(Landroid/widget/GridLayout;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidget;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/PagedViewWidget;

    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    const/4 v13, 0x2

    new-array v2, v13, [I

    invoke-interface {v1, v2}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v13}, Lcom/android/launcher2/MenuWidgets;->getGridSize()[I

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget v14, v2, v14

    const/4 v15, 0x0

    aget v15, v4, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v14, v2, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget v14, v2, v14

    const/4 v15, 0x1

    aget v15, v4, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v14, v2, v13

    const/4 v13, 0x0

    aget v13, v2, v13

    const/4 v14, 0x1

    aget v14, v2, v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12, v13}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12, v13}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12, v13}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v13, Lcom/android/launcher2/FocusHelper;->WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v12, v13}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v13, 0x7f11001e

    invoke-virtual {v12, v13}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    iput v13, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    iput v13, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    rem-int v6, v5, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    div-int v7, v5, v13

    invoke-virtual {v12}, Lcom/android/launcher2/PagedViewWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/GridLayout$LayoutParams;

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_1

    if-lez v6, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/WidgetFolder;->mCellGapX:I

    :goto_1
    iput v13, v9, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    :goto_2
    if-lez v7, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/WidgetFolder;->mCellGapY:I

    :goto_3
    iput v13, v9, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    const/high16 v13, -0x80000000

    invoke-static {v13}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v13

    iput-object v13, v9, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    const/high16 v13, -0x80000000

    invoke-static {v13}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v13

    iput-object v13, v9, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v12, v9}, Lcom/android/launcher2/PagedViewWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    if-lez v6, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/WidgetFolder;->mCellGapX:I

    :goto_4
    iput v13, v9, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/GridLayout;->setColumnCount(I)V

    :cond_5
    return-void
.end method

.method private loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 10

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v5, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadWidgetPreviewsInBackground who: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " page: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1400(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " items: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1500(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->syncThreadPriority()V

    :cond_2
    invoke-static {p3}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1900(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p3}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$2000(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)I

    move-result v2

    invoke-static {p3}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$2100(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)I

    move-result v1

    invoke-static {p3}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1500(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v5, v0, Lcom/android/launcher2/AvailableWidget;

    if-eqz v5, :cond_3

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->syncThreadPriority()V

    :cond_5
    move-object v5, v0

    check-cast v5, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v5, v2, v1}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got widget preview "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onCloseComplete()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 12

    if-eqz p2, :cond_4

    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1400(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)I

    move-result v4

    sget-object v8, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSyncWidgetPageItems who: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " page: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " items: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1500(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " thread: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$2200(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Landroid/widget/GridLayout;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1500(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v7, :cond_1

    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1500(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v8, v8, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    :goto_1
    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1900(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$2000(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)I

    move-result v9

    if-ge v8, v9, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$2100(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)I

    move-result v9

    if-lt v8, v9, :cond_3

    :cond_0
    const/4 v6, 0x1

    :goto_2
    sget-object v9, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "About to apply preview "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " on widget "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1500(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->access$1500(Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v8}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v8, v5}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v2, v6, v9}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v9, v9, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/PagedViewWidget;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    return-void
.end method

.method private prepareForOpenAnimate()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getFolderAnimationInfo()Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->location:[I

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->setTranslationX(F)V

    iget-object v1, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->location:[I

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->setTranslationY(F)V

    iget-object v1, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->setScaleX(F)V

    iget-object v1, v0, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->setScaleY(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mFolderIconAnim:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;-><init>(Lcom/android/launcher2/WidgetFolder;Lcom/android/launcher2/WidgetFolder$1;)V

    iput-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mFolderIconAnim:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mFolderIconAnim:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->openPrepare(Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;)V

    :cond_0
    return-void
.end method

.method private prepareLoadWidgetPreviewsTask(Landroid/widget/GridLayout;ILjava/util/List;III)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;III)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;

    iget v11, v10, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->page:I

    if-ne v11, p2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not pruned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v11}, Lcom/android/launcher2/WidgetFolder;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    new-instance v6, Lcom/android/launcher2/WidgetFolder$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/WidgetFolder$4;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    new-instance v7, Lcom/android/launcher2/WidgetFolder$5;

    invoke-direct {v7, p0}, Lcom/android/launcher2/WidgetFolder$5;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;-><init>(Landroid/widget/GridLayout;ILjava/util/List;IILcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;)V

    new-instance v9, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;

    invoke-direct {v9, p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;-><init>(I)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v9, v1, v2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New AppsCustomizeAsyncTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pageData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public animateClose(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getFolderView()Lcom/android/launcher2/WidgetFolderView;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/launcher2/WidgetFolder;->setVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getFolderAnimationInfo()Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/WidgetFolder;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    int-to-float v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->scaleBy:[F

    aget v5, v5, v8

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->location:[I

    aget v3, v5, v3

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;->location:[I

    aget v4, v4, v8

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/WidgetFolder$3;

    invoke-direct {v4, p0}, Lcom/android/launcher2/WidgetFolder$3;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mFolderIconAnim:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mFolderIconAnim:Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;

    invoke-virtual {v3, v2, v0}, Lcom/android/launcher2/WidgetFolder$WidgetFolderIconAnim;->close(Lcom/android/launcher2/WidgetFolder$FolderAnimationInfo;I)V

    goto :goto_1
.end method

.method public centerAboutIcon()V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/PagedViewGridLayout;

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v7, v0, [I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v7, v0, v6}, Lcom/android/launcher2/Utilities;->getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getFolderWidth()I

    move-result v19

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getNumberOfRows()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0012

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0159

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0296

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v9, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a02b9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9, v8}, Lcom/android/launcher2/WidgetFolderPagedView;->updateIndicator(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageCount()I

    move-result v20

    if-lez v20, :cond_2

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/launcher2/WidgetFolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/GridLayout;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v10, v15}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const v20, 0x7f0a0297

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getWidth()I

    move-result v20

    sub-int v20, v20, v19

    div-int/lit8 v11, v20, 0x2

    move/from16 v0, v19

    iput v0, v12, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    iput v4, v12, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLayoutRtl()Z

    move-result v20

    if-eqz v20, :cond_3

    iput v11, v12, Lcom/android/launcher2/HomeView$LayoutParams;->rightMargin:I

    :goto_2
    move/from16 v0, v18

    iput v0, v12, Lcom/android/launcher2/HomeView$LayoutParams;->topMargin:I

    iput v11, v12, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    move/from16 v0, v18

    iput v0, v12, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/WidgetFolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_3
    iput v11, v12, Lcom/android/launcher2/HomeView$LayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method public closeFolder()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->onFolderClose(Z)V

    return-void
.end method

.method public getCurrentPageDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolderPagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetFolder()Lcom/android/launcher2/WidgetFolder;
    .locals 0

    return-object p0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WidgetFolder::onAttachedToWindow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    sget-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->calculateFolderViewIndex()V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellGapX:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellGapY:I

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mOldCellCountXBeforeRotation:I

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountY:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mOldCellCountYBeforeRotation:I

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountY:I

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/WidgetFolderPagedView;->setGridSize(II)V

    :cond_0
    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mCurrOrientation:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mPrevOrientation:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCurrOrientation:I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WidgetFolder::onDetachedFromWindow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/WidgetFolderPagedView;

    iput-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    const v2, 0x7f0a0297

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/WidgetFolderPagedView;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->addView(Landroid/view/View;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/WidgetFolder;->mTotExpandDuration:I

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mSineInOut90:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    :cond_0
    const v1, 0x7f11010e

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a014e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellGapX:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellGapY:I

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher2/WidgetFolder;->mCurrOrientation:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/launcher2/WidgetFolder;->mOriginalOrientation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/WidgetFolder;->setOpened(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object p2, p0, Lcom/android/launcher2/WidgetFolder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->createHorizontalFolderItems()V

    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getGridLayoutOfFirstPage()Landroid/widget/GridLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewWidget;->requestFocus()Z

    :cond_2
    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->animateOpen()V

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->onFolderOpen()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->createVerticalFolderItems()V

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    const-string v3, "can\'t find valid container"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public repositionOpenFolder()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->centerAboutIcon()V

    new-instance v0, Lcom/android/launcher2/WidgetFolder$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetFolder$7;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolder;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOpenWidgetFolderTitle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getFolderView()Lcom/android/launcher2/WidgetFolderView;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/WidgetFolderView;->changeTextColor(ZLandroid/widget/TextView;)V

    return-void
.end method

.method public setOpened(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    return-void
.end method

.method public setWidgetFolderItems(Ljava/util/ArrayList;Lcom/android/launcher2/MenuWidgets;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;",
            "Lcom/android/launcher2/MenuWidgets;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    iget v0, p2, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mOldCellCountXBeforeRotation:I

    iget v0, p2, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountY:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mOldCellCountYBeforeRotation:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    iget v0, p2, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountY:I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountY:I

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/WidgetFolderPagedView;->setGridSize(II)V

    :cond_1
    return-void
.end method

.method public setWidgetFolderManager(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    return-void
.end method

.method public setWidgetFolderView(Lcom/android/launcher2/WidgetFolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderView:Lcom/android/launcher2/WidgetFolderView;

    return-void
.end method

.method public setWidgetFolderViewIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/WidgetFolder;->mFolderViewIndex:I

    return-void
.end method
