.class public Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager$OnInstallWorkerChanged;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;


# instance fields
.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager$OnInstallWorkerChanged;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerMapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mListenerList:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;
    .locals 2

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getManagedWorker(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;

    return-object v0
.end method

.method public getManagedWorkerListSize()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public manage(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->getItemType()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->getStatus()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->FINISHED:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallAsyncWorker status("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->getStatus()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is invalid."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->getItemType()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager$OnInstallWorkerChanged;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager$OnInstallWorkerChanged;->onAddedManagedInstallWorker(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->getInstallStatus()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;

    move-object p1, v0

    goto :goto_1
.end method

.method public notifyExtra(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager$OnInstallWorkerChanged;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager$OnInstallWorkerChanged;->onExtraNotify(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopWorkerAll()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->getItemType()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->getItemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->getStatus()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;->FINISHED:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker$Status;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;->cancel(Z)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public unmanage(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->getItemType()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mWorkerMapper:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->mListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager$OnInstallWorkerChanged;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager$OnInstallWorkerChanged;->onRemovedManagedInstallWorker(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;)V

    goto :goto_0

    :cond_0
    return-void
.end method
