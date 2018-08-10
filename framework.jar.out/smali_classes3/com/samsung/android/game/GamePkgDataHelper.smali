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
.field private static final ASPECT_RATIO_16_9:F = 1.7777778f

.field public static final CATEGORY_GAME:I = 0x1

.field public static final CATEGORY_MANAGED_APP:I = 0xa

.field public static final CATEGORY_NON_GAME:I = 0x0

.field public static final CATEGORY_SEC_GAME_FAMILY:I = 0x3

.field public static final CATEGORY_TUNABLE_NON_GAME:I = 0x2

.field public static final CATEGORY_UNDEFINED:I = -0x1

.field public static final CPU_GPU_LEVEL_DEFAULT:I = 0x0

.field public static final MIN_PERCENT_UNDEFINED:I = -0x1

.field public static final SHIFT_TEMPERATURE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GamePkgDataHelper"

.field private static final bConventionalModeEnabled:Z

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

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/game/GamePkgDataHelper;->mInstance:Lcom/samsung/android/game/GamePkgDataHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/game/GamePkgDataHelper;
    .locals 2

    const-class v1, Lcom/samsung/android/game/GamePkgDataHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/game/GamePkgDataHelper;->mInstance:Lcom/samsung/android/game/GamePkgDataHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/GamePkgDataHelper;

    invoke-direct {v0}, Lcom/samsung/android/game/GamePkgDataHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/game/GamePkgDataHelper;->mInstance:Lcom/samsung/android/game/GamePkgDataHelper;

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
.method public declared-synchronized getGamePkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "GamePkgDataHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getGamePkgData(). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getCategory()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v0, v1

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getGamePkgDataIncServer(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    .locals 6

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "GamePkgDataHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getGamePkgDataIncServer(). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getServerCategory()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getCategory()I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getServerCategory()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v5, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPkgData(Ljava/lang/String;)Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPkgNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSosPolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0xa

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "GamePkgDataHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSosPolicy(). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getServerCategory()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getCategory()I

    move-result v2

    if-eq v2, v5, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getServerCategory()I

    move-result v2

    if-ne v2, v5, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->getSosPolicy()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized putGamePkgData(Ljava/lang/String;Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

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

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeGamePkgData(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

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

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper;->mGamePkgDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
