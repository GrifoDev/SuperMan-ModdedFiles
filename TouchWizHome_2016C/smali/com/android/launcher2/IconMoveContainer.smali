.class public Lcom/android/launcher2/IconMoveContainer;
.super Landroid/widget/FrameLayout;
.source "IconMoveContainer.java"

# interfaces
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/IconMoveContainer$Scroller;
    }
.end annotation


# static fields
.field private static final CONCEPT_ADDITEM_TO_FIRST:Z = true

.field private static final CONCEPT_REVERT_REMAIN_TO_FOLDER:Z = true

.field public static final CONCEPT_SUPPORT_FOLDER_OPEN_STATE:Z = true

.field private static final CONCEPT_SUPPORT_REORDER:Z = true

.field private static final CONCEPT_UNLOAD_ORIGIN_POSITION:Z = true

.field private static final DEBUG:Z = true

.field public static final MOVE_APPS_ICON_TOP_PADDING:I = 0x3

.field public static final RECOVERY_TARGET_SCREEN:I = -0x7b

.field private static final TAG:Ljava/lang/String; = "IconMoveContainer"


# instance fields
.field private mCellGap:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mChangePage:Z

.field private mContainerHeight:I

.field private mContent:Lcom/android/launcher2/CellLayoutMoveApps;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimatorRes:I

.field private mDissolvedFolderList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDoingLoad:Z

.field private mDoingUnload:Z

.field private mEdgeMargin:I

.field private mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

.field private mHelpView_Needed:Z

.field private mHideAnimatorRes:I

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mIconSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntroText:Landroid/widget/TextView;

.field private mIsCancelMove:Z

.field private mIsFolderCloseComplete:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mItemViewDrawableFolderPadding:I

.field private mItemViewDrawablePadding:I

.field private mItemViewShowLabel:Z

.field private mLabelColor:I

.field private mLastChangePage:I

.field private mLastDisolveFolderTime:J

.field private mLastDropedItem:Lcom/android/launcher2/HomeItem;

.field private mMinGridX:I

.field private mScrollMargin:I

.field private mScrollStarted:Z

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mScroller:Lcom/android/launcher2/IconMoveContainer$Scroller;

.field private mShowAnimatorRes:I

.field private mTextSize:I

.field private mTopGap:I

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f060023

    iput v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHideAnimatorRes:I

    const v0, 0x7f060024

    iput v0, p0, Lcom/android/launcher2/IconMoveContainer;->mShowAnimatorRes:I

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mEdgeMargin:I

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollMargin:I

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewDrawablePadding:I

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewDrawableFolderPadding:I

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewShowLabel:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/launcher2/IconMoveContainer;->mLabelColor:I

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mIsCancelMove:Z

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mIsFolderCloseComplete:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mDoingLoad:Z

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView_Needed:Z

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mChangePage:Z

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mLastChangePage:I

    new-instance v0, Lcom/android/launcher2/IconMoveContainer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/IconMoveContainer$1;-><init>(Lcom/android/launcher2/IconMoveContainer;)V

    iput-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollStarted:Z

    new-instance v0, Lcom/android/launcher2/IconMoveContainer$Scroller;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/IconMoveContainer$Scroller;-><init>(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/IconMoveContainer$1;)V

    iput-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mScroller:Lcom/android/launcher2/IconMoveContainer$Scroller;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/IconMoveContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f060023

    iput v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHideAnimatorRes:I

    const v0, 0x7f060024

    iput v0, p0, Lcom/android/launcher2/IconMoveContainer;->mShowAnimatorRes:I

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mEdgeMargin:I

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollMargin:I

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewDrawablePadding:I

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewDrawableFolderPadding:I

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewShowLabel:Z

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/launcher2/IconMoveContainer;->mLabelColor:I

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mIsCancelMove:Z

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mIsFolderCloseComplete:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mDoingLoad:Z

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView_Needed:Z

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mChangePage:Z

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mLastChangePage:I

    new-instance v0, Lcom/android/launcher2/IconMoveContainer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/IconMoveContainer$1;-><init>(Lcom/android/launcher2/IconMoveContainer;)V

    iput-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollStarted:Z

    new-instance v0, Lcom/android/launcher2/IconMoveContainer$Scroller;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/IconMoveContainer$Scroller;-><init>(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/IconMoveContainer$1;)V

    iput-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mScroller:Lcom/android/launcher2/IconMoveContainer$Scroller;

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/IconMoveContainer;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/IconMoveContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer;->mIconSize:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/IconMoveContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer;->mLabelColor:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/IconMoveContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewDrawableFolderPadding:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/IconMoveContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewDrawablePadding:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/IconMoveContainer;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/IconMoveContainer;->getFolderItemById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/IconMoveContainer;->dissolveFolder(Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/launcher2/IconMoveContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/IconMoveContainer;->mDoingLoad:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/launcher2/IconMoveContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeItem;IIIII)Z
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/IconMoveContainer;->needToChangePoistion(Lcom/android/launcher2/HomeItem;IIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/IconMoveContainer;->updateItemsPositionToDeskTop(Lcom/android/launcher2/HomeItem;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/IconMoveContainer;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/IconMoveContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer;->mTextSize:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/IconMoveContainer;->removeItemInDatabase(Lcom/android/launcher2/HomeItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/CellLayoutMoveApps;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/IconMoveContainer;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/IconMoveContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer;->mCellWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/IconMoveContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer;->mCellGap:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/IconMoveContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewShowLabel:Z

    return v0
.end method

.method private addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/IconMoveContainer;->addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;Z)V

    return-void
.end method

.method private addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;Z)V
    .locals 10

    const-wide/16 v8, -0x64

    const/4 v1, 0x1

    const/4 v5, 0x0

    instance-of v6, p1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ge v6, v1, :cond_1

    const-string v5, "IconMoveContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "It can\'t be 0 screen due to zero page preserve : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iput-wide v8, v0, Lcom/android/launcher2/HomeItem;->container:J

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getOccupied()[[Z

    move-result-object v3

    if-nez v3, :cond_5

    :goto_1
    if-eqz p3, :cond_3

    if-nez v1, :cond_3

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    aget-object v6, v3, v6

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    aput-boolean v5, v6, v7

    :cond_3
    if-nez v1, :cond_4

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    aget-object v6, v3, v6

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    aget-boolean v6, v6, v7

    if-nez v6, :cond_4

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v6, v7}, Lcom/android/launcher2/CellLayout;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v6

    if-eqz v6, :cond_7

    :cond_4
    iget v4, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/IconMoveContainer;->findEmptyCellOnDB(Lcom/android/launcher2/HomeItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v4, v6, :cond_6

    invoke-virtual {p1, p2}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    :cond_5
    move v1, v5

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v7, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-direct {p0, v2, p2, v5}, Lcom/android/launcher2/IconMoveContainer;->addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;Z)V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    const-string v5, "IconMoveContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is added on celllayout : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private addItemToDatabase(Lcom/android/launcher2/HomeItem;JIII)V
    .locals 12

    iget v9, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v10, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v8, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x64

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    const-string v0, "IconMoveContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It can\'t be 0 screen due to zero page preserve : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    iput v9, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v10, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v8, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    goto :goto_0
.end method

.method private dissolveFolder(Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V
    .locals 12

    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/HomeItem;

    iget-wide v0, p1, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v0, v10, Lcom/android/launcher2/HomeItem;->container:J

    iget v0, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v0, v10, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v0, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iput v0, v10, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v0, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v0, v10, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-wide v0, p1, Lcom/android/launcher2/HomeFolderItem;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v6, p1}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8, v10}, Lcom/android/launcher2/Hotseat;->addItem(Lcom/android/launcher2/HomeItem;)Z

    iget-object v0, v6, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_0
    const-string v0, "IconMoveContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preserve folder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is added on DB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Page : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher2/HomeItem$PosistionBackup;

    invoke-direct {v0, p1}, Lcom/android/launcher2/HomeItem$PosistionBackup;-><init>(Lcom/android/launcher2/HomeItem;)V

    iput-object v0, p1, Lcom/android/launcher2/HomeFolderItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    const/16 v0, -0x7b

    iput v0, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {p1, v10}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    iget v2, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iget v3, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iget v4, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V

    iget v2, v10, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v3, v10, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v4, v10, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V

    invoke-virtual {p1, v10}, Lcom/android/launcher2/HomeFolderItem;->setRemainItem(Lcom/android/launcher2/HomeItem;)V

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v0, v10, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayoutHotseat;->reapplyIconViewStyles(Z)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/IconMoveContainer;->mLastDisolveFolderTime:J

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v0

    if-ge v9, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6, p1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v6, v10, v0}, Lcom/android/launcher2/IconMoveContainer;->addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;Z)V

    iget-object v0, v6, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private findEmptyCell(Lcom/android/launcher2/CellLayout;[I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x1

    aput v3, p2, v0

    aput v3, p2, v1

    invoke-virtual {p1, p2, v0, v0}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    aget v2, p2, v1

    if-le v2, v3, :cond_0

    aget v2, p2, v0

    if-le v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private findEmptyCellOnDB(Lcom/android/launcher2/HomeItem;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/LauncherModel;->getLastItemScreen(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v2, v3, v3}, Lcom/android/launcher2/LauncherModel;->findLastEmptyCell(Landroid/content/Context;[IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    aget v4, v1, v4

    iput v4, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    aget v4, v1, v3

    iput v4, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v2, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private getDissolvedFolderParent(Lcom/android/launcher2/HomeFolderItem;)Lcom/android/launcher2/CellLayout;
    .locals 12

    const-wide/16 v10, -0x64

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->getRemainItem()Lcom/android/launcher2/HomeItem;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v6, v1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v6, v6, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iput v6, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iget-object v6, v1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v6, v6, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    iput v6, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iget-object v6, v1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v6, v6, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    iput v6, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    :goto_0
    const/4 v3, 0x0

    check-cast v3, [[Z

    const/4 v2, 0x0

    iget-wide v6, p1, Lcom/android/launcher2/HomeFolderItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    iget-wide v6, p1, Lcom/android/launcher2/HomeFolderItem;->container:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getOccupied()[[Z

    move-result-object v3

    if-eqz v3, :cond_7

    iget v6, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    aget-object v6, v3, v6

    iget v7, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    aget-boolean v6, v6, v7

    if-nez v6, :cond_0

    iget v6, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iget v7, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    invoke-virtual {v0, v6, v7}, Lcom/android/launcher2/CellLayout;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v6

    if-eqz v6, :cond_6

    :cond_0
    move v2, v5

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/launcher2/IconMoveContainer;->findEmptyCellOnDB(Lcom/android/launcher2/HomeItem;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "IconMoveContainer"

    const-string v7, "Can be find emptyCellOnDB. So, Resolved folder will be added on new page."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v4, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v4, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    :goto_3
    iput-boolean v5, p0, Lcom/android/launcher2/IconMoveContainer;->mChangePage:Z

    iget v4, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v4, p0, Lcom/android/launcher2/IconMoveContainer;->mLastChangePage:I

    if-nez v0, :cond_2

    const-string v4, "IconMoveContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finally, Can\'t get disolved folder cell-layout. : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    iget-object v6, p1, Lcom/android/launcher2/HomeFolderItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v6, v6, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iput v6, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iget-object v6, p1, Lcom/android/launcher2/HomeFolderItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v6, v6, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    iput v6, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iget-object v6, p1, Lcom/android/launcher2/HomeFolderItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v6, v6, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    iput v6, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    goto/16 :goto_0

    :cond_4
    iget v6, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iget-object v7, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v7

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v7, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v6, v7}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto/16 :goto_1

    :cond_6
    move v2, v4

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Hotseat;->canAcceptAddItem()Z

    move-result v6

    if-nez v6, :cond_9

    move v2, v5

    :goto_4
    if-eqz v2, :cond_1

    iput-wide v10, p1, Lcom/android/launcher2/HomeFolderItem;->container:J

    iget-object v6, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v6

    iput v6, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    goto/16 :goto_2

    :cond_9
    move v2, v4

    goto :goto_4

    :cond_a
    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v6, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto/16 :goto_3
.end method

.method private getEmptyPositionInDatabase([II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    if-le p2, v0, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v4

    if-ge p2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v4

    if-eqz v4, :cond_1

    aput p2, p1, v5

    :goto_1
    return-void

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, v1}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v4

    if-eqz v4, :cond_2

    aput v1, p1, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    aput v3, p1, v2

    const/4 v2, 0x1

    aput v3, p1, v2

    goto :goto_1
.end method

.method private getFolderItemById(J)Lcom/android/launcher2/HomeFolderItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-static {p1, p2}, Lcom/android/launcher2/HomeView;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v0

    return-object v0
.end method

.method private getLastPositionItemInfo(Ljava/lang/String;)Lcom/android/launcher2/HomeItem;
    .locals 11

    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container=? AND _id NOT IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v10, -0x64

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const-string v5, "screen DESC, cellY+spanY DESC, cellX+spanX DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherModel;->getHomeItemById(J)Lcom/android/launcher2/HomeItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v9

    :catch_0
    move-exception v7

    :try_start_1
    const-string v1, "IconMoveContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastPositionItemInfo exception, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private getNextFocusView(I)Landroid/view/View;
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildCount()I

    move-result v2

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutMoveApps;->allItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    add-int/lit8 v4, p1, 0x1

    if-ne v3, v4, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasRemainItemToFolder(Lcom/android/launcher2/HomeFolderItem;)Z
    .locals 10

    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->getRemainItem()Lcom/android/launcher2/HomeItem;

    move-result-object v1

    const-string v0, "IconMoveContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recorvery dissolvedFolder("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->isLockedFolder()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->isLockedFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/launcher2/FolderLock;->lockFolder(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x64

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    :cond_1
    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v2, p1, Lcom/android/launcher2/HomeFolderItem;->container:J

    iget-object v0, p1, Lcom/android/launcher2/HomeFolderItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v2, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    iget-object v0, p1, Lcom/android/launcher2/HomeFolderItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v2, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iget-object v0, p1, Lcom/android/launcher2/HomeFolderItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v2, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v2, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_2
    iget-wide v2, p1, Lcom/android/launcher2/HomeFolderItem;->mId:J

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/HomeFolderItem;->addItemAtSlient(Lcom/android/launcher2/BaseItem;I)V

    iget v2, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v3, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v4, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeFolderItem;->setRemainItem(Lcom/android/launcher2/HomeItem;)V

    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v0

    if-ge v9, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, v9}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7, v1}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToChangePoistion(Lcom/android/launcher2/HomeItem;IIIII)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/IconMoveContainer;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "IconMoveContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This item is already unloaded. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v2, v2, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    if-ne v2, p6, :cond_0

    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v2, v2, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    if-ne v2, p2, :cond_2

    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v2, v2, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    if-ne v2, p3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-gt p4, v1, :cond_3

    if-le p5, v1, :cond_0

    :cond_3
    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v2, v2, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    if-lt v2, p2, :cond_0

    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v2, v2, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    add-int v3, p2, p4

    if-gt v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v2, v2, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    if-lt v2, p3, :cond_0

    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v2, v2, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    add-int v3, p3, p5

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private removeItemInDatabase(Lcom/android/launcher2/HomeItem;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->mId:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "IconMoveContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete item that doesn\'t have child : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/HomeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestNextViewFocus(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    move-object v0, p1

    new-instance v1, Lcom/android/launcher2/IconMoveContainer$6;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/IconMoveContainer$6;-><init>(Lcom/android/launcher2/IconMoveContainer;Landroid/view/View;)V

    const-wide/16 v2, 0x17c

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/IconMoveContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutMoveApps;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private scrollIfNeeded(Landroid/view/DragEvent;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMoveApps;->isScrollable()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollMargin:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mScroller:Lcom/android/launcher2/IconMoveContainer$Scroller;

    invoke-virtual {v2}, Lcom/android/launcher2/IconMoveContainer$Scroller;->scrollLeft()V

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollMargin:I

    sub-int v0, v4, v5

    int-to-float v4, v0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mScroller:Lcom/android/launcher2/IconMoveContainer$Scroller;

    invoke-virtual {v2}, Lcom/android/launcher2/IconMoveContainer$Scroller;->scrollRight()V

    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mScroller:Lcom/android/launcher2/IconMoveContainer$Scroller;

    invoke-virtual {v3}, Lcom/android/launcher2/IconMoveContainer$Scroller;->unQueue()V

    goto :goto_0
.end method

.method private unloadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;ZLjava/util/ArrayList;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher2/BaseItem;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    const-string v4, "IconMoveContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unloadItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", doingUnload : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z

    move-object/from16 v0, p2

    instance-of v4, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/IconMoveContainer;->mIsCancelMove:Z

    move/from16 v31, v0

    move-object/from16 v5, p2

    check-cast v5, Lcom/android/launcher2/HomeItem;

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v29, v0

    fill-array-data v29, :array_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v26

    instance-of v4, v5, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_1

    if-eqz v26, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f090087

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z

    goto :goto_0

    :cond_1
    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/launcher2/IconMoveContainer;->getFolderItemById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v17

    if-eqz v26, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isLockedApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->lockApp(Lcom/android/launcher2/BaseItem;)V

    :cond_2
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeFolderItem;->isLockedFolder()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_c

    const/16 v20, 0x1

    :cond_3
    :goto_2
    if-eqz v20, :cond_4

    if-nez v21, :cond_4

    if-nez p3, :cond_4

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderHomeItem(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;)V

    :cond_4
    if-eqz p3, :cond_d

    const/16 v25, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/launcher2/CellLayoutMoveApps;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    if-nez v25, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v4

    if-lez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v25

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v4

    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v16

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout;

    const/16 v27, 0x0

    const/4 v13, 0x0

    if-eqz v31, :cond_6

    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_10

    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/launcher2/IconMoveContainer;->getFolderItemById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v4

    if-nez v4, :cond_f

    const-wide/16 v6, -0x1

    move-object/from16 v0, p2

    iput-wide v6, v0, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v6, -0x64

    iput-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    :cond_6
    :goto_5
    if-eqz p3, :cond_7

    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v4, v6, v8

    if-eqz v4, :cond_7

    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v4, v6, v8

    if-nez v4, :cond_8

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v4, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v6

    if-ne v4, v6, :cond_8

    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/launcher2/BaseItem;->setNeetToIconVI(Z)V

    :cond_8
    if-nez p3, :cond_13

    if-eqz v26, :cond_13

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Folder;->getContentViewOfLastPage()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Folder;->getContainerType()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v4

    iput v4, v5, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v4, v5, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v14, v4}, Lcom/android/launcher2/CellLayoutNoGap;->getGlobalPositionForFolder(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/launcher2/HomeItem;->setPosition(I)V

    invoke-virtual {v14, v5}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    instance-of v4, v14, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v4, :cond_9

    move-object v4, v14

    check-cast v4, Lcom/android/launcher2/CellLayoutFolder;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutFolder;->moveToLastPage()V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    iget v8, v5, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static/range {v4 .. v12}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/launcher2/IconMoveContainer;->requestNextViewFocus(Landroid/view/View;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z

    goto/16 :goto_0

    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_d
    iget v4, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/IconMoveContainer;->getNextFocusView(I)Landroid/view/View;

    move-result-object v25

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v16

    goto/16 :goto_4

    :cond_f
    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_10
    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v4, v6, v8

    if-nez v4, :cond_12

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v6, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    :goto_6
    if-le v6, v4, :cond_12

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v4, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    const/4 v6, -0x1

    if-le v4, v6, :cond_12

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v4, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    const/4 v6, -0x1

    if-le v4, v6, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v6, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v6, v6, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Lcom/android/launcher2/CellLayout;

    if-eqz v27, :cond_6

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v4, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iget-object v6, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v6, v6, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/CellLayout;->getItemAt(II)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_11
    const/4 v4, -0x1

    goto :goto_6

    :cond_12
    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v4, v6, v8

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Hotseat;->canAcceptAddItem()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_13
    if-nez v13, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v15, v1}, Lcom/android/launcher2/IconMoveContainer;->findEmptyCell(Lcom/android/launcher2/CellLayout;[I)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_14
    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_17

    if-eqz v13, :cond_17

    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/launcher2/IconMoveContainer;->getFolderItemById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v4, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v4, 0x0

    iput v4, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v4}, Lcom/android/launcher2/HomeFolderItem;->addItemAtSlient(Lcom/android/launcher2/BaseItem;I)V

    if-eqz p3, :cond_16

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, p4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget v6, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v7, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v8, v5, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/launcher2/IconMoveContainer;->requestNextViewFocus(Landroid/view/View;)V

    if-nez v13, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v6, -0x64

    iget v8, v5, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v9, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v10, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static/range {v4 .. v12}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    const/4 v4, 0x0

    aget v7, v29, v4

    const/4 v4, 0x1

    aget v8, v29, v4

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher2/IconMoveContainer;->checkAndUpdateItemsPosition(IIIII)V

    :goto_8
    const/4 v4, 0x0

    iput-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    goto/16 :goto_0

    :cond_16
    iget v6, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v7, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v8, v5, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    goto :goto_7

    :cond_17
    if-eqz v13, :cond_18

    if-eqz v27, :cond_18

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v4, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    move-object/from16 v0, p2

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v4, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iput v4, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v4, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    iput v4, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/IconMoveContainer;->addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;Z)V

    goto :goto_7

    :cond_18
    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v4, 0x0

    aget v4, v29, v4

    iput v4, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v4, 0x1

    aget v4, v29, v4

    iput v4, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    iget-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v4, v6, v8

    if-nez v4, :cond_19

    const-wide/16 v6, -0x64

    iput-wide v6, v5, Lcom/android/launcher2/HomeItem;->container:J

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v1}, Lcom/android/launcher2/IconMoveContainer;->addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_7

    :cond_1a
    move/from16 v24, v16

    const/16 v30, 0x0

    add-int/lit8 v19, v24, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v15, v1}, Lcom/android/launcher2/IconMoveContainer;->findEmptyCell(Lcom/android/launcher2/CellLayout;[I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move/from16 v24, v19

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v4, 0x0

    aget v4, v29, v4

    iput v4, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v4, 0x1

    aget v4, v29, v4

    iput v4, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    const/16 v30, 0x1

    :cond_1b
    if-nez v30, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/launcher2/Workspace;->newPage(Z)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v4, 0x0

    iput v4, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v4, 0x0

    iput v4, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout;

    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v1}, Lcom/android/launcher2/IconMoveContainer;->addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;)V

    if-eqz p3, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f09000a

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    :cond_1d
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_a

    :cond_1f
    move/from16 v23, v24

    new-instance v4, Lcom/android/launcher2/IconMoveContainer$5;

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v4, v0, v1}, Lcom/android/launcher2/IconMoveContainer$5;-><init>(Lcom/android/launcher2/IconMoveContainer;I)V

    sget v6, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    int-to-long v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/launcher2/IconMoveContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z

    goto/16 :goto_8

    :cond_21
    const-string v4, "IconMoveContainer"

    const-string v6, "HomeItem is accept only."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V
    .locals 6

    new-instance v0, Lcom/android/launcher2/IconMoveContainer$9;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/IconMoveContainer$9;-><init>(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeItem;III)V

    if-eqz p5, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :goto_0
    const-string v1, "IconMoveContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replace item place to protect over-wrapping : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/HomeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " page : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private updateItemsPositionToDeskTop(Lcom/android/launcher2/HomeItem;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->getLastItemScreen(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v1, v1, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    invoke-static {v0, v9, v1, v10, v10}, Lcom/android/launcher2/LauncherModel;->findLastEmptyCell(Landroid/content/Context;[IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    aget v2, v9, v5

    aget v3, v9, v10

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v4, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    aget v1, v9, v5

    iput v1, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    aget v1, v9, v10

    iput v1, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    invoke-virtual {v0, v10}, Lcom/android/launcher2/HomeItem$PosistionBackup;->setNeedRearrange(Z)V

    :goto_0
    iput-boolean v10, p0, Lcom/android/launcher2/IconMoveContainer;->mChangePage:Z

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v0, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    iput v0, p0, Lcom/android/launcher2/IconMoveContainer;->mLastChangePage:I

    return-void

    :cond_0
    const-string v0, "IconMoveContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It will be updated by itself. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/HomeItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/launcher2/HomeItem$PosistionBackup;

    invoke-direct {v0, p1}, Lcom/android/launcher2/HomeItem$PosistionBackup;-><init>(Lcom/android/launcher2/HomeItem;)V

    iput-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    :cond_2
    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iput v5, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iput v5, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v1, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    invoke-virtual {v0, v10}, Lcom/android/launcher2/HomeItem$PosistionBackup;->setNeedRearrange(Z)V

    iget-object v0, p1, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v7, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    move-object v3, p0

    move-object v4, p1

    move v6, v5

    move v8, v5

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V

    goto :goto_0

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private updateLayout()V
    .locals 9

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v5, p0, Lcom/android/launcher2/IconMoveContainer;->mEdgeMargin:I

    iget v6, p0, Lcom/android/launcher2/IconMoveContainer;->mTopGap:I

    iget v7, p0, Lcom/android/launcher2/IconMoveContainer;->mEdgeMargin:I

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/launcher2/CellLayoutMoveApps;->setPaddingRelative(IIII)V

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v5, p0, Lcom/android/launcher2/IconMoveContainer;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/IconMoveContainer;->mCellHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/CellLayoutMoveApps;->setCellSize(II)V

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v5, p0, Lcom/android/launcher2/IconMoveContainer;->mIconSize:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutMoveApps;->setIconSize(I)V

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v5, p0, Lcom/android/launcher2/IconMoveContainer;->mMinGridX:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutMoveApps;->setMinimunGridSize(I)V

    iget-object v5, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v4

    iget v6, p0, Lcom/android/launcher2/IconMoveContainer;->mMinGridX:I

    if-le v4, v6, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v4

    :goto_0
    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher2/CellLayoutMoveApps;->setGridSize(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Hotseat;->isRightPosition()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0128

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v4, v1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    iget v4, p0, Lcom/android/launcher2/IconMoveContainer;->mContainerHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/IconMoveContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget v4, p0, Lcom/android/launcher2/IconMoveContainer;->mMinGridX:I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized bulkUnload()V
    .locals 39

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/launcher2/CellLayoutMoveApps;->setBulkUnloadMode(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v15

    const/4 v4, 0x1

    if-ge v15, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION()Landroid/net/Uri;

    move-result-object v4

    const-string v8, "screen=-123"

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutMoveApps;->allItems()Ljava/util/List;

    move-result-object v26

    new-instance v36, Lcom/android/launcher2/HomeItem;

    invoke-direct/range {v36 .. v36}, Lcom/android/launcher2/HomeItem;-><init>()V

    monitor-enter v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/BaseItem;

    if-eqz v25, :cond_2

    move-object/from16 v0, v25

    check-cast v0, Lcom/android/launcher2/HomeItem;

    move-object v5, v0

    if-eqz v5, :cond_2

    iget-object v8, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    if-eqz v8, :cond_2

    iget-wide v0, v5, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v28, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v28, v10

    if-lez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/HomeFolderItem;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, v36

    if-eq v8, v0, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher2/IconMoveContainer;->hasRemainItemToFolder(Lcom/android/launcher2/HomeFolderItem;)Z

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_3
    :try_start_4
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher2/IconMoveContainer;->hasRemainItemToFolder(Lcom/android/launcher2/HomeFolderItem;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v9}, Lcom/android/launcher2/HomeFolderItem;->getRemainItem()Lcom/android/launcher2/HomeItem;

    move-result-object v10

    if-ne v10, v5, :cond_6

    iget-wide v10, v9, Lcom/android/launcher2/HomeFolderItem;->mId:J

    iput-wide v10, v5, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    const-string v18, ""

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/BaseItem;

    if-eqz v25, :cond_9

    move-object/from16 v0, v25

    check-cast v0, Lcom/android/launcher2/HomeItem;

    move-object v5, v0

    iget-object v8, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    if-eqz v8, :cond_9

    iget-object v8, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeItem$PosistionBackup;->isNeedRearrange()Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v5, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    iget-wide v10, v5, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-lez v8, :cond_9

    iget-wide v10, v5, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-wide v10, v5, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v5, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "-1"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/launcher2/IconMoveContainer;->getLastPositionItemInfo(Ljava/lang/String;)Lcom/android/launcher2/HomeItem;

    move-result-object v30

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v23, v0

    const/16 v37, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    if-eqz v30, :cond_c

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v37, v0

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v30

    iget v8, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v4, v8

    add-int/lit8 v6, v4, -0x1

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v30

    iget v8, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v4, v8

    add-int/lit8 v7, v4, -0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v0, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    move/from16 v37, v0

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v6, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v7, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v31, v4, -0x1

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v30, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    const/4 v4, 0x0

    aget v4, v23, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v6, v4, :cond_e

    add-int/lit8 v6, v6, 0x1

    :goto_4
    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    move/from16 v0, v37

    iput v0, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iput v6, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iput v7, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    iget v8, v4, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V

    move/from16 v0, v37

    move/from16 v1, v31

    if-le v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v8, 0x0

    move/from16 v0, v37

    invoke-virtual {v4, v0, v8}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    add-int/lit8 v31, v31, 0x1

    :cond_d
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/IconMoveContainer;->mChangePage:Z

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/IconMoveContainer;->mLastChangePage:I

    goto :goto_3

    :cond_e
    const/4 v4, 0x1

    aget v4, v23, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v7, v4, :cond_f

    const/4 v6, 0x0

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_f
    add-int/lit8 v37, v37, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_4

    :cond_10
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/HomeFolderItem;

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeItem;

    if-eqz v9, :cond_11

    if-eqz v5, :cond_11

    move-object/from16 v0, v36

    if-eq v5, v0, :cond_15

    const/4 v8, 0x0

    aget v8, v23, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_13

    add-int/lit8 v6, v6, 0x1

    :goto_6
    iget-wide v10, v9, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v10, v5, Lcom/android/launcher2/HomeItem;->container:J

    iput v6, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v7, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, v37

    iput v0, v5, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v0, v37

    move/from16 v1, v31

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v10, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0, v10}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    add-int/lit8 v31, v31, 0x1

    :cond_12
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/launcher2/IconMoveContainer;->mChangePage:Z

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/IconMoveContainer;->mLastChangePage:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    iget-wide v10, v5, Lcom/android/launcher2/HomeItem;->container:J

    iget v12, v5, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v13, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v14, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v8, p0

    move-object v9, v5

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher2/IconMoveContainer;->addItemToDatabase(Lcom/android/launcher2/HomeItem;JIII)V

    goto :goto_5

    :cond_13
    const/4 v8, 0x1

    aget v8, v23, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_14

    const/4 v6, 0x0

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_14
    add-int/lit8 v37, v37, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_6

    :cond_15
    const/4 v8, 0x1

    invoke-virtual {v9, v8}, Lcom/android/launcher2/HomeFolderItem;->setNeetToIconVI(Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher2/IconMoveContainer;->getDissolvedFolderParent(Lcom/android/launcher2/HomeFolderItem;)Lcom/android/launcher2/CellLayout;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/launcher2/IconMoveContainer;->addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;)V

    iget v10, v9, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iget v11, v9, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iget v12, v9, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    const/4 v13, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_17
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v9, :cond_17

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v9}, Lcom/android/launcher2/HomeFolderItem;->getRemainItem()Lcom/android/launcher2/HomeItem;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v9}, Lcom/android/launcher2/HomeFolderItem;->getRemainItem()Lcom/android/launcher2/HomeItem;

    move-result-object v8

    const-wide/16 v10, -0x64

    iput-wide v10, v8, Lcom/android/launcher2/HomeItem;->container:J

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_7

    :cond_19
    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move/from16 v24, v15

    :goto_8
    if-lez v24, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    add-int/lit8 v8, v24, -0x1

    invoke-virtual {v4, v8}, Lcom/android/launcher2/CellLayoutMoveApps;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v38

    if-eqz v38, :cond_1b

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, v25

    instance-of v4, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v25

    check-cast v0, Lcom/android/launcher2/HomeItem;

    move-object v5, v0

    if-eqz v5, :cond_1a

    iget-object v4, v5, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    if-nez v4, :cond_1c

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher2/CellLayoutMoveApps;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_1b
    :goto_9
    add-int/lit8 v24, v24, -0x1

    goto :goto_8

    :cond_1c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/launcher2/IconMoveContainer;->unloadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;ZLjava/util/ArrayList;)V

    goto :goto_9

    :cond_1d
    new-instance v4, Lcom/android/launcher2/IconMoveContainer$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Lcom/android/launcher2/IconMoveContainer$7;-><init>(Lcom/android/launcher2/IconMoveContainer;Ljava/util/ArrayList;)V

    sget v8, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    int-to-long v10, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v11}, Lcom/android/launcher2/IconMoveContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayoutHotseat;->findAllOccupiedCells()[Z

    move-result-object v32

    const/16 v35, 0x0

    const/16 v27, 0x0

    :goto_a
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_1e

    aget-boolean v4, v32, v27

    if-nez v4, :cond_1f

    const/16 v35, 0x1

    :cond_1e
    if-eqz v35, :cond_20

    const/16 v33, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayoutHotseat;->allItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    move-object/from16 v0, v25

    check-cast v0, Lcom/android/launcher2/HomeItem;

    move-object v4, v0

    move/from16 v0, v33

    iput v0, v4, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->updateItem(Lcom/android/launcher2/BaseItem;)V

    add-int/lit8 v33, v33, 0x1

    goto :goto_b

    :cond_1f
    add-int/lit8 v27, v27, 0x1

    goto :goto_a

    :cond_20
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayoutHotseat;->cancelAllFolderAnimations()V

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/IconMoveContainer;->mChangePage:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/IconMoveContainer;->mLastChangePage:I

    invoke-virtual {v4, v8}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/IconMoveContainer;->mChangePage:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/IconMoveContainer;->mLastChangePage:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method public declared-synchronized checkAndUpdateItemsPosition(IIIII)V
    .locals 7

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageChildCount()I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v1, v1, Lcom/android/launcher2/CellLayoutMoveApps;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "IconMoveContainer"

    const-string v2, "It will be updated by itself."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mDoingUnload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "IconMoveContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndUpdateItemsPosition : items ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " page : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher2/IconMoveContainer$8;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/IconMoveContainer$8;-><init>(Lcom/android/launcher2/IconMoveContainer;IIIII)V

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public clearItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    return-void
.end method

.method public closeHelpView()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-virtual {v0}, Lcom/android/launcher2/IconMoveContainerHelpView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-virtual {v0}, Lcom/android/launcher2/IconMoveContainerHelpView;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.launcher.prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string v3, "MoveApps_Help_Shown"

    const/4 v4, 0x0

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/IconMoveContainer;->mHelpView_Needed:Z

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/IconMoveContainer;->mHelpView_Needed:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p0

    invoke-direct {v3, v4, v0, v5}, Lcom/android/launcher2/IconMoveContainerHelpView;-><init>(Landroid/content/Context;Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/Workspace;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-virtual {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->show()V

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/IconMoveContainer;->mIsCancelMove:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/IconMoveContainer;->mShowAnimatorRes:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/IconMoveContainer;->mCurrentAnimatorRes:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/IconMoveContainer;->setAlpha(F)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/IconMoveContainer;->setVisibility(I)V

    move-object/from16 v3, p4

    check-cast v3, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/IconMoveContainer;->mLastDropedItem:Lcom/android/launcher2/HomeItem;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/launcher2/IconMoveContainer;->mLastDisolveFolderTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/IconMoveContainer;->mDissolvedFolderList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->removeAddItemPlusButton()V

    :cond_3
    if-eqz p4, :cond_4

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/android/launcher2/BaseItem;->setNeetToIconVI(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/16 v4, 0x190

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->setIconVIStartDelay(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/IconMoveContainer;->mCurrentAnimatorRes:I

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/FestivalPageManager;->hideFestivalPages()V

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/IconMoveContainer;->mHelpView_Needed:Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    const-string v4, "MVAP"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_6
    :goto_0
    return-void

    :cond_7
    sget-object v3, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_a

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->closeHelpView()Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/IconMoveContainer;->mIsCancelMove:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/IconMoveContainer;->mHideAnimatorRes:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/IconMoveContainer;->mCurrentAnimatorRes:I

    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v12, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v3, v3, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v12}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06002a

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_8
    const-wide/16 v4, 0xc8

    invoke-virtual {v11, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher2/IconMoveContainer$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher2/IconMoveContainer$3;-><init>(Lcom/android/launcher2/IconMoveContainer;)V

    invoke-virtual {v11, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/IconMoveContainer;->mCurrentAnimatorRes:I

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v14, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v4, 0x96

    invoke-virtual {v14, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v13}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getFestivalPageManager()Lcom/android/launcher2/FestivalPageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/FestivalPageManager;->showFestivalPages()V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    iget-object v10, v3, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Folder;->repositionOpenFolder(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->requestFocus()Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconMoveContainer;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/IconMoveContainer;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    :pswitch_1
    iput-boolean v0, p0, Lcom/android/launcher2/IconMoveContainer;->mIsFolderCloseComplete:Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/IconMoveContainer;->scrollIfNeeded(Landroid/view/DragEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mScroller:Lcom/android/launcher2/IconMoveContainer$Scroller;

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainer$Scroller;->hasQueue()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollStarted:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMoveApps;->closeLayoutGap()V

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMoveApps;->clearDragOutlines()V

    iput-boolean v0, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollStarted:Z

    goto :goto_1

    :cond_3
    :pswitch_3
    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mScroller:Lcom/android/launcher2/IconMoveContainer$Scroller;

    invoke-virtual {v0}, Lcom/android/launcher2/IconMoveContainer$Scroller;->hasQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mScroller:Lcom/android/launcher2/IconMoveContainer$Scroller;

    invoke-virtual {v0}, Lcom/android/launcher2/IconMoveContainer$Scroller;->unQueue()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getContent()Lcom/android/launcher2/CellLayoutMoveApps;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    return-object v0
.end method

.method public getFolderCloseComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/IconMoveContainer;->mIsFolderCloseComplete:Z

    return v0
.end method

.method public getHelpView()Lcom/android/launcher2/IconMoveContainerHelpView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    return-object v0
.end method

.method public getIconSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer;->mIconSize:I

    return v0
.end method

.method public getVisibleRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mVisibleRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mVisibleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/IconMoveContainer;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v0, v0, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    return v0
.end method

.method public loadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V
    .locals 16

    const-string v10, "IconMoveContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadItem : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", doingLoad : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher2/IconMoveContainer;->mDoingLoad:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/android/launcher2/CellLayoutMoveApps;->canAcceptAddItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/launcher2/IconMoveContainer;->mDoingLoad:Z

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/launcher2/IconMoveContainer;->mLastDisolveFolderTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/launcher2/IconMoveContainer;->mLastDisolveFolderTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1f4

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    :cond_2
    move-object/from16 v0, p2

    instance-of v10, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v10, :cond_10

    move-object/from16 v10, p2

    check-cast v10, Lcom/android/launcher2/HomeItem;

    iget-wide v10, v10, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/launcher2/IconMoveContainer;->getFolderItemById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v9

    move-object/from16 v4, p2

    check-cast v4, Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_b

    :cond_3
    const-string v10, "IconMoveContainer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadItem : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has wrong view state."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    instance-of v10, v8, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_5

    move-object v2, v8

    check-cast v2, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-virtual {v10}, Lcom/android/launcher2/IconMoveContainerHelpView;->isRunning()Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    iget-object v11, v2, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-wide v12, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-lez v10, :cond_c

    const/4 v10, -0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-static {v2, v11, v0, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    iget-wide v10, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    if-nez v7, :cond_5

    iget-object v10, v2, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-static {v2, v10, v0, v11}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    :cond_5
    iget-wide v10, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_e

    if-eqz v9, :cond_d

    invoke-virtual {v9, v4}, Lcom/android/launcher2/HomeFolderItem;->contains(Lcom/android/launcher2/BaseItem;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v9, v4}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v9}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    :cond_6
    :goto_3
    new-instance v10, Lcom/android/launcher2/HomeItem$PosistionBackup;

    invoke-direct {v10, v4}, Lcom/android/launcher2/HomeItem$PosistionBackup;-><init>(Lcom/android/launcher2/HomeItem;)V

    iput-object v10, v4, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    const/4 v10, 0x0

    iput v10, v4, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v10

    iput v10, v4, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v10, v4, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p2

    iput v10, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutMoveApps;->getPageItemCount()I

    move-result v5

    if-gtz v5, :cond_7

    iget-wide v10, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, -0x65

    cmp-long v10, v10, v12

    if-nez v10, :cond_8

    :cond_7
    const/4 v10, 0x0

    iput v10, v4, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p2

    iput v10, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    :cond_8
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/launcher2/IconMoveContainer;->mDoingLoad:Z

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lcom/android/launcher2/HomeItem;->setNeetToIconVI(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/android/launcher2/CellLayoutMoveApps;->addItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/android/launcher2/Launcher;->savedBaseItem:Ljava/util/ArrayList;

    if-eqz v10, :cond_9

    sget-object v10, Lcom/android/launcher2/Launcher;->savedBaseItem:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v2, :cond_a

    iget-wide v10, v4, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_f

    move-object v3, v7

    new-instance v10, Lcom/android/launcher2/IconMoveContainer$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lcom/android/launcher2/IconMoveContainer$4;-><init>(Lcom/android/launcher2/IconMoveContainer;Landroid/view/View;)V

    const-wide/16 v12, 0x1ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13}, Lcom/android/launcher2/IconMoveContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_4
    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher2/CellLayoutMoveApps;->realTimeReorder(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    goto/16 :goto_1

    :cond_c
    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto/16 :goto_3

    :cond_e
    instance-of v10, v8, Lcom/android/launcher2/CellLayout;

    if-eqz v10, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto/16 :goto_3

    :cond_f
    if-eqz v7, :cond_a

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->requestFocus()Z

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    :cond_10
    const-string v10, "IconMoveContainer"

    const-string v11, "HomeItem is accept only."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_0

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v6, v4}, Lcom/android/launcher2/IconMoveContainer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget v4, p0, Lcom/android/launcher2/IconMoveContainer;->mCurrentAnimatorRes:I

    iget v5, p0, Lcom/android/launcher2/IconMoveContainer;->mHideAnimatorRes:I

    if-ne v4, v5, :cond_1

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/launcher2/IconMoveContainer;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09007a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v4, v3}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :cond_1
    iget v4, p0, Lcom/android/launcher2/IconMoveContainer;->mCurrentAnimatorRes:I

    iget v5, p0, Lcom/android/launcher2/IconMoveContainer;->mShowAnimatorRes:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mLastDropedItem:Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v4, v4, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutChildren;->setIconVIStartDelay(I)V

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mLastDropedItem:Lcom/android/launcher2/HomeItem;

    iget-wide v4, v4, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mLastDropedItem:Lcom/android/launcher2/HomeItem;

    iget-wide v4, v4, Lcom/android/launcher2/HomeItem;->container:J

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/IconMoveContainer;->getFolderItemById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v4, "IconMoveContainer"

    const-string v5, "Need to check This situation."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-virtual {v4}, Lcom/android/launcher2/IconMoveContainerHelpView;->isRunning()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v4

    if-le v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v5, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-wide v4, v2, Lcom/android/launcher2/HomeFolderItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    iget-object v0, v4, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    :cond_5
    iget v4, v2, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iget v5, v2, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v4, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v4, v2, v1, v8}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/IconMoveContainer;->onAnimationRepeat(Landroid/animation/Animator;)V

    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/IconMoveContainer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-virtual {v2}, Lcom/android/launcher2/IconMoveContainerHelpView;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-virtual {v2}, Lcom/android/launcher2/IconMoveContainerHelpView;->getCurrentStep()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-virtual {v1}, Lcom/android/launcher2/IconMoveContainerHelpView;->onBackPressed()Z

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, p0, Lcom/android/launcher2/IconMoveContainer;->mIconSize:I

    iget v1, p0, Lcom/android/launcher2/IconMoveContainer;->mTextSize:I

    const v3, 0x7f0a0263

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/IconMoveContainer;->mIconSize:I

    const v3, 0x7f0a0267

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/IconMoveContainer;->mTextSize:I

    const v3, 0x7f0a025d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/IconMoveContainer;->mCellWidth:I

    const v3, 0x7f0a025c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/IconMoveContainer;->mCellHeight:I

    const v3, 0x7f0a025b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/IconMoveContainer;->mCellGap:I

    const v3, 0x7f0a0268

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/IconMoveContainer;->mTopGap:I

    const v3, 0x7f0a025e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/IconMoveContainer;->mContainerHeight:I

    const v3, 0x7f0c0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/IconMoveContainer;->mMinGridX:I

    invoke-direct {p0}, Lcom/android/launcher2/IconMoveContainer;->updateLayout()V

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutMoveApps;->refreshCellDimension()V

    new-instance v3, Lcom/android/launcher2/IconMoveContainer$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/IconMoveContainer$2;-><init>(Lcom/android/launcher2/IconMoveContainer;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/IconMoveContainer;->post(Ljava/lang/Runnable;)Z

    iget v3, p0, Lcom/android/launcher2/IconMoveContainer;->mIconSize:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/IconMoveContainer;->mTextSize:I

    if-eq v1, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v4, p0, Lcom/android/launcher2/IconMoveContainer;->mIconSize:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutMoveApps;->setIconSize(I)V

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v4, p0, Lcom/android/launcher2/IconMoveContainer;->mTextSize:I

    iget v5, p0, Lcom/android/launcher2/IconMoveContainer;->mIconSize:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayoutMoveApps;->updateItemStyle(II)V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mHelpView:Lcom/android/launcher2/IconMoveContainerHelpView;

    invoke-virtual {v3}, Lcom/android/launcher2/IconMoveContainerHelpView;->onConfigurationChanged()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v3, 0x7f110085

    invoke-virtual {p0, v3}, Lcom/android/launcher2/IconMoveContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    const v3, 0x7f110086

    invoke-virtual {p0, v3}, Lcom/android/launcher2/IconMoveContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutMoveApps;

    iput-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    const v3, 0x7f110084

    invoke-virtual {p0, v3}, Lcom/android/launcher2/IconMoveContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mIntroText:Landroid/widget/TextView;

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v3, :cond_0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutMoveApps;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0264

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mIntroText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mIntroText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public recoveryDissolvedFolder(Lcom/android/launcher2/HomeFolderItem;)V
    .locals 10

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher2/IconMoveContainer;->findEmptyCellOnDB(Lcom/android/launcher2/HomeItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v2

    invoke-virtual {v0, v2, v7}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    move-result-object v8

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    :goto_0
    new-array v9, v4, [I

    fill-array-data v9, :array_0

    invoke-direct {p0, v8, v9}, Lcom/android/launcher2/IconMoveContainer;->findEmptyCell(Lcom/android/launcher2/CellLayout;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget v0, v9, v7

    iput v0, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    aget v0, v9, v3

    iput v0, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v0

    if-ge v0, v4, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p1, v7}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget-wide v2, p1, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v0, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v0, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v0, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v0, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/IconMoveContainer;->addItemToDatabase(Lcom/android/launcher2/HomeItem;JIII)V

    invoke-direct {p0, v8, v1}, Lcom/android/launcher2/IconMoveContainer;->addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {v8, v1}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {p1, v1}, Lcom/android/launcher2/HomeFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    :goto_1
    const-string v0, "IconMoveContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recorvery dissolvedFolder("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") will be added on page : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v8, p1}, Lcom/android/launcher2/IconMoveContainer;->addItemToCellLayout(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/BaseItem;)V

    iget v4, p1, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iget v5, p1, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iget v6, p1, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/IconMoveContainer;->updateItemPositionInDatabase(Lcom/android/launcher2/HomeItem;IIIZ)V

    goto :goto_1

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public removeItem(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutMoveApps;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v1, v1, Lcom/android/launcher2/CellLayoutMoveApps;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-ge v1, v5, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    :cond_1
    return-void
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutMoveApps;->setAccessibilityEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mIntroText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMoveApps;->getImportantForAccessibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMoveApps;->getImportantForAccessibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/IconMoveContainer;->setImportantForAccessibility(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/IconMoveContainer;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutMoveApps;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setFocusable(Z)V

    return-void
.end method

.method public setFolderCloseComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/IconMoveContainer;->mIsFolderCloseComplete:Z

    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeView;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mIconSize:I

    const v1, 0x7f0a0267

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mTextSize:I

    const v1, 0x7f0a025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mCellWidth:I

    const v1, 0x7f0a025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mCellHeight:I

    const v1, 0x7f0a025b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mCellGap:I

    const v1, 0x7f0a0268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mTopGap:I

    const v1, 0x7f0a0262

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewDrawablePadding:I

    const v1, 0x7f0a0261

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewDrawableFolderPadding:I

    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewShowLabel:Z

    const v1, 0x7f0e003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mLabelColor:I

    const v1, 0x7f0a025e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContainerHeight:I

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollMargin:I

    const v1, 0x7f0a0299

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mEdgeMargin:I

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mScroller:Lcom/android/launcher2/IconMoveContainer$Scroller;

    const v2, 0x7f0c0024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f0c0025

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/IconMoveContainer$Scroller;->setScrollSensibility(II)V

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutMoveApps;->setHomeView(Lcom/android/launcher2/HomeView;)V

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutMoveApps;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mIntroText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutMoveApps;->setViews(Landroid/widget/TextView;Landroid/widget/HorizontalScrollView;)V

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v2, p0, Lcom/android/launcher2/IconMoveContainer;->mIconSize:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutMoveApps;->setIconSize(I)V

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayoutMoveApps;->setEnableReOrdering(Z)V

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/IconMoveContainer;->mMinGridX:I

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v2, p0, Lcom/android/launcher2/IconMoveContainer;->mMinGridX:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutMoveApps;->setMinimunGridSize(I)V

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v2, p0, Lcom/android/launcher2/IconMoveContainer;->mMinGridX:I

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher2/CellLayoutMoveApps;->setGridSize(II)V

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v2, p0, Lcom/android/launcher2/IconMoveContainer;->mEdgeMargin:I

    iget v3, p0, Lcom/android/launcher2/IconMoveContainer;->mTopGap:I

    iget v4, p0, Lcom/android/launcher2/IconMoveContainer;->mEdgeMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher2/CellLayoutMoveApps;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v2, p0, Lcom/android/launcher2/IconMoveContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher2/IconMoveContainer;->mCellHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutMoveApps;->setCellSize(II)V

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    iget v2, p0, Lcom/android/launcher2/IconMoveContainer;->mCellGap:I

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher2/CellLayoutMoveApps;->setGaps(II)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/launcher2/IconMoveContainer;->setVisibility(I)V

    return-void
.end method

.method public unloadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v1

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/IconMoveContainer;->findEmptyCell(Lcom/android/launcher2/CellLayout;[I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/IconMoveContainer;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/IconMoveContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09008e

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v5, v3}, Lcom/android/launcher2/IconMoveContainer;->unloadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;ZLjava/util/ArrayList;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public updateItem(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer;->mContent:Lcom/android/launcher2/CellLayoutMoveApps;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutMoveApps;->updateItemView(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method
