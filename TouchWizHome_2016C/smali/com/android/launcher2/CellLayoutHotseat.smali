.class public Lcom/android/launcher2/CellLayoutHotseat;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutHotseat.java"


# static fields
.field private static final DEBUGGABLE:Z

.field static final TAG:Ljava/lang/String; = "CellLayoutHotseat"

.field private static mHasSetStartXY:Z

.field public static mIsTopListChanged:Z

.field private static sDeltaOffset:Z

.field private static sDragStartXYHotseat:[I

.field private static sIsDraggingWithinQuickOptionsBounds:Z


# instance fields
.field private mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

.field private mBinding:Z

.field private mDragState:Lcom/android/launcher2/DragState;

.field private mHasEnded:Z

.field mIsRightPosition:Z

.field mMaxCellCount:I

.field private mReapplyIconNeeded:Z

.field private mReapplyIconViewStylesRunnable:Ljava/lang/Runnable;

.field private mReapplyStyleHandler:Landroid/os/Handler;

.field private mRemoveEmptySpacePosted:Z

.field private mReorderPosted:Z

.field private final mTmpDragXY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayoutHotseat;->mIsTopListChanged:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    sput-boolean v1, Lcom/android/launcher2/CellLayoutHotseat;->sIsDraggingWithinQuickOptionsBounds:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayoutHotseat;->sDeltaOffset:Z

    sput-boolean v1, Lcom/android/launcher2/CellLayoutHotseat;->mHasSetStartXY:Z

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyStyleHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyIconNeeded:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutHotseat$6;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyIconViewStylesRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/IconConfig;->loadHotseatSize()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyStyleHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayoutHotseat;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyIconNeeded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyIconNeeded:Z

    return p1
.end method

.method private animateAllChildren()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutHotseat;->needToAnimateChild(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v1

    :goto_0
    sget-boolean v3, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v3, :cond_2

    const-string v3, "CellLayoutHotseat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateAllChildren "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v3, v4, :cond_5

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_5
    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_6

    move-object v3, v0

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_6
    const/16 v3, 0x14a

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->animateIcon(Landroid/view/View;IZZ)Z

    goto :goto_2
.end method

.method private offsetXYOccurredByScaleAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 7

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/launcher2/AppIconView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, v3, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v5

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, v3, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v1, v4, v5

    sget-object v4, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    sub-int/2addr v6, v0

    aput v6, v4, v5

    sget-object v4, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    const/4 v5, 0x1

    aget v6, v4, v5

    sub-int/2addr v6, v1

    aput v6, v4, v5

    :cond_0
    return-void
.end method

.method private postReapplyIconViewStyles()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyStyleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyIconViewStylesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyStyleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyIconViewStylesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V
    .locals 12

    const v11, 0x7f080001

    const v10, 0x1ffffff

    const/4 v9, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v5

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1
    const/4 v0, 0x0

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_2
    invoke-static {p2, v1, v7}, Lcom/android/launcher2/Utilities;->changeTextColor(Landroid/view/View;II)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ThemeLoader;->loadAppsIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    :goto_3
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v8}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getHomeTextColor()I

    move-result v1

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getHomeTextShadowColor()I

    move-result v4

    if-eq v1, v10, :cond_2

    invoke-virtual {p2, v1}, Lcom/android/launcher2/AllappsIcon;->setTextColor(I)V

    :cond_2
    if-eq v4, v10, :cond_9

    invoke-virtual {p2}, Lcom/android/launcher2/AllappsIcon;->getShadowRadius()F

    move-result v7

    invoke-virtual {p2}, Lcom/android/launcher2/AllappsIcon;->getShadowDy()F

    move-result v8

    invoke-virtual {p2, v7, v9, v8, v4}, Lcom/android/launcher2/AllappsIcon;->setShadowLayer(FFFI)V

    :cond_3
    :goto_4
    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020079

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    invoke-virtual {p2, v0}, Lcom/android/launcher2/AllappsIcon;->setIcon(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_5

    invoke-virtual {p2, v11}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->changeAllAppsButtonTextSize()V

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f08001f

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f0800c8

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/android/launcher2/AllappsIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v7, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, v7}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v7, Lcom/android/launcher2/CellLayoutHotseat$4;

    invoke-direct {v7, p0}, Lcom/android/launcher2/CellLayoutHotseat$4;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    invoke-virtual {p2, v7}, Lcom/android/launcher2/AllappsIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/launcher2/CellLayoutHotseat$5;

    invoke-direct {v7, p0}, Lcom/android/launcher2/CellLayoutHotseat$5;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    invoke-virtual {p2, v7}, Lcom/android/launcher2/AllappsIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0d0000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto/16 :goto_1

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v8}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeAppIconWithBg()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    goto/16 :goto_3

    :cond_9
    const/high16 v7, 0x33000000

    invoke-virtual {p2, v9, v9, v9, v7}, Lcom/android/launcher2/AllappsIcon;->setShadowLayer(FFFI)V

    goto/16 :goto_4
.end method

.method private updateViewToLandscape()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 14

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v13, 0x1

    const/4 v12, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    const-string v0, "CellLayoutHotseat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v0, v7, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    check-cast v7, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v7}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    move-result v9

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    if-nez v0, :cond_2

    if-eq v9, v12, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    :cond_3
    sget-boolean v0, Lcom/android/launcher2/HomeView;->sIsBindHotseat:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HSAD"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_1
    sput-boolean v13, Lcom/android/launcher2/CellLayoutHotseat;->mIsTopListChanged:Z

    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyIconNeeded:Z

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->postReapplyIconViewStyles()V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v0

    const/16 v5, -0x65

    move v1, v12

    move v2, v12

    move v3, v13

    move v4, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/IconMoveContainer;->checkAndUpdateItemsPosition(IIIII)V

    :cond_6
    return v11

    :cond_7
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HSAD"

    const-string v3, "Folder"

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method public beginBind(I)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAnimateChildInstantly:Z

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_0
.end method

.method cellToPosition(II)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-eqz v1, :cond_0

    sub-int p1, v0, p2

    :cond_0
    return p1
.end method

.method public changeAllAppsButtonTextSize()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getReduceHotseatTextSize()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseatTextSize()I

    move-result v1

    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/AllappsIcon;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public endBind()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAnimateChildInstantly:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->reapplyIconViewStyles(Z)V

    return-void
.end method

.method existsEmptyCell()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAllappsIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method public getAllappsPos()I
    .locals 3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v1}, Lcom/android/launcher2/AllappsIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->cellToPosition(II)I

    move-result v1

    goto :goto_0
.end method

.method getCellCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v0

    goto :goto_0
.end method

.method getCellXFromPos(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method getCellYFromPos(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-eqz v1, :cond_0

    sub-int v1, v0, p1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainerType()J
    .locals 2

    const-wide/16 v0, -0x65

    return-wide v0
.end method

.method public getHotSeatDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    return v0
.end method

.method public inflateAllAppsIcon(Lcom/android/launcher2/Hotseat;Z)Lcom/android/launcher2/AllappsIcon;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030006

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AllappsIcon;

    iput-object v5, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    sget-object v5, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/IconConfig;->getInfo(Lcom/android/launcher2/IconConfig$TYPE;)Lcom/android/launcher2/IconInfo$Info;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/IconInfo$Info;->loadStyle(Landroid/content/Context;)V

    sget-object v5, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v5, v0}, Lcom/android/launcher2/IconConfig;->applyAppIconView(Lcom/android/launcher2/IconConfig$TYPE;Lcom/android/launcher2/AppIconView;)V

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-direct {p0, v3, v5, p2}, Lcom/android/launcher2/CellLayoutHotseat;->setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v6, v7, v7, v8, v8}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/IconConfig;->recycleViewStyles(Lcom/android/launcher2/IconConfig$TYPE;)V

    iget-object v5, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v5
.end method

.method public isFull()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v0

    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    goto :goto_1
.end method

.method makeEmptySpace()I
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    :cond_1
    sget-boolean v2, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "CellLayoutHotseat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeEmptySpace check:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v2

    if-ge v2, v0, :cond_9

    sget-boolean v2, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v2, :cond_3

    const-string v2, "CellLayoutHotseat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeEmptySpace count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-eqz v3, :cond_8

    :goto_3
    sub-int v1, v2, v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x2

    goto :goto_3

    :cond_9
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public moveAppIcon()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v4

    if-eq v3, v4, :cond_3

    iput v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutHotseat;->needToAnimateChild(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14a

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->animateIcon(Landroid/view/View;IZZ)Z

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected needToAnimateChild(Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Hotseat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 24

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Hotseat;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/DragState;

    move-object/from16 v7, v18

    :goto_1
    if-nez v12, :cond_2

    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v8

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_2
    iget-object v5, v7, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v0, v5, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    iget-object v0, v5, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    iget-object v0, v7, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    instance-of v0, v5, Lcom/android/launcher2/HomePendingItem;

    move/from16 v18, v0

    if-eqz v18, :cond_9

    :cond_3
    const/4 v9, 0x1

    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-static {v5}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    sget-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sDeltaOffset:Z

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher2/CellLayoutHotseat;->offsetXYOccurredByScaleAnimation(Lcom/android/launcher2/BaseItem;)V

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sDeltaOffset:Z

    :cond_5
    sget-object v18, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    const/16 v19, 0x0

    aget v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v15

    sget-object v18, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v17

    int-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mMinimumDistanceToDismissQuickOptions:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_6

    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sIsDraggingWithinQuickOptionsBounds:Z

    :cond_6
    sget-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sIsDraggingWithinQuickOptionsBounds:Z

    if-eqz v18, :cond_7

    iget-object v0, v7, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_8

    :cond_7
    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v18

    if-eqz v18, :cond_8

    const-string v18, "CellLayoutHotseat"

    const-string v19, "onDragEvent: Dismiss Quick Options Popup on ACTION_DROP."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    iget-object v0, v7, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_8

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v18

    if-eqz v18, :cond_8

    const-string v18, "CellLayoutHotseat"

    const-string v19, "onDragEvent: Dismiss Quick Options Popup on ACTION_DRAG_ENTERED."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    goto :goto_3

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->pointToCellExact(II[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    :cond_c
    invoke-virtual {v12, v7, v4, v6}, Lcom/android/launcher2/Hotseat;->checkHotSeatInteraction(Lcom/android/launcher2/DragState;ILandroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_10

    :cond_d
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v4, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    const/4 v8, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v18, v0

    if-nez v18, :cond_e

    instance-of v0, v6, Lcom/android/launcher2/FolderIconView;

    move/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v18, v6

    check-cast v18, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v18

    if-eqz v18, :cond_e

    check-cast v6, Lcom/android/launcher2/FolderIconView;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/launcher2/FolderIconView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v8

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->resetPreFolderBg()V

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x1

    goto :goto_4

    :cond_10
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    :cond_11
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/HomePendingItem;

    move/from16 v18, v0

    if-eqz v18, :cond_13

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/BaseItem;->getFromDND()Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_14
    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v4, v0, :cond_15

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    :cond_15
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v4, v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_17

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v4, v0, :cond_19

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    :cond_17
    packed-switch v4, :pswitch_data_0

    :cond_18
    :goto_5
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v8

    goto/16 :goto_0

    :cond_19
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v8

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v18

    if-eqz v18, :cond_18

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v18

    if-eqz v18, :cond_18

    sget-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->mHasSetStartXY:Z

    if-nez v18, :cond_18

    sget-object v18, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    sget-object v18, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    const/16 v19, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->mHasSetStartXY:Z

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sIsDraggingWithinQuickOptionsBounds:Z

    goto :goto_5

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->resetPreFolderBg()V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/launcher2/Hotseat;->setDragInContentArea(Z)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->cancelRealTimeReorder()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->clearDragOutlines()V

    const/4 v8, 0x1

    goto/16 :goto_0

    :pswitch_3
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->onEnd()V

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->resetPreFolderBg()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v18

    if-eqz v18, :cond_18

    sget-object v18, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    const/16 v19, 0x0

    sget-object v20, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    const/16 v21, 0x1

    const/16 v22, -0x1

    aput v22, v20, v21

    aput v22, v18, v19

    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sIsDraggingWithinQuickOptionsBounds:Z

    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sDeltaOffset:Z

    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->mHasSetStartXY:Z

    goto/16 :goto_5

    :pswitch_4
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mReorderImmediately:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/launcher2/Hotseat;->setDragInContentArea(Z)V

    goto/16 :goto_5

    :pswitch_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-static {v5}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v18

    if-eqz v18, :cond_18

    sget-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->mStateAnimationFinished:Z

    if-eqz v18, :cond_18

    iget-object v0, v7, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_1a

    iget-object v0, v7, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/CellLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_18

    :cond_1a
    sget-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sDeltaOffset:Z

    if-nez v18, :cond_1b

    const-string v18, "CellLayoutHotseat"

    const-string v19, "onDragEvent: Offset delta occurred by scale animation."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher2/CellLayoutHotseat;->offsetXYOccurredByScaleAnimation(Lcom/android/launcher2/BaseItem;)V

    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sDeltaOffset:Z

    :cond_1b
    sget-object v18, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    const/16 v19, 0x0

    aget v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v15

    sget-object v18, Lcom/android/launcher2/CellLayoutHotseat;->sDragStartXYHotseat:[I

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const-string v18, "CellLayoutHotseat"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CellLayoutHotseat.ACTION_DRAG_LOCATION: xDiff = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", yDiff = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mMinimumDistanceToDismissQuickOptions:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1c

    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sIsDraggingWithinQuickOptionsBounds:Z

    :cond_1c
    invoke-virtual {v5}, Lcom/android/launcher2/BaseItem;->getIconView()Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/AppIconView;

    sget-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->sIsDraggingWithinQuickOptionsBounds:Z

    if-nez v18, :cond_18

    invoke-virtual {v13}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v18

    if-eqz v18, :cond_18

    const-string v18, "CellLayoutHotseat"

    const-string v19, "onDragEvent: Dismiss Quick Options Popup on ACTION_DRAG_LOCATION."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    iget v0, v1, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getMoveAppsContainer()Lcom/android/launcher2/IconMoveContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/IconMoveContainer;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    move-object v0, v1

    :goto_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "CellLayoutHotseat"

    const-string v2, "onFolderIconViewDragEvent: Dismiss Quick Options Popup on ACTION_DROP."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBoosterWihtoutTimer()V

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->releaseTouchBooster()V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 21

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v12, v0, Landroid/content/res/Configuration;->orientation:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v2, v0, :cond_6

    const v18, 0x7f090234

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellWidth()I

    move-result v18

    move/from16 v0, v18

    if-eq v5, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellHeight()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/CellLayoutHotseat;->setCellSize(II)V

    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingRight()I

    move-result v19

    add-int v13, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingBottom()I

    move-result v19

    add-int v14, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellWidth()I

    move-result v18

    mul-int v10, v18, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellHeight()I

    move-result v18

    mul-int v11, v18, v3

    if-nez v16, :cond_1

    add-int v17, v10, v13

    :cond_1
    if-nez v8, :cond_2

    add-int v9, v11, v14

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v2, v0, :cond_3

    sub-int v18, v17, v10

    sub-int v18, v18, v13

    add-int/lit8 v19, v2, 0x1

    div-int v6, v18, v19

    if-gez v6, :cond_3

    const/4 v6, 0x0

    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v3, v0, :cond_4

    sub-int v18, v9, v11

    sub-int v18, v18, v14

    add-int/lit8 v19, v3, 0x1

    div-int v7, v18, v19

    if-gez v7, :cond_4

    const/4 v7, 0x0

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher2/CellLayoutHotseat;->setGaps(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->refreshCellDimension()V

    sget-boolean v18, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v18, :cond_5

    const-string v18, "CellLayoutHotseat"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "setGaps("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-super/range {p0 .. p2}, Lcom/android/launcher2/CellLayoutNoGap;->onMeasure(II)V

    return-void

    :cond_6
    const v18, 0x7f09012c

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v3, v0, :cond_8

    const v18, 0x7f090234

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellHeight()I

    move-result v18

    move/from16 v0, v18

    if-eq v4, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellWidth()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher2/CellLayoutHotseat;->setCellSize(II)V

    goto/16 :goto_1

    :cond_8
    const v18, 0x7f09012b

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_2
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onViewAddedToLayout(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    :cond_0
    return-void
.end method

.method realTimeReorder()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->findFirstEmptySpace()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsPos()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutHotseat$1;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->findFirstEmptySpace()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsPos()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    :cond_3
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderImmediately:Z

    goto :goto_0
.end method

.method public realTimeReorder(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/CellLayoutHotseat$2;-><init>(Lcom/android/launcher2/CellLayoutHotseat;I)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    goto :goto_0
.end method

.method public reapplyIconViewStyles(Z)V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v3

    :goto_0
    const-string v6, "CellLayoutHotseat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reapplyIconViewStyles : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher2/IconConfig;->changeHotseatSize(Landroid/content/Context;I)V

    sget-object v6, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v6}, Lcom/android/launcher2/IconConfig;->getInfo(Lcom/android/launcher2/IconConfig$TYPE;)Lcom/android/launcher2/IconInfo$Info;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/IconInfo$Info;->loadStyle(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v6

    invoke-static {v6}, Lcom/android/launcher2/LauncherApplication;->setHotseatGridSize(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_1
    if-ltz v5, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v6, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/FolderIconView;->setUseScaleAnimation(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v4, v9}, Lcom/android/launcher2/FolderIconView;->setUseScaleAnimation(Z)V

    sget-object v6, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v6, v4}, Lcom/android/launcher2/IconConfig;->applyFolderIconView(Lcom/android/launcher2/IconConfig$TYPE;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    :cond_0
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    goto :goto_0

    :cond_2
    instance-of v6, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppIconView;->setUseScaleAnimation(Z)V

    sget-object v6, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v6, v0}, Lcom/android/launcher2/IconConfig;->applyAppIconView(Lcom/android/launcher2/IconConfig$TYPE;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v6}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    :goto_3
    invoke-virtual {v0, v9}, Lcom/android/launcher2/AppIconView;->setUseScaleAnimation(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/android/launcher2/CellLayoutHotseat;->setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v6}, Lcom/android/launcher2/IconConfig;->recycleViewStyles(Lcom/android/launcher2/IconConfig$TYPE;)V

    return-void
.end method

.method public removeAllItems()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeEmptySpace()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    new-instance v1, Lcom/android/launcher2/CellLayoutHotseat$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/CellLayoutHotseat$3;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    if-eq v1, v0, :cond_0

    sget-boolean v1, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v1, :cond_5

    const-string v1, "CellLayoutHotseat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeEmptySpace count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-ge v1, v0, :cond_6

    iget v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->closeLayoutGap()V

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_2
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 7

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const-string v1, "CellLayoutHotseat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeItem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HSDT"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher2/CellLayoutHotseat;->mIsTopListChanged:Z

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReapplyIconNeeded:Z

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->postReapplyIconViewStyles()V

    return v0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HSDT"

    const-string v3, "Folder"

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    :cond_0
    return-void
.end method

.method public setGridSize(II)V
    .locals 3

    sget-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutHotseat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGridSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->updateViewToLandscape()V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->animateAllChildren()V

    return-void
.end method

.method public setHotSeatDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    return-void
.end method

.method public setup(ZI)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsRightPosition:Z

    iput p2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    return-void
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    instance-of v1, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    check-cast v0, Lcom/android/launcher2/HomeItem;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeItem;->setPrevPosition(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->show(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/CellLayoutNoGap;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto :goto_0
.end method
