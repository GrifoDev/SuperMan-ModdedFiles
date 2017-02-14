.class public Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# static fields
.field private static final ALWAYS_PRIORITY_STATES:[I

.field private static final TRANSITION_PRIORITY_STATES:[I

.field private static prev_userId:I


# instance fields
.field private mCachedActiveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedTransportControlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field private mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

.field private final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, -0x1

    sput v0, Lcom/android/server/media/MediaSessionStack;->prev_userId:I

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0x9

    const/16 v3, 0xa

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    const/4 v0, 0x6

    const/16 v1, 0x8

    const/4 v2, 0x3

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    return-void
.end method

.method private clearCache()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    return-void
.end method

.method private containsState(I[I)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget v1, p2, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getPriorityListLocked(ZII)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_5

    iget-object v7, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    const/4 v7, -0x1

    if-eq p3, v7, :cond_1

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v7

    if-eq p3, v7, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v8

    int-to-long v10, p2

    and-long/2addr v8, v10

    int-to-long v10, p2

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v7

    if-nez v7, :cond_2

    if-nez p1, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v4
.end method

.method private static isFromMostRecentApp(Lcom/android/server/media/MediaSessionRecord;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    if-eq v3, v4, :cond_0

    return v7

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0xf

    invoke-interface {v3, v5, v6, v4}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return v7

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    return v7
.end method

.method private shouldUpdatePriority(II)Z
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    invoke-static {p1}, Lcom/android/server/media/MediaSessionStack;->isFromMostRecentApp(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    :cond_0
    return-void
.end method

.method public clearPreviousUserCache()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, v6, v6, v5}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Global priority session is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Sessions Stack - have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " sessions:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/media/MediaSessionStack;->prev_userId:I

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    sput p1, Lcom/android/server/media/MediaSessionStack;->prev_userId:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultMediaButtonSession(IZ)Lcom/android/server/media/MediaSessionRecord;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    return-object v2

    :cond_1
    invoke-direct {p0, v5, v5, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    if-nez v2, :cond_3

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    :cond_3
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    return-object v2

    :cond_4
    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    iput-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_0

    :cond_5
    iput-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getDefaultSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    return-object v1

    :cond_1
    return-object v3
.end method

.method public getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    return-object v4

    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, v4, v6, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1, v6}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v5
.end method

.method public getTransportControlSessions(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedTransportControlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    goto :goto_0
.end method

.method public onPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionStack;->shouldUpdatePriority(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    :cond_1
    return v1
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v0

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionStack;->clearCache()V

    return-void
.end method
