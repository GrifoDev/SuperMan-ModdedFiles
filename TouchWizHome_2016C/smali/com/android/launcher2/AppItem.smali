.class public Lcom/android/launcher2/AppItem;
.super Lcom/android/launcher2/BaseItem;
.source "AppItem.java"


# static fields
.field private static final DEBUGGABLE:Z


# instance fields
.field public mCell:I

.field public mCellInAlphabetical:I

.field public final mComponentName:Landroid/content/ComponentName;

.field public mCreateTime:J

.field protected mFolder:Lcom/android/launcher2/AppFolderItem;

.field public mGameApp:Z

.field public mHidden:Z

.field private mSavedCell:I

.field private mSavedDirty:Z

.field private mSavedFolder:Lcom/android/launcher2/AppFolderItem;

.field private mSavedHidden:Z

.field private mSavedScreen:I

.field public mScreenInAlphabetical:I

.field public final mSystemApp:Z

.field public mUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/AppItem;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    iput v2, p0, Lcom/android/launcher2/AppItem;->mCell:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    iput-boolean v3, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v3, p0, Lcom/android/launcher2/AppItem;->mGameApp:Z

    iput-boolean v3, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    iput v2, p0, Lcom/android/launcher2/AppItem;->mScreenInAlphabetical:I

    iput v2, p0, Lcom/android/launcher2/AppItem;->mCellInAlphabetical:I

    iput-object p1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-boolean p2, p0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;Landroid/content/ComponentName;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    iput v2, p0, Lcom/android/launcher2/AppItem;->mCell:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    iput-boolean v3, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v3, p0, Lcom/android/launcher2/AppItem;->mGameApp:Z

    iput-boolean v3, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    iput v2, p0, Lcom/android/launcher2/AppItem;->mScreenInAlphabetical:I

    iput v2, p0, Lcom/android/launcher2/AppItem;->mCellInAlphabetical:I

    iput-object p2, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    sget-boolean v1, Lcom/android/launcher2/AppItem;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    sget-boolean v2, Lcom/android/launcher2/AppItem;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " createTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/launcher2/AppItem;->mCreateTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private freeEditResources()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    return-void
.end method

.method public static makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;
    .locals 4

    invoke-static {p0}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "profile"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->childDestroyed(Lcom/android/launcher2/AppItem;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->childDestroyed(Lcom/android/launcher2/AppItem;)V

    :cond_1
    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    return-void
.end method

.method public editBegin()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iget v0, p0, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iget v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mDirty:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedDirty:Z

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    return-void
.end method

.method public editCommit()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppItem;->editIsDirty(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mDirty:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppItem;->freeEditResources()V

    return-void
.end method

.method public editIsDirty(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_1

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iget v1, p0, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iget v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    iget-boolean v1, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public editParentDestroyed()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iput v1, p0, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    return-void
.end method

.method public editRevert()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iput-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mScreen:I

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedDirty:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mDirty:Z

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mSavedHidden:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    invoke-direct {p0}, Lcom/android/launcher2/AppItem;->freeEditResources()V

    return-void
.end method

.method public editRevertCell()V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContainingFolderItem()Lcom/android/launcher2/AppFolderItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    return-object v0
.end method

.method public getFlexibleGridStyle()I
    .locals 3

    const/4 v0, -0x1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v1, v2, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_3

    const v0, 0x7f0f0018

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, -0x1

    :cond_2
    return v0

    :cond_3
    invoke-static {p0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0f001a

    goto :goto_0

    :cond_4
    const v0, 0x7f0f0017

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_6

    const v0, 0x7f0f000c

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f0f000d

    goto :goto_0

    :cond_7
    const v0, 0x7f0f000b

    goto :goto_0
.end method

.method public getLaunchIntent(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, v1, p2}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPosition()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getCurrentComparator()Ljava/util/Comparator;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppFolderItem;->getAllItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    :goto_1
    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/launcher2/AppItem;->mScreen:I

    goto :goto_1
.end method

.method public getTargetHeight()I
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMenuIconSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/AppItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    goto :goto_0
.end method

.method public getTargetWidth()I
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMenuIconSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/AppItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->HOME:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/AppItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    iput v0, p0, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/AppItem;->mCell:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    return-void
.end method

.method public isGame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppItem;->mGameApp:Z

    return v0
.end method

.method public isGameHomeApp()Z
    .locals 2

    const-string v0, "com.samsung.android.game.gamehome"

    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeHomeItem(Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 2

    new-instance v0, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/AppItem;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/launcher2/AppItem;->status:I

    iput v1, v0, Lcom/android/launcher2/HomeShortcutItem;->status:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher2/HomeShortcutItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/android/launcher2/AppItem;->mColor:I

    iput v1, v0, Lcom/android/launcher2/HomeShortcutItem;->mColor:I

    iget-boolean v1, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    iput-boolean v1, v0, Lcom/android/launcher2/HomeShortcutItem;->mUnavailable:Z

    iget v1, p0, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    iput v1, v0, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v1, v0, Lcom/android/launcher2/HomeShortcutItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/AppItem;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/AppItem;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method protected needLoadingBitmap()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/AppItem;->getLoadingState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mLoadingListener:Lcom/android/launcher2/BaseItem$LoadingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mLoadingListener:Lcom/android/launcher2/BaseItem$LoadingListener;

    invoke-interface {v0, p0}, Lcom/android/launcher2/BaseItem$LoadingListener;->onLoaded(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    invoke-static {p0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    :cond_1
    return-void
.end method

.method public parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne p1, v0, :cond_0

    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iput v1, p0, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne p1, v0, :cond_1

    iput-object v2, p0, Lcom/android/launcher2/AppItem;->mSavedFolder:Lcom/android/launcher2/AppFolderItem;

    iput v1, p0, Lcom/android/launcher2/AppItem;->mSavedScreen:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mSavedCell:I

    :cond_1
    return-void
.end method

.method public removeFromFolder()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/AppFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    iget v1, v0, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mScreen:I

    iget v1, v0, Lcom/android/launcher2/AppFolderItem;->mCell:I

    iput v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher2/AppItem;->mScreen:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher2/AppItem;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " folderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v0, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/AppItem;->mCell:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unavailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public unhide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppItem;->mHidden:Z

    return-void
.end method
