.class public Lcom/android/launcher2/AppFolderItem;
.super Lcom/android/launcher2/AppItem;
.source "AppFolderItem.java"

# interfaces
.implements Lcom/android/launcher2/FolderItem;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private listeners:Ljava/util/ArrayList;
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

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOpened:Z

.field private mRedrawIcons:Z

.field private mSavedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private openOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/AppFolderItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppItem;-><init>(Lcom/android/launcher2/BaseItem$Type;Landroid/content/ComponentName;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    iput-boolean v2, p0, Lcom/android/launcher2/AppFolderItem;->mRedrawIcons:Z

    iput-boolean v2, p0, Lcom/android/launcher2/AppFolderItem;->mHiddenAddButton:Z

    iput-boolean v2, p0, Lcom/android/launcher2/AppFolderItem;->mIsLocked:Z

    iput-boolean v2, p0, Lcom/android/launcher2/AppFolderItem;->openOnce:Z

    return-void
.end method

.method private addItemForFolder(Lcom/android/launcher2/BaseItem;I)V
    .locals 5

    if-nez p1, :cond_0

    sget-object v3, Lcom/android/launcher2/AppFolderItem;->TAG:Ljava/lang/String;

    const-string v4, "addItemForFolder : item is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {p1}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppFolderItem;->addItemForMulti(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private adjustPositions(III)V
    .locals 3

    if-gt p1, p2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget v2, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    if-lt v2, p1, :cond_0

    iget v2, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    if-gt v2, p2, :cond_0

    iget v2, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/2addr v2, p3

    iput v2, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private freeEditResources()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    return-void
.end method

.method public addItemAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can only add MENU_APPs to MENU_FOLDERs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-nez v6, :cond_1

    sget-object v6, Lcom/android/launcher2/AppFolderItem;->TAG:Ljava/lang/String;

    const-string v7, "addItemAt() : already destroyed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v6, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ltz p2, :cond_2

    if-le p2, v5, :cond_3

    :cond_2
    move p2, v5

    :cond_3
    iget-object v6, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne v6, p0, :cond_7

    iget v6, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-eq v6, p2, :cond_5

    iget v6, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ge v6, p2, :cond_6

    iget v6, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v3, p2, -0x1

    const/4 v0, -0x1

    add-int/lit8 p2, p2, -0x1

    :goto_1
    iget-boolean v6, p0, Lcom/android/launcher2/AppFolderItem;->mIsAddingItemWithDrag:Z

    if-nez v6, :cond_4

    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    :cond_4
    iput p2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    :cond_5
    :goto_2
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    iget-object v6, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onAdd(Lcom/android/launcher2/BaseItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v4, p2

    iget v6, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v3, v6, -0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v3, v5, -0x1

    move v4, p2

    const/4 v0, 0x1

    iget-object v6, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v6, :cond_9

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    :goto_4
    iget-boolean v6, p0, Lcom/android/launcher2/AppFolderItem;->mIsAddingItemWithDrag:Z

    if-nez v6, :cond_8

    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    :cond_8
    iput p2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    const/4 v6, -0x1

    iput v6, v1, Lcom/android/launcher2/AppItem;->mCell:I

    iput-object p0, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v6, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v6, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_9
    iget-object v6, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v6, p1}, Lcom/android/launcher2/AppFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->sort()V

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    goto :goto_0
.end method

.method public addItemForMulti(Lcom/android/launcher2/BaseItem;)V
    .locals 10

    const/4 v9, -0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Can only add MENU_APPs to MENU_FOLDERs"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/launcher2/AppFolderItem;->TAG:Ljava/lang/String;

    const-string v8, "addItemForMulti() : already destroyed"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v7, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    move v5, v6

    iget-object v7, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne v7, p0, :cond_4

    iget v7, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-eq v7, v5, :cond_2

    iget v7, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ge v7, v5, :cond_3

    iget v7, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v5, -0x1

    const/4 v0, -0x1

    add-int/lit8 v5, v5, -0x1

    :goto_1
    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    iput v5, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->sort()V

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    goto :goto_0

    :cond_3
    move v4, v5

    iget v7, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v3, v7, -0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v6, -0x1

    move v4, v5

    const/4 v0, 0x1

    iget-object v7, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v7, :cond_6

    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    :cond_5
    :goto_3
    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    iput v5, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v9, v1, Lcom/android/launcher2/AppItem;->mCell:I

    iput-object p0, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v7, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v7, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object v2, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v7, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p1

    check-cast v7, Lcom/android/launcher2/AppItem;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget v7, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v8, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {p0, v7, v8, v9}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    iput v9, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    sget-object v7, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v8, 0x7f0800d6

    invoke-virtual {v7, v8}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    iget-object v7, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    goto :goto_3
.end method

.method public addItemForMulti(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object v9, Lcom/android/launcher2/AppFolderItem;->TAG:Ljava/lang/String;

    const-string v10, "addItemForMulti() : newItems is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-nez v9, :cond_1

    sget-object v9, Lcom/android/launcher2/AppFolderItem;->TAG:Ljava/lang/String;

    const-string v10, "addItemForMulti() : already destroyed"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_8

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Can only add MENU_APPs to MENU_FOLDERs"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    move v5, v8

    iget-object v9, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne v9, p0, :cond_5

    iget v9, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-eq v9, v5, :cond_3

    iget v9, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ge v9, v5, :cond_4

    iget v9, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v4, v9, 0x1

    add-int/lit8 v3, v5, -0x1

    const/4 v0, -0x1

    add-int/lit8 v5, v5, -0x1

    :goto_2
    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    iput v5, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v4, v5

    iget v9, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v3, v9, -0x1

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v8, -0x1

    move v4, v5

    const/4 v0, 0x1

    iget-object v9, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v9, :cond_6

    sget-object v9, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    :goto_4
    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    iput v5, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    const/4 v9, -0x1

    iput v9, v1, Lcom/android/launcher2/AppItem;->mCell:I

    iput-object p0, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v9, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v9, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v9, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v9}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v9

    const/4 v10, 0x2

    if-gt v9, v10, :cond_7

    if-eqz v7, :cond_7

    iget-object v9, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v9, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v9, v1}, Lcom/android/launcher2/AppFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->sort()V

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_9

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppFolderItem;

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10, v6}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->appModelUpdated()V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    goto/16 :goto_0
.end method

.method public addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public childDestroyed(Lcom/android/launcher2/AppItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public contains(Lcom/android/launcher2/BaseItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/launcher2/AppItem;->destroy()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->isLockedFolder()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/FolderLock;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/FolderLock;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher2/FolderLock;->remove(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppItem;->parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppItem;->parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V

    goto :goto_1

    :cond_2
    iput-object v4, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    iput-object v4, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    return-void
.end method

.method public editBegin()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editBegin()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    return-void
.end method

.method public editCommit()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editCommit()V

    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    return-void
.end method

.method public editDestroy()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->editParentDestroyed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public editRevert()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editRevert()V

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    return-void
.end method

.method public getAllItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

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

    iget v0, p0, Lcom/android/launcher2/AppFolderItem;->mColor:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/AppFolderItem;->mId:J

    return-wide v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTargetHeight()I
    .locals 2

    invoke-static {p0}, Lcom/android/launcher2/AppFolderItem;->isItemInHotseat(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->getTargetHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getTargetWidth()I
    .locals 2

    invoke-static {p0}, Lcom/android/launcher2/AppFolderItem;->isItemInHotseat(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->getTargetWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public haveOpenOnceOrNot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->openOnce:Z

    return v0
.end method

.method public isAppFolderDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    return v0
.end method

.method public isHiddenAddButton()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mHiddenAddButton:Z

    return v0
.end method

.method public isLockedFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mIsLocked:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    return v0
.end method

.method public isRequiredToRedraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mRedrawIcons:Z

    return v0
.end method

.method public isValidItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public itemsChanged()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppFolderItem;->setToRedrawIcons(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onItemsChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method loadItem(Lcom/android/launcher2/AppItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    :cond_0
    return-void
.end method

.method public normalize()V
    .locals 3

    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->sort()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    iput v0, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public normalize(Lcom/android/launcher2/MenuAppModel$Normalizer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-boolean v2, p1, Lcom/android/launcher2/BaseItem;->mDirty:Z

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/AppItem;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onRemove(Lcom/android/launcher2/BaseItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v2, 0x7f0800d6

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    :cond_3
    return-void
.end method

.method public removeItemForFolderLock(Lcom/android/launcher2/BaseItem;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v8, -0x1

    iget-object v4, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/AppItem;

    iget-object v1, v4, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v4, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    invoke-virtual {v3}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    iget v4, v1, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    iput v4, v3, Lcom/android/launcher2/AppItem;->mScreen:I

    iget v4, v1, Lcom/android/launcher2/AppFolderItem;->mCell:I

    iput v4, v3, Lcom/android/launcher2/AppItem;->mCell:I

    iput-boolean v5, v3, Lcom/android/launcher2/AppItem;->mDirty:Z

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x118

    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher2/AppFolderItem$1;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher2/AppFolderItem$1;-><init>(Lcom/android/launcher2/AppFolderItem;Lcom/android/launcher2/AppFolderItem;)V

    int-to-long v6, v0

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/AppItem;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget v4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v5, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {p0, v4, v5, v8}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    iput v8, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    sget-object v4, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v5, 0x7f0800d6

    invoke-virtual {v4, v5}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    :cond_2
    return-void
.end method

.method public removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAddingItemWithDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mIsAddingItemWithDrag:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    return-void
.end method

.method public setFolderColor(I)V
    .locals 1

    iput p1, p0, Lcom/android/launcher2/AppFolderItem;->mColor:I

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppModel;->changeFolderColor(Lcom/android/launcher2/AppFolderItem;)V

    return-void
.end method

.method public setHiddenAddButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mHiddenAddButton:Z

    return-void
.end method

.method public setIsLockFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mIsLocked:Z

    return-void
.end method

.method public setOpenOnce(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->openOnce:Z

    return-void
.end method

.method public setOpened(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    return-void
.end method

.method public setTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iput-object p2, p0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppModel;->changeFolderName(Lcom/android/launcher2/AppFolderItem;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher2/Logging;->getFolderNameValue(Landroid/app/Activity;Z)I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "APFN"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_2
    return-void
.end method

.method public setToRedrawIcons(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mRedrawIcons:Z

    return-void
.end method

.method public sort()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getCurrentComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method
