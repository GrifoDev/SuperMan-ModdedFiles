.class public Lcom/android/launcher2/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;
.implements Lcom/android/launcher2/CellLayoutContainer;


# static fields
.field private static final HOTSEAT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Hotseat"


# instance fields
.field private isFromDND:Z

.field private isWidgetItem:Z

.field private itemFromMenu:Z

.field mContent:Lcom/android/launcher2/CellLayoutHotseat;

.field private mDragInContentArea:Z

.field private mEntered:Z

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mIsRightPosition:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMaxCellCount:I

.field private mShowHotseatTitle:Z

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private tmp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher2/Hotseat$2;

    invoke-direct {v0}, Lcom/android/launcher2/Hotseat$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/Hotseat;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/launcher2/Hotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Hotseat$1;-><init>(Lcom/android/launcher2/Hotseat;)V

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Hotseat;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method public static normalizeContents(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/android/launcher2/Hotseat;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v3, v2, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-eq v3, v1, :cond_0

    iput v1, v2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0, v0}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/HomeItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutHotseat;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    return v0
.end method

.method public canAcceptAddItem()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v4

    add-int/2addr v4, v0

    if-le v3, v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method public changeTextColor(II)V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/AppIconView;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v1, p1, p2}, Lcom/android/launcher2/Utilities;->changeTextColor(Landroid/view/View;II)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method checkHotSeatInteraction(Lcom/android/launcher2/DragState;ILandroid/view/View;)Z
    .locals 31

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-static {v12}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v27, 0x1

    :goto_0
    if-eqz v12, :cond_3

    iget-object v2, v12, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v4, :cond_0

    iget-object v2, v12, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v4, :cond_0

    iget-object v2, v12, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v2, :cond_3

    :cond_0
    const/16 v19, 0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_2
    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_2
    const/16 v27, 0x0

    goto :goto_0

    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->foundValidDrop()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/16 v26, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v17

    instance-of v0, v12, Lcom/android/launcher2/AppItem;

    move/from16 v24, v0

    const/16 v18, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v18

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v24, :cond_8

    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v26, 0x1

    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v4, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v4, :cond_7

    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/launcher2/FolderLock;->isInWhiteList(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "home_only_locked_items"

    invoke-static {v12}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v25, 0x1

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutHotseat;->mPreFolderBg:Lcom/android/launcher2/AppIconView;

    if-nez v2, :cond_a

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_8
    const/16 v26, 0x0

    goto :goto_4

    :cond_9
    const-string v2, "home_locked_items"

    invoke-static {v12}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v25, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    const/4 v11, 0x0

    if-eqz p3, :cond_15

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    new-instance v14, Lcom/android/launcher2/DragState;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->willCreateFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v29

    const/16 v28, 0x0

    if-lez v29, :cond_b

    if-eqz v12, :cond_b

    instance-of v2, v12, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_b

    move-object/from16 v20, v12

    check-cast v20, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v4, v6

    if-nez v2, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeItem;->getPosition()I

    move-result v2

    move/from16 v0, v29

    if-ge v2, v0, :cond_b

    const/16 v28, 0x1

    :cond_b
    if-lez v29, :cond_d

    if-nez v28, :cond_d

    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    move/from16 v1, v29

    if-gt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_c

    const/16 v28, 0x1

    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    :cond_d
    const-string v4, "Hotseat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToAdjustFolderPosition: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " position: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v26, :cond_11

    const/4 v2, 0x0

    const/4 v4, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v2, v0, v4}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem(Lcom/android/launcher2/BaseItem;ZZ)Lcom/android/launcher2/FolderIconView;

    move-result-object v3

    :goto_7
    if-eqz v3, :cond_f

    if-eqz v12, :cond_f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v6

    invoke-virtual {v12}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v8

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->onDrop()V

    const/4 v11, 0x1

    if-eqz v26, :cond_13

    if-nez v19, :cond_13

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v4, v12, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v12, v2, v4, v0}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;Ljava/lang/String;Lcom/android/launcher2/DragState;)V

    :cond_e
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->onEnd()V

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v15

    if-eqz v15, :cond_10

    invoke-virtual {v15}, Lcom/android/launcher2/Folder;->getItemTotalCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    invoke-virtual {v15}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v2

    if-nez v2, :cond_14

    const-string v2, "Hotseat"

    const-string v4, "TTTT folder icon view is null"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v11, :cond_15

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_11
    if-eqz v25, :cond_12

    const/4 v2, 0x0

    const/4 v4, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v2, v0, v4}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem(Lcom/android/launcher2/BaseItem;ZZ)Lcom/android/launcher2/FolderIconView;

    move-result-object v3

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v0, v28

    invoke-virtual {v14, v2, v0, v4}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem(Lcom/android/launcher2/BaseItem;ZZ)Lcom/android/launcher2/FolderIconView;

    move-result-object v3

    goto :goto_7

    :cond_13
    if-eqz v25, :cond_e

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/launcher2/LockUnlockItemDialog;->SetCurrentFolderMenuItem(Lcom/android/launcher2/FolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/launcher2/LockUnlockItemDialog;->createAndShow(Lcom/android/launcher2/BaseItem;Landroid/app/FragmentManager;)V

    goto :goto_8

    :cond_14
    new-instance v16, Lcom/android/launcher2/DragState;

    invoke-virtual {v15}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    invoke-virtual {v15}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_10

    invoke-virtual {v15}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/HomeItem;

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/HomeItem;

    invoke-virtual {v15}, Lcom/android/launcher2/Folder;->getFolderIconView()Lcom/android/launcher2/FolderIconView;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v23

    iget v9, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, v23

    iget v10, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/DragState;->dropItemtoTarget(Landroid/view/View;Landroid/view/View;IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/DragState;->onDelete()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->onEnd()V

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_15
    if-nez v27, :cond_17

    if-nez v19, :cond_17

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_17

    if-eqz p3, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_16

    invoke-static/range {v30 .. v30}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v13

    instance-of v2, v13, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_16
    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_17
    if-eqz v27, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v2, :cond_1

    if-nez v27, :cond_18

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_1

    :cond_18
    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    goto/16 :goto_2

    :pswitch_4
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_1

    check-cast p3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clearDragOutline()V
    .locals 0

    return-void
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 20
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

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v12, 0x0

    sget-object v14, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_9

    const/4 v12, 0x1

    sget-object v14, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v15, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v15, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p4

    instance-of v14, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v14, :cond_10

    :cond_1
    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    invoke-static/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getFromDND()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090127

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0901dc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    if-nez v12, :cond_3

    if-eqz v6, :cond_11

    :cond_3
    const v14, 0x7f05001f

    invoke-static {v5, v14}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4, v14}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v14, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_4

    sget-object v14, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_6

    :cond_4
    sget-object v14, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_5

    sget-object v14, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const-string v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    const/16 v17, 0x1

    sub-int v18, v9, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    sget-object v14, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_7

    sget-object v14, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_16

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v11

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v11, :cond_16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v14, v10}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v14, v2, Lcom/android/launcher2/FolderIconView;

    if-eqz v14, :cond_8

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    sget-object v14, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_b

    if-eqz p4, :cond_a

    const/4 v6, 0x1

    :goto_4
    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    :cond_b
    sget-object v14, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_c

    sget-object v14, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v14

    if-eqz v14, :cond_d

    sget-object v14, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_e

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_5
    sget-object v14, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_f

    const/high16 v7, 0x3f000000    # 0.5f

    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v14

    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v13, v16, v17

    const/16 v17, 0x1

    aput v7, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    sget v14, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    int-to-long v14, v14

    invoke-virtual {v3, v14, v15}, Landroid/animation/Animator;->setStartDelay(J)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v14, Lcom/android/launcher2/Workspace$State;->MOVE_APPS:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v14, :cond_0

    :goto_7
    return-void

    :cond_e
    const/high16 v13, 0x3f000000    # 0.5f

    goto :goto_5

    :cond_f
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_11
    const v14, 0x7f050020

    invoke-static {v5, v14}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4, v14}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v14, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p2

    if-ne v0, v14, :cond_12

    sget-object v14, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-eq v0, v14, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const-string v15, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sub-int v18, v9, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v14

    if-nez v14, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    if-nez v14, :cond_15

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    if-eqz v14, :cond_6

    :cond_15
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    goto/16 :goto_2

    :cond_16
    const v14, 0x7f050001

    invoke-static {v5, v14}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getCellXFromOrder(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsRightPosition:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method getCellYFromOrder(II)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsRightPosition:Z

    if-eqz v0, :cond_0

    sub-int v0, p2, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragInContentArea()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    return v0
.end method

.method public getDragOutline(Landroid/view/View;Lcom/android/launcher2/CellLayout;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;Lcom/android/launcher2/CellLayout;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsRightPosition:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    :cond_0
    return p1
.end method

.method public isRightPosition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsRightPosition:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    :goto_1
    :pswitch_1
    return v3

    :pswitch_2
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragState;

    move-object v0, v3

    :goto_2
    iget-object v3, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v3, p0, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    :cond_1
    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_2

    :pswitch_3
    iget-boolean v4, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher2/CellLayoutHotseat;->pointToCellExact(II[I)V

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    aget v3, v6, v3

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayoutHotseat;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iput-boolean v8, v3, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->cancelRealTimeReorder()V

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->clearDragOutlines()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f10007a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->isHoveringAreaX(F)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->setHoveringSpenIcon(I)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->isTouchResizeFrame(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reapplyIconViewStyles()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->reapplyIconViewStyles(Z)V

    return-void
.end method

.method public reloadLayout()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09012c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v6, 0x7f09012b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f090129

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v6, 0x7f09012a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const v6, 0x7f090127

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Hotseat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->setHotseatPadding()V

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v6, v3, v2}, Lcom/android/launcher2/CellLayoutHotseat;->setCellSize(II)V

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->setGaps(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->reapplyIconViewStyles()V

    return-void
.end method

.method resetLayout()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->setHotseatPadding()V

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutHotseat;->removeAllViewsInLayout()V

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-boolean v2, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher2/CellLayoutHotseat;->inflateAllAppsIcon(Lcom/android/launcher2/Hotseat;Z)Lcom/android/launcher2/AllappsIcon;

    :cond_0
    return-void
.end method

.method setDragInContentArea(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    return-void
.end method

.method public setHotseatPadding()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090131

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f090132

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v6, 0x7f090133

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f090128

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v6, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v6, :cond_0

    const v6, 0x7f090244

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f090247

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v6, v2, v5, v4, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeView;)V
    .locals 6

    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v3, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mIsRightPosition:Z

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800005

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0b000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayoutHotseat;->setHomeView(Lcom/android/launcher2/HomeView;)V

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutHotseat;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-boolean v4, p0, Lcom/android/launcher2/Hotseat;->mIsRightPosition:Z

    iget v5, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->setup(ZI)V

    return-void
.end method
