.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;
.super Ljava/lang/Object;
.source "HWRLanguagePackManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableListUpdated:Z

.field private mContext:Landroid/content/Context;

.field private mDeleteReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

.field private mDownloadingListUpdated:Z

.field private mInstalledListUpdated:Z

.field private mIsRegisterReceiver:Z

.field private mIsUpdateInProgress:Z

.field private mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

.field private mLanguagePacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePacksNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

.field private mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

.field private final mRefreshListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServerConnection:Z

.field private mUpdateReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mAvailableListUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mInstalledListUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadingListUpdated:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mServerConnection:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->setOnLanguagePackListener(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateLanguageList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private updateLanguageList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :goto_0
    if-nez p2, :cond_3

    :goto_1
    if-nez p3, :cond_6

    :goto_2
    iget-boolean v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mAvailableListUpdated:Z

    if-nez v8, :cond_9

    :cond_0
    :goto_3
    return-void

    :cond_1
    sget-object v8, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[updateLanguageList] Available List, size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mAvailableListUpdated:Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    new-instance v6, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    invoke-direct {v6, v9, v8, v5}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isPreloaded()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPreloaded(Z)V

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    sget-object v8, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[updateLanguageList] Installed List, size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mInstalledListUpdated:Z

    goto/16 :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    new-instance v6, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    iget-object v9, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    invoke-direct {v6, v9, v8, v5}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Ljava/lang/String;)V

    sget-object v8, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Samsung HWR Language : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", Latest : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isLatest()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isLatest()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    :goto_6
    invoke-virtual {v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isPreloaded()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPreloaded(Z)V

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    goto :goto_6

    :cond_6
    sget-object v8, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[updateLanguageList] Downloading List, size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadingListUpdated:Z

    goto/16 :goto_2

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-eqz v6, :cond_7

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isPreloaded()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPreloaded(Z)V

    goto :goto_7

    :cond_9
    iget-boolean v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mInstalledListUpdated:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadingListUpdated:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "[updateLanguageList] All language list updated."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    iput-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    monitor-exit v0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_a
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;->onComplete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8
.end method


# virtual methods
.method public deleteResult(Ljava/lang/String;Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->notifyDeleteResult(Z)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    return-object v0
.end method

.method public getLanguagePacks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    return-object v0
.end method

.method public registerReceiver()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    if-nez v3, :cond_0

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_UPDATE_LANG_RESULT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mUpdateReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mUpdateReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_UPDATE_LANG_PROGRESS"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mProgressReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mProgressReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_DELETE_LANG_RESULT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDeleteReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDeleteReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    goto :goto_0
.end method

.method public setProgressLanguage(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setProgress(I)V

    goto :goto_0
.end method

.method public updateLanguageManager(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-nez p1, :cond_0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateLanguageManager()Z

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method public updateLanguageManager()Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mAvailableListUpdated:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mInstalledListUpdated:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadingListUpdated:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->isContentProviderAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->queryToGetAvailableList()Z

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->queryToGetInstalledLangList()Z

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->queryToGetDownloadingLangList()Z

    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mAvailableListUpdated:Z

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[updateLanguageManagerSync] ContentProvider is not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mInstalledListUpdated:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadingListUpdated:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateResourceListFromServer()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->updateResourceList()V

    goto :goto_0
.end method

.method public updateResult(Ljava/lang/String;I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->notifyUpdateResult(I)V

    goto :goto_0
.end method
