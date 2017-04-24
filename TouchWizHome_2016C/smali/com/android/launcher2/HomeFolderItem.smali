.class public Lcom/android/launcher2/HomeFolderItem;
.super Lcom/android/launcher2/HomeItem;
.source "HomeFolderItem.java"

# interfaces
.implements Lcom/android/launcher2/FolderItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeFolderItem$FolderListener;
    }
.end annotation


# static fields
.field public static final FLAG_WORK_FOLDER:I = 0x2

.field private static final IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeFolderItem$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mHiddenAddButton:Z

.field private mIsAddingItemWithDrag:Z

.field private mIsLocked:Z

.field private mOpened:Z

.field private mRedrawIcons:Z

.field private mRemainItemForRevert:Lcom/android/launcher2/HomeItem;

.field private openOnce:Z

.field public options:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher2/HomeFolderItem$1;

    invoke-direct {v0}, Lcom/android/launcher2/HomeFolderItem$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFolderItem;->IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    iput-boolean v1, p0, Lcom/android/launcher2/HomeFolderItem;->mHiddenAddButton:Z

    iput-boolean v1, p0, Lcom/android/launcher2/HomeFolderItem;->mIsLocked:Z

    iput-boolean v1, p0, Lcom/android/launcher2/HomeFolderItem;->openOnce:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method private addItemFolder(Lcom/android/launcher2/BaseItem;I)V
    .locals 4

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeFolderItem;->addItemForMulti(Ljava/util/List;)V

    return-void
.end method

.method private adjustPositions(III)V
    .locals 3

    if-gt p1, p2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget v2, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-lt v2, p1, :cond_0

    iget v2, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-gt v2, p2, :cond_0

    iget v2, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    add-int/2addr v2, p3

    iput v2, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method static createFromAppFolderItem(Landroid/content/Context;Lcom/android/launcher2/AppFolderItem;JIII)Lcom/android/launcher2/HomeFolderItem;
    .locals 18

    new-instance v3, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v3}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/AppFolderItem;->mColor:I

    iput v2, v3, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppFolderItem;->isLockedFolder()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeFolderItem;->setIsLockFolder(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppFolderItem;->haveOpenOnceOrNot()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/launcher2/HomeFolderItem;->setOpenOnce(Z)V

    :cond_0
    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v16

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v15

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppItem;

    if-nez v11, :cond_1

    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/android/launcher2/AppItem;->makeHomeItem(Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v17

    iget-wide v4, v3, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v4

    :goto_2
    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->addItemToItemList(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    iget v2, v11, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    add-int/2addr v12, v2

    goto :goto_1

    :cond_2
    const-wide/16 v4, -0x1

    goto :goto_2

    :cond_3
    if-eqz v16, :cond_4

    iget-wide v4, v3, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/launcher2/LauncherProvider;->addHomeFolderItems(JLcom/android/launcher2/HomeFolderItem;)V

    :cond_4
    iput v12, v3, Lcom/android/launcher2/HomeFolderItem;->mBadgeCount:I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppFolderItem;->isLockedFolder()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v13

    const/4 v2, 0x1

    invoke-virtual {v13, v3, v2}, Lcom/android/launcher2/FolderLock;->lockFolder(Lcom/android/launcher2/BaseItem;Z)V

    :cond_5
    return-object v3
.end method

.method public static getFolderContentDescription(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    const v4, 0x7f080047

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_3

    sub-int v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/HomeFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    return-void
.end method

.method public addItemAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/HomeFolderItem;->addItemAtSlient(Lcom/android/launcher2/BaseItem;I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onAdd(Lcom/android/launcher2/BaseItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->sort()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    return-void
.end method

.method public addItemAtSlient(Lcom/android/launcher2/BaseItem;I)V
    .locals 11

    const/4 v10, -0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can only add HOME_APPLICATIONs or HOME_SHORTCUTs to HOME_FOLDERs. Tried to add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget-object v5, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ltz p2, :cond_1

    if-le p2, v4, :cond_2

    :cond_1
    move p2, v4

    :cond_2
    iget-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget-wide v8, p0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-eq v5, p2, :cond_4

    iget v5, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-ge v5, p2, :cond_5

    iget v5, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v2, p2, -0x1

    const/4 v0, -0x1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/HomeFolderItem;->mIsAddingItemWithDrag:Z

    if-nez v5, :cond_3

    invoke-direct {p0, v3, v2, v0}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    :cond_3
    iput p2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v3, p2

    iget v5, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    add-int/lit8 v2, v5, -0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v4, -0x1

    move v3, p2

    const/4 v0, 0x1

    iget-boolean v5, p0, Lcom/android/launcher2/HomeFolderItem;->mIsAddingItemWithDrag:Z

    if-nez v5, :cond_7

    invoke-direct {p0, v3, v2, v0}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    :cond_7
    iput v10, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v10, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget-wide v6, p0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    iput-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    iput p2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-object v5, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public addItemForMulti(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeShortcutItem;",
            ">;)V"
        }
    .end annotation

    const/4 v12, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can only add HOME_APPLICATIONs or HOME_SHORTCUTs to HOME_FOLDERs. Tried to add "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v7

    iget-wide v8, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget-wide v10, p0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-eq v8, v6, :cond_3

    iget v8, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-ge v8, v6, :cond_4

    iget v8, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    add-int/lit8 v5, v8, 0x1

    add-int/lit8 v4, v6, -0x1

    const/4 v0, -0x1

    add-int/lit8 v6, v6, -0x1

    :goto_1
    iget-boolean v8, p0, Lcom/android/launcher2/HomeFolderItem;->mIsAddingItemWithDrag:Z

    if-nez v8, :cond_2

    invoke-direct {p0, v5, v4, v0}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    :cond_2
    iput v6, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    :cond_3
    :goto_2
    move-object v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v5, v6

    iget v8, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    add-int/lit8 v4, v8, -0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v7, -0x1

    move v5, v6

    const/4 v0, 0x1

    iget-boolean v8, p0, Lcom/android/launcher2/HomeFolderItem;->mIsAddingItemWithDrag:Z

    if-nez v8, :cond_6

    invoke-direct {p0, v5, v4, v0}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    :cond_6
    iput v12, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v12, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget-wide v8, p0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    iput-wide v8, v1, Lcom/android/launcher2/HomeItem;->container:J

    iput v6, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-object v8, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    const/4 v2, 0x0

    :goto_3
    iget-object v8, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_8

    iget-object v8, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v8, v3}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onAdd(Lcom/android/launcher2/BaseItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public contains(Lcom/android/launcher2/BaseItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAllItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/android/launcher2/HomeFolderItem;->getFolderContentDescription(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFolderColor()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    return-wide v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRemainItem()Lcom/android/launcher2/HomeItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->mRemainItemForRevert:Lcom/android/launcher2/HomeItem;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasOption(I)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/HomeFolderItem;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveOpenOnceOrNot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->openOnce:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mEnabled:Z

    return v0
.end method

.method public isHiddenAddButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mHiddenAddButton:Z

    return v0
.end method

.method public isLockedFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mIsLocked:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mOpened:Z

    return v0
.end method

.method public isRequiredToRedraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mRedrawIcons:Z

    return v0
.end method

.method public isValidItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemsChanged()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onItemsChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method loadItem(Lcom/android/launcher2/HomeItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public normalize()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->sort()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iput v0, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public normalize(Ljava/util/List;)V
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

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->sort()V

    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-eq v2, v0, :cond_0

    iput v0, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v0, "color"

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string v0, "options"

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->isLockedFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher2/FolderLock;->remove(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v4, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v3, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onRemove(Lcom/android/launcher2/BaseItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v4, 0x7f0800d6

    invoke-virtual {v3, v4, v0}, Lcom/sec/dtl/launcher/Talk;->say(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    return-void
.end method

.method public removeItemFolderLock(Lcom/android/launcher2/BaseItem;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->isLockedFolder()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher2/FolderLock;->remove(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v4, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/Folder;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v3, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onRemove(Lcom/android/launcher2/BaseItem;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v4, 0x7f0800d6

    invoke-virtual {v3, v4, v0}, Lcom/sec/dtl/launcher/Talk;->say(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    return-void
.end method

.method public removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAddingItemWithDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mIsAddingItemWithDrag:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mEnabled:Z

    return-void
.end method

.method public setFolderColor(I)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-static {v0, p0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    return-void
.end method

.method public setHiddenAddButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mHiddenAddButton:Z

    return-void
.end method

.method public setIsLockFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mIsLocked:Z

    return-void
.end method

.method public setOpenOnce(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->openOnce:Z

    return-void
.end method

.method public setOpened(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mOpened:Z

    return-void
.end method

.method public setOption(IZLandroid/content/Context;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher2/HomeFolderItem;->options:I

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->options:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher2/HomeFolderItem;->options:I

    :goto_0
    if-eqz p3, :cond_0

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->options:I

    if-eq v0, v1, :cond_0

    invoke-static {p3, p0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->options:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/HomeFolderItem;->options:I

    goto :goto_0
.end method

.method public setRemainItem(Lcom/android/launcher2/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeFolderItem;->mRemainItemForRevert:Lcom/android/launcher2/HomeItem;

    return-void
.end method

.method public setTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x1

    iput-object p2, p0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1, p2}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onTitleChanged(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/launcher2/Logging;->getFolderNameValue(Landroid/app/Activity;Z)I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "HOFN"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public setToRedrawIcons(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mRedrawIcons:Z

    return-void
.end method

.method public sort()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/HomeFolderItem;->IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeFolderItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher2/HomeFolderItem;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/HomeItem;->unbind()V

    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
