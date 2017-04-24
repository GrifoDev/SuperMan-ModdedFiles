.class Lcom/android/launcher2/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private final PAGEINDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentPage:I

.field private volatile mInstallingPkgs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBindInProgress:Z

.field private volatile mIsFestival:Z

.field private volatile mIsFestivalModeChanged:Z

.field private mIsLaunching:Z

.field private volatile mIsModeChanged:Z

.field private volatile mPageValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherSettings$FavoriteValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStep1Finished:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;ZZZ)V
    .locals 5

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsBindInProgress:Z

    new-instance v2, Lcom/android/launcher2/LauncherModel$LoaderTask$35;

    invoke-direct {v2, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$35;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoaderTask isFestivalLoader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsFestival:Z

    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsFestivalModeChanged:Z

    :goto_0
    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->getCurrentPageIndex()I

    move-result v1

    :cond_0
    if-gez v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mCurrentPage:I

    return-void

    :cond_2
    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsModeChanged:Z

    goto :goto_0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher2/LauncherModel$LoaderTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindFestivalPageModeChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindFestivalWorkspace()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/launcher2/LauncherModel$LoaderTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsFestival:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z

    return p1
.end method

.method private bindFestivalPageModeChange()V
    .locals 2

    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$30;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$30;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private bindFestivalWorkspace()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsFestival:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$31;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$31;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$32;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$32;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindHomePageAdjust(I)V
    .locals 5

    add-int/lit8 p1, p1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->getFestivalPageCountFromDb()I
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$100(Lcom/android/launcher2/LauncherModel;)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v2

    if-le p1, v2, :cond_0

    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindHomePageAdjust setScreenCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "Launcher.Model"

    const-string v3, "bindHomePageAdjust startBind running with no launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Launcher.Model"

    const-string v3, "bindHomePageAdjust()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;I)V

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindHomeValidationCheck()V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "Launcher.Model"

    const-string v3, "startBind running with no launcher"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$3;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindPageDoing(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Launcher.Model"

    const-string v2, "startBind running with no launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsBindInProgress:Z

    goto :goto_0
.end method

.method private bindPageWorkspace(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const-string v8, "Launcher.Model"

    const-string v9, "bindPageWorkspace page item is null or empty!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v8, "Launcher.Model"

    const-string v9, "bindPageWorkspace running with no launcher"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f0b000a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget-wide v10, v2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, -0x65

    cmp-long v8, v10, v12

    if-nez v8, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v3

    :goto_2
    if-ge v10, v8, :cond_7

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    iget-object v8, v2, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v8, v10, :cond_4

    iget-wide v10, v2, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v3, -0x1

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_3

    :cond_8
    iget-wide v10, v2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, -0x64

    cmp-long v8, v10, v12

    if-nez v8, :cond_5

    iget-boolean v8, v2, Lcom/android/launcher2/HomeItem;->hidden:Z

    if-nez v8, :cond_5

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    new-instance v5, Lcom/android/launcher2/LauncherModel$LoaderTask$12;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$12;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/List;)V

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v8, v5}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_a
    sget-object v8, Lcom/android/launcher2/CellLayout;->mItemComparator_TR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget-object v9, v2, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v9, v10, :cond_c

    iget v9, v2, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    if-gtz v9, :cond_b

    new-instance v5, Lcom/android/launcher2/LauncherModel$LoaderTask$13;

    invoke-direct {v5, p0, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$13;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeItem;)V

    :goto_5
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v9, v5}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_c
    new-instance v5, Lcom/android/launcher2/LauncherModel$LoaderTask$14;

    invoke-direct {v5, p0, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$14;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeItem;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v5, Lcom/android/launcher2/LauncherModel$LoaderTask$15;

    invoke-direct {v5, p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$15;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/HashMap;)V

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v8, v5}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private bindWorkspace()V
    .locals 24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-string v18, "Launcher.Model"

    const-string v19, "bindWorkspace()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v18

    if-nez v18, :cond_0

    const-string v18, "Launcher.Model"

    const-string v19, "LoaderTask running with no launcher"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$16;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$16;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v4, 0x0

    const v18, 0x7f0b0009

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    const v19, 0x7f0b000a

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v9

    sget-object v18, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    instance-of v0, v8, Lcom/android/launcher2/HomeWidgetItem;

    move/from16 v18, v0

    if-nez v18, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v18

    if-eqz v18, :cond_2

    iget-object v0, v8, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    iget-object v0, v8, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v8, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-object v0, v8, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v8, Lcom/android/launcher2/HomeItem;->cellX:I

    iget-object v0, v8, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/android/launcher2/HomeItem;->mPosistionBackup:Lcom/android/launcher2/HomeItem$PosistionBackup;

    :cond_2
    iget-wide v0, v8, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x65

    cmp-long v18, v20, v22

    if-nez v18, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v18

    if-eqz v18, :cond_3

    move/from16 v18, v9

    :goto_2
    move/from16 v0, v18

    if-ge v4, v0, :cond_4

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v18, v9, -0x1

    goto :goto_2

    :cond_4
    iget-wide v0, v8, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x64

    cmp-long v18, v20, v22

    if-nez v18, :cond_1

    iget-boolean v0, v8, Lcom/android/launcher2/HomeItem;->hidden:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    iget v0, v8, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mCurrentPage:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    const-string v18, "Launcher.Model"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    hotseat : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_7

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$17;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$17;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_7
    const-string v18, "Launcher.Model"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    workspaceCurrentPage : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$18;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v8}, Lcom/android/launcher2/LauncherModel$LoaderTask$18;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_8
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sget-object v18, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v18, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    const-string v18, "Launcher.Model"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    folders : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v18

    if-lez v18, :cond_a

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$19;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask$19;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/HashMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_a
    const-string v18, "Launcher.Model"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    widgets : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_b
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v13, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    move/from16 v19, v0

    if-gtz v19, :cond_b

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$20;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v13}, Lcom/android/launcher2/LauncherModel$LoaderTask$20;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_c
    const-string v18, "Launcher.Model"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    workspaceOtherPage : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$21;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v8}, Lcom/android/launcher2/LauncherModel$LoaderTask$21;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeItem;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_d
    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$22;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$22;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$23;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v14, v15}, Lcom/android/launcher2/LauncherModel$LoaderTask$23;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private bindWorkspaceFestival()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "Launcher.Model"

    const-string v6, "LoaderTask running with no launcher"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v5, "Launcher.Model"

    const-string v6, "bindWorkspaceFestival(), "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeWidgetItem;

    iget v6, v4, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    if-lez v6, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v5, :cond_3

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkBindFestivalWorkspace(Ljava/util/List;)V

    :cond_3
    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$24;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask$24;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;J)V

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private changeScreenIdInAppsDataBase(Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-boolean v11, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsModeChanged:Z

    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {p1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget v11, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget v11, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v8, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget v12, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget v12, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    if-eq v12, v5, :cond_3

    iput v5, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    new-instance v4, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v4}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    iget-wide v12, v1, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v12, v4, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v12, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v12, v4, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v10, Lcom/android/launcher2/LauncherModel$LoaderTask$36;

    invoke-direct {v10, p0, v7}, Lcom/android/launcher2/LauncherModel$LoaderTask$36;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/ArrayList;)V

    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private checkBindFestivalWorkspace(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4}, Lcom/android/launcher2/FestivalPageManager;->getCurrentFestivalString(Lcom/android/launcher2/LauncherApplication;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v4

    if-lez v4, :cond_4

    move v1, v3

    :goto_1
    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsFestival:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsFestivalModeChanged:Z

    if-nez v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    new-instance v2, Lcom/android/launcher2/LauncherModel$LoaderTask$33;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask$33;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_3
    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsFestival:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkBindFestivalWorkspace festivalString : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsFestival:Z

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindFestivalPageModeChange()V

    new-instance v2, Lcom/android/launcher2/LauncherModel$LoaderTask$34;

    invoke-direct {v2, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$34;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkChangedComponentExist()V
    .locals 7

    const/4 v5, 0x0

    const-string v4, "Launcher.Model"

    const-string v6, "checkChangedComponentExist"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0f0001

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    array-length v6, v2

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v3, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask;->replaceComponent(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Launcher.Model"

    const-string v5, "needReverseCheck"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask;->replaceComponent(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_1
    return-void
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-boolean v5, p2, Lcom/android/launcher2/HomeItem;->hidden:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportMoveApps()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/16 v6, -0x7b

    if-eq v5, v6, :cond_0

    :cond_2
    iget-wide v6, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-nez v5, :cond_5

    aget-object v5, p1, v3

    iget v6, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    aget-object v5, v5, v6

    aget-object v5, v5, v4

    if-eqz v5, :cond_4

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_3

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut into hotseat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into position ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") occupied by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v3, p1, v3

    iget v7, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    aget-object v3, v3, v7

    aget-object v3, v3, v4

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    aget-object v5, p1, v3

    iget v6, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    aget-object v5, v5, v6

    aput-object p2, v5, v4

    goto :goto_0

    :cond_5
    iget-wide v6, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget v1, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    :goto_1
    iget v5, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, p2, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_9

    iget v2, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    :goto_2
    iget v5, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v6, p2, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_8

    aget-object v5, p1, v4

    aget-object v5, v5, v1

    aget-object v5, v5, v2

    if-eqz v5, :cond_7

    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v3, :cond_6

    const-string v3, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading shortcut "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " into cell ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") occupied by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v4

    aget-object v6, v6, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v3, v4

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    iget v1, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    :goto_3
    iget v5, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, p2, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    iget v2, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    :goto_4
    iget v5, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v6, p2, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_a

    aget-object v5, p1, v4

    aget-object v5, v5, v1

    aput-object p2, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private getAllAppsItems()Landroid/util/Pair;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PkgResCache$CacheKey;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v23

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    sget-object v29, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v18, v0

    sget-object v29, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/4 v11, 0x0

    new-instance v10, Ljava/util/ArrayList;

    sget-object v29, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v29

    move/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v29, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_0

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-int/lit8 v12, v11, 0x1

    aput-wide v14, v18, v11

    move v11, v12

    goto :goto_0

    :cond_0
    const/16 v22, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    sget-object v29, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget-wide v32, v18, v22

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v29, v0

    if-eqz v29, :cond_1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v29, v0

    sget-object v32, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v7, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-direct {v7, v8, v0}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_2

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v29

    aput v22, v19, v29

    :cond_1
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v10, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    sget-object v29, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    aget v32, v19, v13

    aget-wide v32, v18, v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v32, v0

    const-wide/16 v34, -0x65

    cmp-long v29, v32, v34

    if-nez v29, :cond_3

    iget-wide v0, v4, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v32, v0

    const-wide/16 v34, -0x65

    cmp-long v29, v32, v34

    if-eqz v29, :cond_3

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput v22, v19, v13

    goto :goto_2

    :cond_3
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v32, v0

    const-wide/16 v34, -0x64

    cmp-long v29, v32, v34

    if-nez v29, :cond_4

    iget-wide v0, v4, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v29, v32, v34

    if-ltz v29, :cond_4

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput v22, v19, v13

    goto :goto_2

    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v9}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v26

    sget-boolean v29, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v29, :cond_6

    const-string v29, "Launcher.Model"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "profiles : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_7
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v30

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v32

    if-nez v32, :cond_8

    const-wide/16 v32, 0x64

    cmp-long v32, v30, v32

    if-gez v32, :cond_7

    :cond_8
    const/16 v32, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v6

    sget-boolean v32, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v32, :cond_9

    const-string v32, "Launcher.Model"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "user : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/compat/UserHandleCompat;->hashCode()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_7

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_a
    :goto_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_7

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_a

    new-instance v7, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, v27

    invoke-direct {v7, v8, v0}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_c

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v33, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v33, :cond_b

    const-string v33, "Launcher.Model"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Add, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    sget-boolean v33, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v33, :cond_b

    const-string v33, "Launcher.Model"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Exist, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_11

    sget-object v29, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    sget-object v29, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_e
    :goto_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_11

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v32, v0

    if-eqz v32, :cond_e

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v32, v0

    sget-object v33, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/launcher2/HomeItem;->hidden:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    :cond_f
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeItem;->isPromise()Z

    move-result v32

    if-nez v32, :cond_e

    new-instance v7, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v32

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v7, v0, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_e

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_10

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v33

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v32

    if-nez v32, :cond_e

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x2000

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v25

    if-nez v25, :cond_e

    :cond_10
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_11
    new-instance v29, Landroid/util/Pair;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v29
.end method

.method private getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v2, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v1, v0

    :cond_0
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadAllApps()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->getPreferredMenuPageIndex()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/MenuAppLoader;->loadAllItems(I)Ljava/util/Map;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v4, Lcom/android/launcher2/LauncherModel$LoaderTask$28;

    invoke-direct {v4, p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$28;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadAndBindAllApps(Z)V
    .locals 6

    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAndBindAllApps mAllAppsLoaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v5, v5, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRefreshRequired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v5, v5, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllApps()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "Launcher.Model"

    const-string v4, "LoaderTask aborted or running with no launcher (bindAllApps)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v4, Lcom/android/launcher2/LauncherModel$LoaderTask$25;

    invoke-direct {v4, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$25;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->changeScreenIdInAppsDataBase(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->getPreferredMenuPageIndex()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    new-instance v4, Lcom/android/launcher2/LauncherModel$LoaderTask$26;

    invoke-direct {v4, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$26;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher2/MenuAppLoader;->refreshAllApps(ILcom/android/launcher2/MenuAppLoader$BindListener;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private loadAndBindWorkspaceFirst()V
    .locals 3

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindWorkspaceFirst mWorkspaceLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->unbindAllHomeItemsOnMainThread()V

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->makePageValuesMap()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindHomePageAdjust(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindPageDoing(Z)V

    iget v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindPageWorkspace(Ljava/util/HashMap;)V

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mCurrentPage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadAndBindWorkspaceSecond()V
    .locals 14

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    iget v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mCurrentPage:I

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int v9, v10, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v4, :cond_0

    move v4, v8

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-gt v2, v4, :cond_2

    iget-boolean v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v9, :cond_6

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    iget-boolean v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsBindInProgress:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindPageDoing(Z)V

    :cond_3
    iget-boolean v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspaceFestival()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportWorkFolder()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v10, v10, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/launcher2/LauncherModel;->afterLoadAllApps(Landroid/content/Context;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getAllAppsItems()Landroid/util/Pair;

    move-result-object v7

    iget-object v5, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v9, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "needToRemoveItems: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v10, Lcom/android/launcher2/LauncherModel$LoaderTask$4;

    invoke-direct {v10, p0, v1, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PkgResCache$CacheKey;

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v11, v0, Lcom/android/launcher2/PkgResCache$CacheKey;->componentName:Landroid/content/ComponentName;

    iget-object v12, v0, Lcom/android/launcher2/PkgResCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    # invokes: Lcom/android/launcher2/LauncherModel;->addShortcutHomeOnly(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/BaseItem$Type;)V
    invoke-static {v10, v11, v12, v1, v13}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/BaseItem$Type;)V

    goto :goto_2

    :cond_6
    iget v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mCurrentPage:I

    add-int/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mCurrentPage:I

    add-int/2addr v9, v2

    invoke-direct {p0, v9}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace(I)Ljava/util/HashMap;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindPageWorkspace(Ljava/util/HashMap;)V

    :cond_7
    iget v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mCurrentPage:I

    sub-int/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mCurrentPage:I

    sub-int/2addr v9, v2

    invoke-direct {p0, v9}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace(I)Ljava/util/HashMap;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindPageWorkspace(Ljava/util/HashMap;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindHomeValidationCheck()V

    iget-boolean v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsFestival:Z

    if-nez v9, :cond_a

    iget-boolean v9, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsModeChanged:Z

    if-eqz v9, :cond_b

    :cond_a
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->runBindFestivalPage()V

    :cond_b
    return-void
.end method

.method private loadLayoutIfNecessary()Z
    .locals 11

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v4

    if-eqz v4, :cond_4

    new-array v3, v9, [I

    new-array v2, v9, [I

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v8, v3}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider;->checkOmcAutoInstallApp()Z

    move-result v0

    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isExistOmcAutoInstallApp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "Launcher.Model"

    const-string v9, "Play AUTO install Layout load start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider;->loadDefaultFavoritesIfNecessary()Z

    move-result v1

    const-string v8, "Launcher.Model"

    const-string v9, "Play AUTO install Layout load end"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider;->loadOmcLayout()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherProvider;->updateOmcAutoInstallApp()V

    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherApplication;->setLoadLayout(Landroid/content/Context;Z)V

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v8, v2}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    aget v8, v3, v7

    aget v9, v2, v7

    if-ne v8, v9, :cond_3

    aget v8, v3, v6

    aget v9, v2, v6

    if-eq v8, v9, :cond_4

    :cond_3
    aget v8, v2, v7

    aget v9, v2, v6

    invoke-static {v8, v9, v7}, Lcom/android/launcher2/LauncherApplication;->setLauncherGridSize(IIZ)V

    aget v7, v2, v7

    aget v8, v2, v6

    invoke-static {v7, v8}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    new-instance v5, Lcom/android/launcher2/LauncherModel$LoaderTask$10;

    invoke-direct {v5, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    iget-object v7, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v7, v5}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return v6

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method private loadWidgetItem(Landroid/content/Context;Lcom/android/launcher2/LauncherSettings$FavoriteValue;Ljava/util/ArrayList;[[[Lcom/android/launcher2/HomeItem;)Lcom/android/launcher2/HomeWidgetItem;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher2/LauncherSettings$FavoriteValue;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;[[[",
            "Lcom/android/launcher2/HomeItem;",
            ")",
            "Lcom/android/launcher2/HomeWidgetItem;"
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->intent:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return-object v10

    :catch_0
    move-exception v7

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->profileId:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v21

    if-nez v21, :cond_2

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->restored:I

    move/from16 v18, v0

    and-int/lit8 v24, v18, 0x2

    if-nez v24, :cond_4

    const/16 v23, 0x1

    :goto_1
    invoke-static/range {v19 .. v19}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/launcher2/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v14

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v24

    if-nez v24, :cond_5

    if-eqz v23, :cond_5

    if-nez v14, :cond_5

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " appWidgetId="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->appWidgetId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-boolean v24, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v24, :cond_3

    const-string v24, "Launcher.Model"

    move-object/from16 v0, v24

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v24, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v23, 0x0

    goto :goto_1

    :cond_5
    if-eqz v14, :cond_b

    if-eqz v16, :cond_b

    new-instance v10, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->appWidgetId:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v10, v0, v1}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    and-int/lit8 v20, v18, -0x9

    if-nez v23, :cond_6

    and-int/lit8 v24, v18, 0x1

    if-nez v24, :cond_9

    const/4 v13, 0x1

    :goto_2
    if-eqz v13, :cond_a

    const/16 v20, 0x4

    :cond_6
    :goto_3
    move/from16 v0, v20

    iput v0, v10, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    :goto_4
    move-object/from16 v0, v21

    iput-object v0, v10, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->restored:I

    move/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->icon:[B

    move-object/from16 v25, v0

    # invokes: Lcom/android/launcher2/LauncherModel;->getIconFromCursor([B)Landroid/graphics/Bitmap;
    invoke-static/range {v24 .. v25}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;[B)Landroid/graphics/Bitmap;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v10, Lcom/android/launcher2/HomeWidgetItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_7
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    iput-wide v0, v10, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->screen:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v10, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellX:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v10, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellY:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v10, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->spanX:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v10, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->spanY:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v10, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->festival:I

    move/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->festival:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v10, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    :cond_8
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    const-wide/16 v24, -0x64

    cmp-long v24, v8, v24

    if-eqz v24, :cond_f

    const-wide/16 v24, -0x65

    cmp-long v24, v8, v24

    if-eqz v24, :cond_f

    const-string v24, "Launcher.Model"

    const-string v25, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_a
    and-int/lit8 v20, v20, -0x3

    goto/16 :goto_3

    :cond_b
    const-string v24, "Launcher.Model"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Widget restore pending id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " appWidgetId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->appWidgetId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " status ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->appWidgetId:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-direct {v10, v6, v0}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    move/from16 v0, v18

    iput v0, v10, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    and-int/lit8 v24, v18, 0x8

    if-eqz v24, :cond_d

    :cond_c
    :goto_5
    if-nez v11, :cond_e

    const/16 v24, 0x0

    :goto_6
    move/from16 v0, v24

    iput v0, v10, Lcom/android/launcher2/HomeWidgetItem;->installProgress:I

    goto/16 :goto_4

    :cond_d
    if-eqz v11, :cond_c

    iget v0, v10, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x8

    move/from16 v0, v24

    iput v0, v10, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    goto :goto_5

    :cond_e
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v24

    goto :goto_6

    :cond_f
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    iput-wide v0, v10, Lcom/android/launcher2/HomeWidgetItem;->container:J

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v10}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v24

    if-nez v24, :cond_10

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v10}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    iget v0, v10, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    :cond_11
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v10}, Lcom/android/launcher2/HomeWidgetItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v24, "intent"

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "restored"

    iget v0, v10, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v24

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel$LoaderTask;->updateItem(Landroid/content/Context;JLandroid/content/ContentValues;)V

    goto/16 :goto_0
.end method

.method private loadWorkspace(I)Ljava/util/HashMap;
    .locals 81
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v72

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v77

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v53

    invoke-static {v5}, Lcom/android/launcher2/Utilities;->isExistSdCard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "com.android.launcher2.SYSTEM_READY"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_5

    const/16 v50, 0x1

    :goto_0
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    new-instance v70, Ljava/util/ArrayList;

    invoke-direct/range {v70 .. v70}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v11

    add-int v71, v4, v11

    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadWorkspace screenCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v71

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isSdCardReady="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v50

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    if-eqz v4, :cond_0

    sget v4, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x6

    sput v4, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    const/4 v4, 0x6

    sput v4, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    :cond_1
    const/4 v4, 0x2

    sget v11, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    add-int/lit8 v11, v11, 0x1

    sget v12, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    add-int/lit8 v12, v12, 0x1

    filled-new-array {v4, v11, v12}, [I

    move-result-object v4

    const-class v11, Lcom/android/launcher2/HomeItem;

    invoke-static {v11, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, [[[Lcom/android/launcher2/HomeItem;

    const/16 v48, 0x0

    const/16 v55, 0x0

    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mCurrentPage:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/ArrayList;

    if-eqz v63, :cond_2

    move-object/from16 v0, v40

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/ArrayList;

    if-eqz v63, :cond_3

    move-object/from16 v0, v40

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadworkspace failed for this screen : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v62, 0x0

    :cond_4
    return-object v62

    :cond_5
    const/16 v50, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v50, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance v62, Ljava/util/HashMap;

    invoke-direct/range {v62 .. v62}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v80

    :cond_8
    :goto_1
    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v80 .. v80}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_12

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_a

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v55

    if-ge v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v11, 0x0

    iput-boolean v11, v4, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    :cond_a
    if-eqz v48, :cond_b

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/LauncherModel$LoaderTask;->rearrangeHotseatData(Ljava/util/ArrayList;)V

    :cond_b
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderMultiSelection()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    sget-object v11, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Lcom/android/launcher2/LauncherModel;->updateHiddenAddButtonInHomeFolder(Ljava/util/Map;)V

    :cond_c
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_51

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v32

    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_d
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget-wide v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    cmp-long v12, v44, v12

    if-nez v12, :cond_e

    iget-object v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->intent:Ljava/lang/String;

    if-eqz v12, :cond_e

    const/4 v7, 0x0

    const/16 v64, 0x0

    :try_start_1
    iget-object v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->intent:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v64

    :cond_f
    const/16 v59, 0x0

    const/16 v43, 0x0

    :goto_4
    sget-object v12, Lcom/android/launcher2/LauncherModel;->BACKUP_POSITION_PKG_LIST:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, v43

    if-ge v0, v12, :cond_10

    sget-object v12, Lcom/android/launcher2/LauncherModel;->BACKUP_POSITION_PKG_LIST:[Ljava/lang/String;

    aget-object v12, v12, v43

    move-object/from16 v0, v64

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4f

    const/16 v59, 0x1

    :cond_10
    if-eqz v59, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v12, "com.sec.android.app.launcher.prefs"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ";"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->screen:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ";"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellX:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ";"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellY:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v66

    move-object/from16 v1, v64

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v66 .. v66}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_11
    const-string v4, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removed id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, v44

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v32, :cond_d

    const/4 v4, 0x0

    :try_start_2
    move-wide/from16 v0, v44

    invoke-static {v0, v1, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v12, v13}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v38

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_d

    const-string v4, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not remove id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, v44

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_12
    add-int/lit8 v55, v55, 0x1

    :try_start_3
    iget v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->itemType:I

    move/from16 v51, v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_13
    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->restored:I

    if-eqz v4, :cond_16

    const/16 v69, 0x1

    :goto_5
    const/16 v19, 0x0

    iget-wide v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_14
    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "already contain, id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v44

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v38

    :try_start_4
    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_8

    const-string v4, "Launcher.Model"

    const-string v11, "Desktop items loading interrupted:"

    move-object/from16 v0, v38

    invoke-static {v4, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v11, :cond_15

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, v55

    if-ge v0, v11, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    :cond_15
    throw v4

    :cond_16
    const/16 v69, 0x0

    goto :goto_5

    :cond_17
    const/16 v69, 0x0

    goto :goto_5

    :cond_18
    sparse-switch v51, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    :try_start_5
    iget-object v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->intent:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v4, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mUserManager:Lcom/android/launcher2/compat/UserManagerCompat;

    iget-wide v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->profileId:J

    invoke-virtual {v4, v12, v13}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v14

    iget v8, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->restored:I

    const/16 v37, 0x0

    if-nez v14, :cond_19

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_2
    move-exception v38

    goto/16 :goto_1

    :cond_19
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_2d

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v14}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v75

    if-eqz v75, :cond_21

    move-object/from16 v0, v53

    invoke-virtual {v0, v9, v14}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/16 v74, 0x1

    :goto_6
    if-eqz v74, :cond_22

    if-eqz v69, :cond_1a

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v69, 0x0

    :cond_1a
    :goto_7
    if-eqz v69, :cond_30

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    const-string v11, "constructing info for partially restored package"

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->getRestoredItemInfo(Landroid/content/Context;Lcom/android/launcher2/LauncherSettings$FavoriteValue;Landroid/content/Intent;ILandroid/content/ComponentName;Landroid/content/pm/PackageManager;)Lcom/android/launcher2/HomeShortcutItem;
    invoke-static/range {v4 .. v10}, Lcom/android/launcher2/LauncherModel;->access$1400(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/LauncherSettings$FavoriteValue;Landroid/content/Intent;ILandroid/content/ComponentName;Landroid/content/pm/PackageManager;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v46

    and-int/lit8 v4, v8, 0x2

    if-eqz v4, :cond_1b

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    :cond_1b
    :goto_8
    if-eqz v46, :cond_39

    move-object/from16 v0, v46

    iput-object v7, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    iget-wide v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move-object/from16 v0, v46

    iput-wide v12, v0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    iget-wide v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v46

    iput-wide v0, v2, Lcom/android/launcher2/HomeShortcutItem;->container:J

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->screen:I

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellX:I

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellY:I

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    const/4 v4, 0x1

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/launcher2/HomeShortcutItem;->spanX:I

    const/4 v4, 0x1

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/launcher2/HomeShortcutItem;->spanY:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->secret:I

    if-nez v4, :cond_34

    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, v46

    iput-boolean v4, v0, Lcom/android/launcher2/HomeShortcutItem;->hidden:Z

    if-nez v51, :cond_1c

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    const-string v11, "profile"

    iget-wide v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->profileId:J

    invoke-virtual {v4, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz v69, :cond_1c

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1c

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    const-string v11, "profile"

    iget-wide v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->profileId:J

    invoke-virtual {v4, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1c
    move/from16 v0, v37

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/launcher2/HomeShortcutItem;->isDisabled:I

    if-eqz v49, :cond_1d

    invoke-static {v5, v7}, Lcom/android/launcher2/Utilities;->isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/launcher2/HomeShortcutItem;->isDisabled:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/launcher2/HomeShortcutItem;->isDisabled:I

    const/4 v4, 0x1

    move-object/from16 v0, v46

    iput-boolean v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mUnavailable:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v16, -0x65

    cmp-long v4, v12, v16

    if-nez v4, :cond_35

    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wrong hotseat item : we remove the item in launcher.db - item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v46

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v48, 0x1

    :cond_1e
    if-eqz v69, :cond_1f

    invoke-virtual/range {v46 .. v46}, Lcom/android/launcher2/HomeShortcutItem;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Ljava/lang/Integer;

    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "progress : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v67

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v67, :cond_37

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lcom/android/launcher2/HomeShortcutItem;->setInstallProgress(I)V

    :cond_1f
    :goto_a
    const-wide/16 v12, -0x64

    cmp-long v4, v34, v12

    if-eqz v4, :cond_20

    const-wide/16 v12, -0x65

    cmp-long v4, v34, v12

    if-nez v4, :cond_38

    :cond_20
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v46

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v62

    move-object/from16 v1, v46

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    sget-object v11, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v46

    invoke-virtual {v4, v11, v0, v6}, Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Lcom/android/launcher2/LauncherSettings$FavoriteValue;)Z

    goto/16 :goto_1

    :cond_21
    const/16 v74, 0x0

    goto/16 :goto_6

    :cond_22
    if-eqz v75, :cond_26

    const/4 v7, 0x0

    and-int/lit8 v4, v8, 0x2

    if-nez v4, :cond_23

    and-int/lit8 v4, v8, 0x4

    if-nez v4, :cond_23

    and-int/lit8 v4, v8, 0x20

    if-eqz v4, :cond_24

    :cond_23
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_24

    new-instance v76, Landroid/content/ContentValues;

    invoke-direct/range {v76 .. v76}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "intent"

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v76

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-object/from16 v3, v76

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask;->updateItem(Landroid/content/Context;JLandroid/content/ContentValues;)V

    :cond_24
    if-nez v7, :cond_25

    sget-object v4, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid component removed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_25
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v69, 0x0

    goto/16 :goto_7

    :cond_26
    if-eqz v69, :cond_29

    sget-object v4, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "package not yet restored: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "installingPkgs.containsKey : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v4, v8, 0x10

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    or-int/lit8 v8, v8, 0x10

    new-instance v76, Landroid/content/ContentValues;

    invoke-direct/range {v76 .. v76}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "restored"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v76

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    move-object/from16 v3, v76

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask;->updateItem(Landroid/content/Context;JLandroid/content/ContentValues;)V

    goto/16 :goto_7

    :cond_27
    and-int/lit8 v4, v8, 0x2

    if-nez v4, :cond_28

    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_1a

    :cond_28
    sget-object v4, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UnRestored package removed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_29
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v11, 0x2000

    move-object/from16 v0, v53

    invoke-virtual {v0, v10, v4, v11}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isAppEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package is present but not available "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    const/16 v37, 0x2

    goto/16 :goto_7

    :cond_2a
    if-nez v50, :cond_2c

    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (check again later)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Ljava/util/HashSet;

    if-nez v65, :cond_2b

    new-instance v65, Ljava/util/HashSet;

    invoke-direct/range {v65 .. v65}, Ljava/util/HashSet;-><init>()V

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    move-object/from16 v0, v65

    invoke-virtual {v4, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v19, 0x1

    goto/16 :goto_7

    :cond_2c
    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid package removed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2d
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v4

    if-eqz v4, :cond_2e

    if-nez v9, :cond_2e

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v69, 0x0

    goto/16 :goto_7

    :cond_2e
    if-nez v9, :cond_1a

    const/4 v4, 0x1

    move/from16 v0, v51

    if-ne v0, v4, :cond_1a

    and-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_1a

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v69, 0x0

    goto/16 :goto_7

    :cond_2f
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_30
    if-nez v51, :cond_31

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v15, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object v12, v10

    move-object v13, v7

    invoke-virtual/range {v11 .. v20}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZLcom/android/launcher2/BaseItem$Type;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v46

    if-eqz v46, :cond_1b

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_1b

    iget-object v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_8

    :cond_31
    invoke-static {v7}, Lcom/android/launcher2/HomeItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v15, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    move-object v12, v10

    move-object v13, v7

    invoke-virtual/range {v11 .. v20}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/Context;Landroid/database/Cursor;IIZLcom/android/launcher2/BaseItem$Type;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v46

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconType:I

    if-nez v4, :cond_32

    iget-object v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->icon:[B

    if-nez v4, :cond_32

    if-eqz v46, :cond_32

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_32

    new-instance v76, Landroid/content/ContentValues;

    invoke-direct/range {v76 .. v76}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "iconType"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v76

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4}, Lcom/android/launcher2/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v36

    const-string v4, "icon"

    move-object/from16 v0, v76

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-wide v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-direct {v0, v5, v12, v13, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->updateItem(Landroid/content/Context;JLandroid/content/ContentValues;)V

    :cond_32
    :goto_c
    if-eqz v46, :cond_1b

    move-object/from16 v0, v46

    iget-object v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_1b

    iget-object v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    move-object/from16 v0, v46

    iput-object v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    goto/16 :goto_8

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v21, v0

    iget v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconType:I

    move/from16 v22, v0

    iget-object v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconResource:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->icon:[B

    move-object/from16 v25, v0

    iget-object v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconMovieUri:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v28, v10

    move-object/from16 v29, v7

    move-object/from16 v30, v14

    invoke-virtual/range {v20 .. v30}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v46

    goto :goto_c

    :cond_34
    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_35
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1e

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_36

    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HomeOnlyMode] wrong position loading shortcut "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v44

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", removing it"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_37
    move-object/from16 v0, v46

    iget v4, v0, Lcom/android/launcher2/HomeShortcutItem;->status:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, v46

    iput v4, v0, Lcom/android/launcher2/HomeShortcutItem;->status:I

    goto/16 :goto_a

    :cond_38
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v34

    invoke-static {v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->loadItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_b

    :cond_39
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_8

    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error loading shortcut "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v44

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", removing it"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :sswitch_1
    const/16 v47, 0x1

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    iget-wide v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move-object/from16 v0, v39

    iget-wide v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    move-wide/from16 v16, v0

    cmp-long v11, v12, v16

    if-nez v11, :cond_3a

    const/16 v47, 0x0

    :cond_3b
    if-nez v47, :cond_41

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v44

    invoke-static {v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v41

    iget-object v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    move-object/from16 v0, v41

    iput-object v4, v0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    move-wide/from16 v0, v44

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    iget-wide v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/launcher2/HomeFolderItem;->container:J

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->screen:I

    move-object/from16 v0, v41

    iput v4, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellX:I

    move-object/from16 v0, v41

    iput v4, v0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellY:I

    move-object/from16 v0, v41

    iput v4, v0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    const/4 v4, 0x1

    move-object/from16 v0, v41

    iput v4, v0, Lcom/android/launcher2/HomeFolderItem;->spanX:I

    const/4 v4, 0x1

    move-object/from16 v0, v41

    iput v4, v0, Lcom/android/launcher2/HomeFolderItem;->spanY:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->color:I

    move-object/from16 v0, v41

    iput v4, v0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->options:I

    move-object/from16 v0, v41

    iput v4, v0, Lcom/android/launcher2/HomeFolderItem;->options:I

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-wide/16 v12, -0x64

    cmp-long v4, v34, v12

    if-eqz v4, :cond_3c

    const-wide/16 v12, -0x65

    cmp-long v4, v34, v12

    if-nez v4, :cond_3d

    :cond_3c
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    if-eqz v69, :cond_3e

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v41

    iget-wide v12, v0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v41

    iget-wide v12, v0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-object/from16 v0, v41

    iget-wide v12, v0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mFolderLock:Lcom/android/launcher2/FolderLock;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/FolderLock;

    move-result-object v4

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mFolderLock:Lcom/android/launcher2/FolderLock;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/FolderLock;

    move-result-object v4

    const-string v11, "home_only_locked_items"

    move-wide/from16 v0, v44

    invoke-virtual {v4, v11, v0, v1}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v4

    if-nez v4, :cond_40

    :cond_3f
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mFolderLock:Lcom/android/launcher2/FolderLock;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/FolderLock;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mFolderLock:Lcom/android/launcher2/FolderLock;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/FolderLock;

    move-result-object v4

    const-string v11, "home_locked_items"

    move-wide/from16 v0, v44

    invoke-virtual {v4, v11, v0, v1}, Lcom/android/launcher2/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_40
    const/4 v4, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lcom/android/launcher2/HomeFolderItem;->setIsLockFolder(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mFolderLock:Lcom/android/launcher2/FolderLock;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/FolderLock;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Lcom/android/launcher2/FolderLock;->lockFolder(Lcom/android/launcher2/BaseItem;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mFolderLock:Lcom/android/launcher2/FolderLock;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/FolderLock;

    move-result-object v4

    const/4 v11, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v4, v0, v11}, Lcom/android/launcher2/FolderLock;->isTempUnlockedFolder(Lcom/android/launcher2/FolderItem;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Lcom/android/launcher2/HomeFolderItem;->setOpenOnce(Z)V

    goto/16 :goto_1

    :cond_41
    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] is empty - home load"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->screen:I

    const/16 v11, -0x7b

    if-ne v4, v11, :cond_8

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v4

    if-eqz v4, :cond_43

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v61

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWidgetItem(Landroid/content/Context;Lcom/android/launcher2/LauncherSettings$FavoriteValue;Ljava/util/ArrayList;[[[Lcom/android/launcher2/HomeItem;)Lcom/android/launcher2/HomeWidgetItem;

    move-result-object v42

    if-eqz v42, :cond_8

    :cond_42
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v42

    iget-wide v12, v0, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v42

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v42

    iget-wide v12, v0, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v62

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_43
    iget v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->appWidgetId:I

    move/from16 v31, v0

    move-object/from16 v0, v77

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v68

    if-nez v49, :cond_45

    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_45

    if-nez v68, :cond_45

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " appWidgetId="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_44

    const-string v4, "Launcher.Model"

    move-object/from16 v0, v56

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    sget-object v4, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_45
    const/16 v42, 0x0

    if-nez v42, :cond_46

    if-eqz v68, :cond_46

    new-instance v42, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v42

    move-object/from16 v1, v68

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    :cond_46
    if-eqz v42, :cond_8

    move-wide/from16 v0, v44

    move-object/from16 v2, v42

    iput-wide v0, v2, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->screen:I

    move-object/from16 v0, v42

    iput v4, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellX:I

    move-object/from16 v0, v42

    iput v4, v0, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellY:I

    move-object/from16 v0, v42

    iput v4, v0, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->spanX:I

    move-object/from16 v0, v42

    iput v4, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->spanY:I

    move-object/from16 v0, v42

    iput v4, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->festival:I

    if-eqz v4, :cond_47

    iget v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->festival:I

    move-object/from16 v0, v42

    iput v4, v0, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    :cond_47
    iget-wide v0, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    move-wide/from16 v34, v0

    const-wide/16 v12, -0x64

    cmp-long v4, v34, v12

    if-eqz v4, :cond_48

    const-wide/16 v12, -0x65

    cmp-long v4, v34, v12

    if-eqz v4, :cond_48

    const-string v4, "Launcher.Model"

    const-string v11, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_48
    iget-wide v12, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    move-object/from16 v0, v42

    iput-wide v12, v0, Lcom/android/launcher2/HomeWidgetItem;->container:J

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    if-nez v4, :cond_42

    goto/16 :goto_1

    :sswitch_3
    const/4 v7, 0x0

    :try_start_7
    iget-object v4, v6, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->intent:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v4, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v7

    :try_start_8
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "weather"

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "com.sec.android.widgetapp.locationwidget"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_49
    new-instance v58, Lcom/android/launcher2/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v11, 0x400

    move-object/from16 v0, v58

    invoke-direct {v0, v4, v11}, Lcom/android/launcher2/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/Launcher;

    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    const/16 v60, 0x0

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "weather"

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    new-instance v60, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp"

    const-string v11, "com.sec.android.daemonapp.appwidget.WeatherAppWidget"

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_d
    move-object/from16 v0, v24

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v57, Lcom/android/launcher2/AppWidgetBinder;

    move-object/from16 v0, v57

    move-object/from16 v1, v26

    move-object/from16 v2, v77

    move-object/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/AppWidgetBinder;-><init>(Lcom/android/launcher2/Launcher;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/LauncherAppWidgetHost;)V

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    new-instance v20, Lcom/android/launcher2/LauncherModel$LoaderTask$11;

    move-object/from16 v21, p0

    move-object/from16 v22, v77

    move-object/from16 v23, v6

    move-object/from16 v25, v62

    invoke-direct/range {v20 .. v26}, Lcom/android/launcher2/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/LauncherSettings$FavoriteValue;Landroid/content/Intent;Ljava/util/HashMap;Lcom/android/launcher2/Launcher;)V

    move-object/from16 v0, v57

    move-object/from16 v1, v60

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    goto/16 :goto_1

    :catch_3
    move-exception v38

    goto/16 :goto_1

    :cond_4b
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    const-string v4, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v7, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4d

    const-string v4, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v7, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "Month"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    new-instance v60, Landroid/content/ComponentName;

    const-string v4, "com.android.calendar"

    const-string v11, "com.android.calendar.widget.MonthWidgetProvider"

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_4c
    const-string v4, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v7, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "Today_Schedule"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    new-instance v60, Landroid/content/ComponentName;

    const-string v4, "com.android.calendar"

    const-string v11, "com.android.calendar.widget.TodayWidgetProvider"

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_4d
    new-instance v60, Landroid/content/ComponentName;

    const-string v4, "com.android.calendar"

    const-string v11, "com.android.calendar.widget.MonthWidgetProvider"

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_4e
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v11, "com.sec.android.widgetapp.locationwidget"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    new-instance v60, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.widgetapp.locationwidget"

    const-string v11, "com.sec.android.widgetapp.locationwidget.LocationWidgetRm"

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_d

    :catch_4
    move-exception v38

    goto/16 :goto_3

    :cond_4f
    add-int/lit8 v43, v43, 0x1

    goto/16 :goto_4

    :cond_50
    if-eqz v32, :cond_51

    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentProviderClient;->release()Z

    :cond_51
    invoke-virtual/range {v70 .. v70}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_52

    new-instance v76, Landroid/content/ContentValues;

    invoke-direct/range {v76 .. v76}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "restored"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v76

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const-string v11, "_id"

    move-object/from16 v0, v70

    invoke-static {v11, v0}, Lcom/android/launcher2/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v76

    invoke-virtual {v0, v4, v1, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_52
    if-nez v50, :cond_53

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sPendingPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_53

    new-instance v4, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {v4, v11}, Lcom/android/launcher2/LauncherModel$AppsAvailabilityCheck;-><init>(Lcom/android/launcher2/LauncherModel;)V

    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "com.android.launcher2.SYSTEM_READY"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    sget-object v13, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v5, v4, v11, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_53
    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loaded workspace in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v72

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "workspace layout: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v79, 0x0

    :goto_e
    sget v4, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    move/from16 v0, v79

    if-ge v0, v4, :cond_4

    const-string v54, ""

    const/16 v78, 0x0

    :goto_f
    sget v4, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    move/from16 v0, v78

    if-ge v0, v4, :cond_55

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v4, 0x0

    aget-object v4, v61, v4

    aget-object v4, v4, v78

    aget-object v4, v4, v79

    if-eqz v4, :cond_54

    const-string v4, "#"

    :goto_10
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    add-int/lit8 v78, v78, 0x1

    goto :goto_f

    :cond_54
    const-string v4, "."

    goto :goto_10

    :cond_55
    const-string v4, "Launcher.Model"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v54

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v79, v79, 0x1

    goto :goto_e

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x385 -> :sswitch_3
    .end sparse-switch
.end method

.method private makePageValuesMap()I
    .locals 48

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/16 v16, -0x1

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_10

    :try_start_0
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    const-string v3, "itemType"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    const-string v3, "container"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v3, "screen"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    const-string v3, "cellX"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v3, "cellY"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v3, "spanX"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    const-string v3, "spanY"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    const-string v3, "title"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    const-string v3, "intent"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    const-string v3, "appWidgetId"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v3, "iconType"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    const-string v3, "iconPackage"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v3, "iconResource"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    const-string v3, "iconMovieUri"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    const-string v3, "icon"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    const-string v3, "color"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v3, "festival"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v3, "profileId"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    const-string v3, "modified"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    const-string v3, "restored"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    const-string v3, "newCue"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    const-string v3, "options"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    const-string v3, "secret"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v20, Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    invoke-direct/range {v20 .. v20}, Lcom/android/launcher2/LauncherSettings$FavoriteValue;-><init>()V

    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    move/from16 v0, v34

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->itemType:I

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    move/from16 v0, v42

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->screen:I

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellX:I

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->cellY:I

    move/from16 v0, v44

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->spanX:I

    move/from16 v0, v45

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->spanY:I

    move/from16 v0, v46

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->title:Ljava/lang/String;

    move/from16 v0, v32

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->intent:Ljava/lang/String;

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->appWidgetId:I

    move/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconType:I

    move/from16 v0, v28

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconPackage:Ljava/lang/String;

    move/from16 v0, v29

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconResource:Ljava/lang/String;

    move/from16 v0, v27

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->iconMovieUri:Ljava/lang/String;

    move/from16 v0, v26

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->icon:[B

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->color:I

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->festival:I

    move/from16 v0, v40

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->profileId:J

    move/from16 v0, v36

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->modified:I

    move/from16 v0, v41

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->restored:I

    move/from16 v0, v37

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->newCue:I

    move/from16 v0, v38

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->options:I

    move/from16 v0, v43

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v20

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->secret:I

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->itemType:I

    const/16 v4, 0x3eb

    if-eq v3, v4, :cond_0

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->screen:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    if-nez v35, :cond_4

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->itemType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    if-nez v18, :cond_6

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_2
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    if-nez v35, :cond_7

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->itemType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    if-nez v18, :cond_8

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_4
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v17

    :try_start_1
    const-string v3, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makePageValuesMap exception, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_5
    return v16

    :cond_4
    :try_start_2
    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    :cond_6
    :try_start_3
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/customer/TMO;->getHomeFolderID()J

    move-result-wide v8

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/customer/TMO;->setHomeFolderAdaptSupport(Z)V

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_b
    :goto_7
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/launcher2/LauncherSettings$FavoriteValue;

    if-eqz v19, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, v47

    iget-wide v4, v0, Lcom/android/launcher2/LauncherSettings$FavoriteValue;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/ArrayList;

    if-nez v35, :cond_c

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mPageValuesMap:Ljava/util/HashMap;

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_c
    move-object/from16 v0, v35

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_e

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/customer/TMO;->setHomeFolderAdaptSupport(Z)V

    goto/16 :goto_6

    :cond_f
    const-wide/16 v4, -0x1

    cmp-long v3, v8, v4

    if-lez v3, :cond_10

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/customer/TMO;->supportHomeFolderAdapt()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/customer/TMO;->disableHomeFolderAdapt()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_10
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5
.end method

.method private postModelRefreshed()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$27;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$27;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private rearrangeHotseatData(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iput v2, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    invoke-static {v4, v3}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeShortcutHomeOnly(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v11, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/HomeItem;

    iget-wide v6, v14, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    iget-wide v6, v14, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v11, :cond_3

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeShortcutHomeOnly: folderCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/launcher2/HomeFolderItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    invoke-static {v2, v11}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    :cond_2
    :goto_2
    move-object/from16 v16, v11

    move-object v10, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v6, Lcom/android/launcher2/LauncherModel$LoaderTask$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v6, v0, v1, v10}, Lcom/android/launcher2/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_3
    invoke-static {v2, v14}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v11}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {v11}, Lcom/android/launcher2/HomeFolderItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v11, :cond_6

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeFolderIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcom/android/launcher2/HomeFolderItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v11}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    :cond_7
    if-eqz v3, :cond_6

    iget-wide v4, v11, Lcom/android/launcher2/HomeFolderItem;->container:J

    iput-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    iget v4, v11, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    iput v4, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v11, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    iput v4, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v4, v11, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    iput v4, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    iget v6, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v7, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v16, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v5, Lcom/android/launcher2/LauncherModel$LoaderTask$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeFolderItem;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_8
    const-string v4, "Launcher.Model"

    const-string v5, "removeShortcutHomeOnly()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v4

    if-nez v4, :cond_9

    const-string v4, "Launcher.Model"

    const-string v5, "LoaderTask running with no launcher"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    new-instance v15, Lcom/android/launcher2/LauncherModel$LoaderTask$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v4, v15}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private replaceComponent(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v25

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "intent"

    aput-object v6, v4, v3

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_0
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v3, "\\|"

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 v0, v22

    array-length v3, v0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    const/4 v12, 0x0

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    aget-object v3, v22, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x0

    aget-object v3, v22, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v3, v6, v0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    aget-object v3, v22, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x1

    aget-object v3, v22, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    :cond_3
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mLauncherApps:Lcom/android/launcher2/compat/LauncherAppsCompat;

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v3, v6, v0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent like \'%"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_6

    :cond_4
    :goto_2
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v11, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    const-wide/16 v6, 0x0

    cmp-long v3, v18, v6

    if-lez v3, :cond_4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v14, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const/4 v3, 0x0

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v24

    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/HomeItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "itemType"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_4
    const-string v3, "intent"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Changed component updated : "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v28, " to "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_0
    move-exception v17

    const-string v3, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception : "

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V

    const-string v3, "componentName"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "componentName=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v28, 0x0

    aput-object v11, v7, v28

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/android/launcher2/ManagedProfileHeuristic;->changePackageList(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_b
    return-void
.end method

.method private runBindFestivalPage()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v1, v1, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expecting Workspace to be loaded"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Launcher.Model"

    const-string v2, "LoaderTask running with no launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask$29;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$29;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateItem(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    const-string v2, "_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, p4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private waitForIdle()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$8;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStep1Finished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method isLaunching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 10

    const/16 v5, 0xa

    const/4 v6, 0x0

    const-string v4, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Begin LoaderTask: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    const-string v4, "Launcher.Model"

    const-string v5, "Comparing loaded icons to database icons"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v9, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v4, v1

    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v8, v9, v4, v5}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V

    goto :goto_1

    :cond_1
    const-string v7, "Launcher.Model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting thread priority to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v4, :cond_3

    const-string v4, "DEFAULT"

    :goto_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, v4, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportLauncherHighPriority()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, -0x2

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_3
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v4, v4, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mRequireRefreshAll:Z
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4}, Lcom/android/launcher2/PkgResCache;->clear()V

    :cond_2
    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4}, Lcom/android/launcher2/LauncherApplication;->getLoadLayout(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadLayoutIfNecessary()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_5
    return-void

    :cond_3
    const-string v4, "BACKGROUND"

    goto :goto_2

    :cond_4
    :try_start_1
    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v4, :cond_5

    move v4, v6

    :goto_6
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_3

    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_5
    move v4, v5

    goto :goto_6

    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4}, Lcom/android/launcher2/PkgResCache;->clearTitle()V

    goto :goto_4

    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v4, v4, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v4, v4, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/compat/PackageInstallerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/PackageInstallerCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/compat/PackageInstallerCompat;->updateAndGetActiveSessionCache()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mInstallingPkgs:Ljava/util/HashMap;

    :cond_a
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->checkAppWidgetBinding()V
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)V

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/LauncherApplication;->getFirstRunVersion(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportCustomerDialerChange()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->checkAndChangeCallApp()V
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$700(Lcom/android/launcher2/LauncherModel;)V

    :cond_b
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->checkAppShortcut()V
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)V

    :cond_c
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->checkUninstalledApps()V
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$900(Lcom/android/launcher2/LauncherModel;)V

    :cond_d
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->checkFolderTranslation()V
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1000(Lcom/android/launcher2/LauncherModel;)V

    :cond_e
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportUpdateMSFodler()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # invokes: Lcom/android/launcher2/LauncherModel;->extraUpdateByFota()V
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)V

    :cond_f
    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsFestivalModeChanged:Z

    if-eqz v4, :cond_10

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindFestivalPageModeChange()V

    :cond_10
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v4}, Lcom/android/launcher2/Utilities;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/LauncherApplication;->isAppVersionChanged(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App version changed : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Launcher.Model"

    const-string v5, "check - item is exist in zero page"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/launcher2/LauncherApplication;->checkHomeModeScreenCount(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkChangedComponentExist()V

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/LauncherApplication;->setChangedAppVersion(Ljava/lang/String;)V

    :cond_11
    const-string v4, "Launcher.Model"

    const-string v5, "step 1: loading first workspace"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspaceFirst()V

    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v4, :cond_12

    const-string v4, "Launcher.Model"

    const-string v5, "Setting thread priority to BACKGROUND"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v4, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportLauncherHighPriority()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, -0x2

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_7
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_12
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->waitForIdle()V

    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v4, :cond_14

    const-string v4, "Launcher.Model"

    const-string v5, "step 1.5: if stop, no need next steps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    const/16 v4, 0xa

    :try_start_4
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_7

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    :cond_14
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v3, v4, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    const-string v4, "Launcher.Model"

    const-string v5, "step 2: trigger load all apps"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/launcher2/LauncherModel;->appsHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/launcher2/LauncherModel$LoaderTask$9;

    invoke-direct {v5, p0, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v4, "Launcher.Model"

    const-string v5, "step 3: loading remained workspace"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspaceSecond()V

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v4, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v4, 0x0

    :try_start_5
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    :cond_15
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-boolean v6, v4, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # setter for: Lcom/android/launcher2/LauncherModel;->mRequireRefreshAll:Z
    invoke-static {v4, v6}, Lcom/android/launcher2/LauncherModel;->access$502(Lcom/android/launcher2/LauncherModel;Z)Z

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v4, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    # getter for: Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;

    move-result-object v4

    if-ne v4, p0, :cond_16

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v6, 0x0

    # setter for: Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;
    invoke-static {v4, v6}, Lcom/android/launcher2/LauncherModel;->access$1302(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;

    :cond_16
    monitor-exit v5

    goto/16 :goto_5

    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v4
.end method

.method public stopLocked()V
    .locals 3

    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping LoaderTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->abortLoader()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
