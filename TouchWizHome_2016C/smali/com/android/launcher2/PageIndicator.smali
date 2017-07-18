.class public Lcom/android/launcher2/PageIndicator;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageIndicator$Page;
    }
.end annotation


# static fields
.field public static final ADDPAGE_INDI:I = 0x3

.field protected static final ANIMATION_DURATION:I = 0xc8

.field private static final ANIMATION_STATE_DONE:I = 0x3

.field private static final ANIMATION_STATE_RUNNING:I = 0x2

.field private static final ANIMATION_STATE_STARTING:I = 0x1

.field protected static final DRAW_STATE_LARGE:I = 0x3

.field protected static final DRAW_STATE_NONE:I = 0x0

.field protected static final DRAW_STATE_SMALL:I = 0x1

.field public static final FESTIVAL_INDI:I = 0x1

.field public static final HEADLINES_INDI:I = 0x2

.field public static final HOME_INDI:I = 0x0

.field public static final INVALID_AREA:I = -0x1

.field private static final PANEL_TEXT_PAINT:Landroid/graphics/Paint;

.field private static final arabicNumberArray:[C

.field private static final farsiNumberArray:[C

.field private static final rate:[F


# instance fields
.field private PANEL_ANIMATION_TIME:I

.field protected isPageEdit:Z

.field protected mAddPageDrawable:Landroid/graphics/drawable/Drawable;

.field mCurrentGroupNum:I

.field mCurrentIndexWithinGroup:I

.field protected mCurrentPage:I

.field mDefaultGroup:I

.field mDefaultGroupNum:I

.field protected mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

.field protected mDisplayPageCount:I

.field private mEnableGroupingIndicator:I

.field private mEnableTouch:Z

.field public mFadeOut:Landroid/view/animation/AlphaAnimation;

.field private mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

.field private final mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mFastScrollNumBgTop:I

.field private mFastScrollPaddingTop:I

.field private mFastScrollPaddingTopDelta:I

.field private mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

.field protected mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstTextIndex:I

.field protected mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mGap:I

.field private mGrowBy:F

.field protected mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

.field protected mHotseatBarSize:I

.field private mIndicatorWidth:I

.field mIsAnimationPrevented:Z

.field public mIsDraw:Z

.field private mIsFastScrolling:Z

.field public mIsHiding:Z

.field private mIsStartGrouping:Z

.field protected mIsWorkspaceItem:Z

.field protected mLeft:I

.field private final mMaxVisiblePages:I

.field private mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mNomalTotalPageCount:I

.field protected mPage:[Lcom/android/launcher2/PageIndicator$Page;

.field protected mPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mPageNumberBg:Landroid/graphics/drawable/Drawable;

.field private mPageindicatorPanelTopAdjust:I

.field private mPanelSize:I

.field private mScrollBarThumbWidth:I

.field private mScrollBarWidth:I

.field private mScrollPosition:F

.field private mSnapToScreenIndex:I

.field protected mTop:I

.field private mTotalPageCount:I

.field public mTransformation:Landroid/view/animation/Transformation;

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private final rect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xa

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/PageIndicator;->rate:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-array v0, v2, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/launcher2/PageIndicator;->arabicNumberArray:[C

    new-array v0, v2, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/launcher2/PageIndicator;->farsiNumberArray:[C

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
    .end array-data

    :array_2
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x6f4s
        0x6f5s
        0x6f6s
        0x667s
        0x668s
        0x669s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/launcher2/PagedView;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mNomalTotalPageCount:I

    iput v5, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v2, 0xc8

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v2, v3, v7, v1}, Lcom/android/launcher2/ScalarAnimator;-><init>(JFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsStartGrouping:Z

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mIndicatorWidth:I

    const/16 v0, -0x23

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->PANEL_ANIMATION_TIME:I

    iput v5, p0, Lcom/android/launcher2/PageIndicator;->mSnapToScreenIndex:I

    sget-object v0, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ALL_PAGE:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    iput v5, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    iput v5, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    iput v5, p0, Lcom/android/launcher2/PageIndicator;->mCurrentGroupNum:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mCurrentIndexWithinGroup:I

    iput-object v8, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    iput-object v8, p0, Lcom/android/launcher2/PageIndicator;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    iput-boolean v6, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    iput-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    iput-boolean v6, p0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    instance-of v0, p2, Lcom/android/launcher2/Workspace;

    if-eqz v0, :cond_1

    iput-boolean v6, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/Workspace;

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->isPageEdit:Z

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    return-void

    :cond_1
    instance-of v0, p2, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/launcher2/MenuAppsGrid;

    iput-object p2, p0, Lcom/android/launcher2/PageIndicator;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    goto :goto_0
.end method

.method static synthetic access$000()[F
    .locals 1

    sget-object v0, Lcom/android/launcher2/PageIndicator;->rate:[F

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PageIndicator;)F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mGrowBy:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    return-object v0
.end method

.method private drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ar"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "fa"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/launcher2/PageIndicator;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    int-to-float v4, v3

    div-float/2addr v4, v7

    int-to-float v5, v1

    invoke-virtual {p5}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p5}, Landroid/graphics/Paint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v7

    invoke-virtual {p2, v2, v4, v5, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCurrentIndexWithinGroup()I
    .locals 6

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    iget v5, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    if-eq v2, v1, :cond_0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mCurrentGroupNum:I

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    sub-int v1, v2, v1

    rem-int/2addr v1, v0

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setGroupingValues(Z)V
    .locals 5

    const/4 v3, -0x1

    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsStartGrouping:Z

    iget-boolean v2, p0, Lcom/android/launcher2/PageIndicator;->mIsStartGrouping:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    sget-object v1, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    :goto_0
    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mNomalTotalPageCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/launcher2/PageIndicator;->mNomalTotalPageCount:I

    :cond_0
    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mNomalTotalPageCount:I

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mEnableGroupingIndicator:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mEnableGroupingIndicator:I

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mNomalTotalPageCount:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mEnableGroupingIndicator:I

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    :goto_2
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentGroupNum:I

    goto :goto_2
.end method

.method private static toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher2/PageIndicator;->arabicNumberArray:[C

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "fa"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher2/PageIndicator;->farsiNumberArray:[C

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;J)Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    if-nez v2, :cond_2

    :cond_0
    const/16 v18, 0x0

    :cond_1
    :goto_0
    return v18

    :cond_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mTop:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v15

    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-lez v2, :cond_3

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v15

    float-to-int v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget-object v2, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v10, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v2

    const/16 v3, 0x320

    if-lt v2, v3, :cond_7

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v2, :cond_8

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    neg-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSmallestWidth()I

    move-result v2

    const/16 v3, 0x320

    if-lt v2, v3, :cond_9

    const/4 v2, 0x0

    const/high16 v3, -0x3ee00000    # -10.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v13, v2, 0x2

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    add-int v14, v2, v3

    int-to-float v2, v13

    int-to-float v3, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :goto_4
    neg-int v2, v13

    int-to-float v2, v2

    neg-int v3, v14

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, v17

    move-wide/from16 v8, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/PageIndicator;->drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z

    move-result v18

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    add-int/lit8 v3, v3, -0x1e

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-eqz v2, :cond_6

    const/16 v18, 0x1

    :cond_6
    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    :cond_8
    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v5, v2, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v5, v2, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    goto/16 :goto_5
.end method

.method public drawIndicatorDots(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIJ)Z
    .locals 36

    const/16 v30, 0x0

    const/4 v2, 0x6

    new-array v10, v2, [Z

    fill-array-data v10, :array_0

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_6

    add-int/lit8 v31, p3, -0x1

    :goto_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_7

    const/16 v22, -0x1

    :goto_1
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_8

    const/16 v21, -0x1

    :goto_2
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_17

    move-object/from16 v34, p2

    check-cast v34, Lcom/android/launcher2/Workspace;

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v27

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/Workspace;->isGridSelectMenuOpened()Z

    move-result v26

    if-nez v26, :cond_9

    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_0

    if-eqz v27, :cond_9

    :cond_0
    const/16 v28, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v28, 0x1

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PageIndicator;->getTotalPageCount()I

    move-result v33

    move/from16 v24, v25

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/PageIndicator;->mIsStartGrouping:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    move/from16 v0, v24

    if-le v0, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    mul-int/2addr v2, v3

    move/from16 v0, v24

    if-gt v0, v2, :cond_b

    add-int/lit8 v2, v24, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    div-int/2addr v2, v3

    add-int/lit8 v23, v2, 0x1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-nez v2, :cond_a

    if-nez v24, :cond_a

    const/16 v24, 0x0

    :cond_3
    :goto_4
    move/from16 v5, v31

    :goto_5
    move/from16 v0, v22

    if-eq v5, v0, :cond_1b

    const/4 v3, 0x0

    move/from16 v0, v24

    if-ne v0, v5, :cond_c

    const/4 v2, 0x1

    :goto_6
    aput-boolean v2, v10, v3

    sget-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/launcher2/PageIndicator$2;->$SwitchMap$com$android$launcher2$PageIndicatorManager$DISPLAY_ITEM:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    invoke-virtual {v3}, Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_4
    :goto_7
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_15

    if-nez v5, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_15

    if-eqz v26, :cond_f

    :cond_5
    :goto_8
    add-int v5, v5, v21

    goto :goto_5

    :cond_6
    const/16 v31, 0x0

    goto/16 :goto_0

    :cond_7
    move/from16 v22, p3

    goto/16 :goto_1

    :cond_8
    const/16 v21, 0x1

    goto/16 :goto_2

    :cond_9
    const/16 v28, 0x0

    goto/16 :goto_3

    :cond_a
    move/from16 v24, v23

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    mul-int/2addr v2, v3

    sub-int v2, v24, v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    add-int/lit8 v3, v3, 0x1

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    add-int/2addr v2, v3

    add-int/lit8 v23, v2, 0x1

    move/from16 v24, v23

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    :pswitch_0
    add-int/lit8 v2, v22, -0x1

    if-ne v5, v2, :cond_d

    add-int/lit8 v2, v33, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/CellLayout;

    :goto_9
    if-eqz v20, :cond_e

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    goto :goto_7

    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/CellLayout;

    goto :goto_9

    :cond_e
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v10, v2

    goto/16 :goto_7

    :pswitch_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-boolean v3, v10, v2

    goto/16 :goto_7

    :pswitch_2
    const/4 v2, 0x1

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    goto/16 :goto_7

    :cond_f
    if-eqz v27, :cond_13

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    :goto_a
    if-eqz v28, :cond_16

    add-int/lit8 v2, p3, -0x1

    if-ne v5, v2, :cond_16

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    :goto_b
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v5, :cond_11

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v2

    if-nez v2, :cond_10

    if-nez v27, :cond_10

    if-eqz v26, :cond_5

    :cond_10
    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v32

    if-eq v0, v2, :cond_5

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher2/Workspace;->isStartDragStarted()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PageIndicator;->mIndicatorWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/PageIndicator;->mIndicatorWidth:I

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v5

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIFF[Z)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v30, 0x1

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mIndicatorWidth:I

    add-int v2, v2, p5

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_8

    :cond_13
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    goto :goto_a

    :cond_14
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v10, v2

    goto :goto_a

    :cond_15
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-boolean v3, v10, v2

    goto/16 :goto_a

    :cond_16
    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-boolean v3, v10, v2

    goto :goto_b

    :cond_17
    const/16 v28, 0x0

    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v2, :cond_18

    move-object/from16 v29, p2

    check-cast v29, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v32

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v32

    if-ne v0, v2, :cond_18

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v28, 0x1

    :cond_18
    move/from16 v5, v31

    :goto_c
    move/from16 v0, v22

    if-eq v5, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v5

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/PageIndicator$Page;->getScale(J)F

    move-result v18

    if-eqz v28, :cond_1a

    add-int/lit8 v2, p3, -0x1

    if-ne v5, v2, :cond_1a

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v10, v2

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v11, v2, v5

    add-int v14, p4, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PageIndicator;->mIndicatorWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PageIndicator;->mIndicatorWidth:I

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;IIIFF[Z)Z

    move-result v2

    if-eqz v2, :cond_19

    const/16 v30, 0x1

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mIndicatorWidth:I

    add-int v2, v2, p5

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    add-int v5, v5, v21

    goto :goto_c

    :cond_1a
    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-boolean v3, v10, v2

    goto :goto_d

    :cond_1b
    return v30

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public drawPageNumberBox(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;JI)V
    .locals 13

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v0, :cond_5

    sget-object v12, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    :goto_1
    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v12, v0, :cond_1

    sget-object v0, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v12, v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher2/PagedView;->getPageIndicatorManager()Lcom/android/launcher2/PageIndicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorLeft()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->getScrollX()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    :cond_2
    int-to-float v0, v11

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v0, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v8, v0, 0x2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    add-int v9, v0, v1

    int-to-float v0, v8

    int-to-float v1, v9

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/launcher2/PageIndicator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    :goto_3
    instance-of v0, p2, Lcom/android/launcher2/MenuAppsGrid;

    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/android/launcher2/MenuWidgets;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/android/launcher2/FolderPagedView;

    if-eqz v0, :cond_4

    :cond_3
    add-int/lit8 p5, p5, 0x1

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/PageIndicator;->drawPageNumber(Landroid/content/Context;Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    neg-int v0, v8

    int-to-float v0, v0

    neg-int v1, v9

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v12

    goto/16 :goto_1

    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p2}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3
.end method

.method public enterFastScroll()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    return-void
.end method

.method public exitFastScroll()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    return v0
.end method

.method public getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;

    return-object v0
.end method

.method public getMaxVisiblePages()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    return v0
.end method

.method getPageTouchArea(II)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    if-nez v13, :cond_1

    :cond_0
    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PageIndicator;->mGap:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    div-int/lit8 v9, v2, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/PageIndicator;->mIndicatorWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PageIndicator;->mIndicatorWidth:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mTop:I

    add-int/lit8 v14, v14, -0xa

    iput v14, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mTop:I

    add-int/2addr v14, v4

    add-int/lit8 v14, v14, 0x8

    add-int/lit8 v14, v14, 0xa

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v13, :cond_4

    sget-object v11, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewWorkspace;->isGridSelectMenuOpened()Z

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PageIndicator;->isPageEdit:Z

    if-nez v13, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    if-nez v6, :cond_3

    sget-object v13, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v11, v13, :cond_3

    sget-object v13, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v11, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v13

    if-eqz v13, :cond_5

    :cond_3
    const/4 v12, 0x1

    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    add-int v14, v10, v2

    mul-int/2addr v14, v5

    add-int/2addr v14, v7

    sub-int/2addr v14, v9

    iput v14, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v10

    mul-int/lit8 v15, v9, 0x2

    add-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->rect:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/PageIndicator;->mIsStartGrouping:Z

    if-eqz v13, :cond_12

    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_7

    add-int/lit8 v14, v8, -0x1

    if-eqz v12, :cond_6

    const/4 v13, 0x1

    :goto_4
    sub-int v13, v14, v13

    :goto_5
    if-ne v5, v13, :cond_9

    if-eqz v12, :cond_8

    const/4 v13, 0x1

    :goto_6
    add-int/lit8 v3, v13, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v11

    goto/16 :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    goto :goto_6

    :cond_9
    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    sub-int v13, v8, v13

    add-int/lit8 v13, v13, -0x1

    if-lt v5, v13, :cond_c

    :cond_a
    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_e

    sub-int v13, v8, v5

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    mul-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    goto/16 :goto_0

    :cond_b
    if-eqz v12, :cond_d

    const/4 v13, 0x1

    :goto_7
    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    if-le v13, v14, :cond_a

    :cond_c
    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    mul-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    sub-int v14, v8, v5

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    sub-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    add-int/lit8 v15, v15, 0x1

    mul-int/2addr v14, v15

    add-int v3, v13, v14

    goto/16 :goto_0

    :cond_d
    const/4 v13, 0x0

    goto :goto_7

    :cond_e
    if-eqz v12, :cond_f

    const/4 v13, 0x1

    :goto_8
    add-int/2addr v13, v5

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    mul-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v13, 0x0

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    mul-int/2addr v13, v14

    add-int/lit8 v14, v13, 0x1

    if-eqz v12, :cond_11

    const/4 v13, 0x1

    :goto_9
    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    sub-int/2addr v13, v15

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    add-int/lit8 v15, v15, 0x1

    mul-int/2addr v13, v15

    add-int v3, v14, v13

    goto/16 :goto_0

    :cond_11
    const/4 v13, 0x0

    goto :goto_9

    :cond_12
    sget-boolean v13, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v13, :cond_13

    sub-int v13, v8, v5

    add-int/lit8 v3, v13, -0x1

    goto/16 :goto_0

    :cond_13
    if-eqz v12, :cond_14

    const/4 v13, 0x1

    :goto_a
    add-int v3, v5, v13

    goto/16 :goto_0

    :cond_14
    const/4 v13, 0x0

    goto :goto_a

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_16
    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method public getSnapToScreenIndex()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mSnapToScreenIndex:I

    return v0
.end method

.method public getTotalPageCount()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    return v0
.end method

.method public handleOrientationChange(Landroid/content/res/Resources;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PageIndicator;->setupDimens(Landroid/content/res/Resources;)V

    return-void
.end method

.method public hide(Z)V
    .locals 4

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(I)V

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/launcher2/PageIndicator$Page;->endAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    return-void
.end method

.method public isFastScrolling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsFastScrolling:Z

    return v0
.end method

.method public isStartGrouping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsStartGrouping:Z

    return v0
.end method

.method public setAddPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mAddPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method public setAnimationPrevented(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    return-void
.end method

.method setCurrentPage(IZLcom/android/launcher2/PagedView;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicator;->mIsStartGrouping:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    if-nez v3, :cond_2

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mCurrentGroupNum:I

    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PageIndicator;->setFirstTextNum(I)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_8

    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicator;->mIsStartGrouping:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentGroupNum:I

    if-ne v0, v3, :cond_5

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentIndexWithinGroup:I

    invoke-direct {p0}, Lcom/android/launcher2/PageIndicator;->getCurrentIndexWithinGroup()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    iget-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v8, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    iget v5, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    mul-int/2addr v4, v5

    if-gt v3, v4, :cond_3

    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentGroupNum:I

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    iget v5, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroup:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/PageIndicator;->mDefaultGroupNum:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentGroupNum:I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    iget-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v6, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    iget-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v6, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    goto :goto_3

    :cond_6
    iget v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentPage:I

    if-ne v0, v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    iget-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v8, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    aget-object v3, v3, v0

    iget-boolean v4, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    invoke-virtual {v3, v6, v4}, Lcom/android/launcher2/PageIndicator$Page;->setDrawState(IZ)V

    goto :goto_3

    :cond_8
    iget-boolean v3, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    if-eqz v3, :cond_9

    iput-boolean v7, p0, Lcom/android/launcher2/PageIndicator;->mIsAnimationPrevented:Z

    :cond_9
    invoke-direct {p0}, Lcom/android/launcher2/PageIndicator;->getCurrentIndexWithinGroup()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PageIndicator;->mCurrentIndexWithinGroup:I

    goto/16 :goto_0
.end method

.method public setDefaultPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mDefaultPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method public setDisplayItem(Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayItem:Lcom/android/launcher2/PageIndicatorManager$DISPLAY_ITEM;

    return-void
.end method

.method public setEnableTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicator;->mEnableTouch:Z

    return-void
.end method

.method public setFestivalPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFestivalPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method setFirstTextNum(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mFirstTextIndex:I

    return-void
.end method

.method public setFolderPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mFolderPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method setGap(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    return-void
.end method

.method public setHeadlinesPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mHeadlinesPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method setOffset(IIZ)V
    .locals 2

    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    :cond_0
    return-void
.end method

.method setOffsetForRotation(II)V
    .locals 0

    iput p2, p0, Lcom/android/launcher2/PageIndicator;->mTop:I

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mLeft:I

    return-void
.end method

.method setPageCount(I)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v4

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->isGridSelectMenuOpened()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v7, :cond_1

    sget-object v7, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v7, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    sget-object v7, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v7, :cond_7

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v7

    if-eqz v7, :cond_7

    :cond_1
    move v2, v6

    :goto_0
    sget-boolean v7, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v7, :cond_8

    sget-object v7, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v7, :cond_8

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v7

    if-nez v7, :cond_8

    move v0, v6

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v7, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v7, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mTotalPageCount:I

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mNomalTotalPageCount:I

    iget v7, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mEnableGroupingIndicator:I

    iget v7, p0, Lcom/android/launcher2/PageIndicator;->mNomalTotalPageCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mNomalTotalPageCount:I

    iget v7, p0, Lcom/android/launcher2/PageIndicator;->mEnableGroupingIndicator:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mEnableGroupingIndicator:I

    if-eqz v2, :cond_4

    iget v7, p0, Lcom/android/launcher2/PageIndicator;->mNomalTotalPageCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mNomalTotalPageCount:I

    :cond_4
    iget v7, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    if-le p1, v7, :cond_9

    invoke-direct {p0, v6}, Lcom/android/launcher2/PageIndicator;->setGroupingValues(Z)V

    iget p1, p0, Lcom/android/launcher2/PageIndicator;->mMaxVisiblePages:I

    :goto_2
    iget-boolean v5, p0, Lcom/android/launcher2/PageIndicator;->mIsStartGrouping:Z

    if-eqz v5, :cond_6

    if-nez v2, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    add-int/lit8 p1, p1, 0x1

    :cond_6
    iget v5, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    if-eq v5, p1, :cond_a

    new-array v5, p1, [Lcom/android/launcher2/PageIndicator$Page;

    iput-object v5, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_a

    iget-object v5, p0, Lcom/android/launcher2/PageIndicator;->mPage:[Lcom/android/launcher2/PageIndicator$Page;

    new-instance v6, Lcom/android/launcher2/PageIndicator$Page;

    invoke-direct {v6, p0}, Lcom/android/launcher2/PageIndicator$Page;-><init>(Lcom/android/launcher2/PageIndicator;)V

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v2, v5

    goto :goto_0

    :cond_8
    move v0, v5

    goto :goto_1

    :cond_9
    invoke-direct {p0, v5}, Lcom/android/launcher2/PageIndicator;->setGroupingValues(Z)V

    goto :goto_2

    :cond_a
    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    return-void
.end method

.method public setPageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    return-void
.end method

.method public setScrollPosition(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mScrollPosition:F

    return-void
.end method

.method public setSnapToScreenIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/PageIndicator;->mSnapToScreenIndex:I

    return-void
.end method

.method public setupDimens(Landroid/content/res/Resources;)V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f02003d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02003c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02008a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a0292

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mIndicatorWidth:I

    sget-object v0, Lcom/android/launcher2/PageIndicator;->PANEL_TEXT_PAINT:Landroid/graphics/Paint;

    const v1, 0x7f0a01b0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->PANEL_ANIMATION_TIME:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/launcher2/PageIndicator$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PageIndicator$1;-><init>(Lcom/android/launcher2/PageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f0a01b2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mGrowBy:F

    const v0, 0x7f0a01b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    iget-object v0, p0, Lcom/android/launcher2/PageIndicator;->mPageNumberBg:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    iget v2, p0, Lcom/android/launcher2/PageIndicator;->mPanelSize:I

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollNumBgTop:I

    const v0, 0x7f0a01b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mPageindicatorPanelTopAdjust:I

    const v0, 0x7f0a01b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    const v0, 0x7f0a03b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTopDelta:I

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a0128

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iput v4, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/launcher2/PageIndicator;->mHotseatBarSize:I

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsDraw:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicator;->mIsHiding:Z

    goto :goto_0
.end method

.method public updatePositions()V
    .locals 13

    iget v1, p0, Lcom/android/launcher2/PageIndicator;->mDisplayPageCount:I

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/4 v0, 0x0

    mul-int v7, v2, v1

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/lit8 v9, v1, -0x1

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTopDelta:I

    sub-int v6, v7, v8

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/launcher2/PageIndicator;->mIsWorkspaceItem:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    iget v9, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mGap:I

    add-int/2addr v10, v2

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v3, v10

    iget-object v11, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iget v12, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollThumbDrawable:Landroid/graphics/drawable/Drawable;

    add-int v8, v6, v4

    invoke-virtual {v7, v0, v6, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v7, v3, v0

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarWidth:I

    sub-int v7, v5, v0

    iput v7, p0, Lcom/android/launcher2/PageIndicator;->mScrollBarThumbWidth:I

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    iget v8, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    iget-object v9, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/PageIndicator;->mFastScrollPaddingTop:I

    add-int/2addr v9, v10

    invoke-virtual {v7, v0, v8, v3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method
