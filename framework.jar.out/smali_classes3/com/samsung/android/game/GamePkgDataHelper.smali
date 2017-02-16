.class public Lcom/samsung/android/game/GamePkgDataHelper;
.super Ljava/lang/Object;
.source "GamePkgDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    }
.end annotation


# static fields
.field public static final CPU_GPU_LEVEL_DEFAULT:I = 0x0

.field static final TAG:Ljava/lang/String; = "GamePkgDataHelper"

.field private static mInstance:Lcom/samsung/android/game/GamePkgDataHelper;


# instance fields
.field mGamePkgDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/game/GamePkgDataHelper;->mInstance:Lcom/samsung/android/game/GamePkgDataHelper;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/game/GamePkgDataHelper;
    .locals 2

    .prologue
    const-class v1, Lcom/samsung/android/game/GamePkgDataHelper;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/samsung/android/game/GamePkgDataHelper;->mInstance:Lcom/samsung/android/game/GamePkgDataHelper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/samsung/android/game/GamePkgDataHelper;

    invoke-direct {v0}, Lcom/samsung/android/game/GamePkgDataHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/game/GamePkgDataHelper;->mInstance:Lcom/samsung/android/game/GamePkgDataHelper;

    .line 42
    :cond_0
    sget-object v0, Lcom/samsung/android/game/GamePkgDataHelper;->mInstance:Lcom/samsung/android/game/GamePkgDataHelper;
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
.method public declared-synchronized clearAllGamePkgData()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 66
    :try_start_0
    const-string/jumbo v0, "GamePkgDataHelper"

    const-string/jumbo v1, "clearAllGamePkgData()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 65
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 84
    :try_start_0
    const-string/jumbo v0, "GamePkgDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getGamePkgData(). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    .line 88
    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putGamePkgData(Ljava/lang/String;Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "gamePkgData"    # Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;

    .prologue
    monitor-enter p0

    .line 50
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 51
    :try_start_0
    const-string/jumbo v0, "GamePkgDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putGamePkgData(). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 49
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeGamePkgData(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 58
    if-eqz p1, :cond_0

    .line 59
    :try_start_0
    const-string/jumbo v0, "GamePkgDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeGamePkgData(). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 57
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAllGamePkgDataInfo()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;

    .line 73
    .local v2, "gamePkgData":Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    const-string/jumbo v4, "GamePkgDataHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    const-string/jumbo v5, ", PkgName: "

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    invoke-virtual {v2}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getPkgName()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    const-string/jumbo v5, ", cpuLevel: "

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    invoke-virtual {v2}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getCpuLevel()I

    move-result v5

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    const-string/jumbo v5, ", gpuLevel: "

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    invoke-virtual {v2}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getGpuLevel()I

    move-result v5

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 77
    const-string/jumbo v5, ", governorSetting: "

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 77
    invoke-virtual {v2}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getGovernorSetting()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "gamePkgData":Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 70
    return-void
.end method
