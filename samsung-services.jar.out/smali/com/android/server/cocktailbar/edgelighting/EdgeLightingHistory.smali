.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
.super Ljava/lang/Object;
.source "EdgeLightingHistory.java"


# static fields
.field private static final DEBUG:Z

.field public static final IS_DEV_DEBUG:Z

.field private static final MAX_EDGE_LIGHTING_HISTORY:I = 0xa

.field private static final MAX_EVENT_HISTORY:I = 0x14

.field private static final MAX_HOST_HISTORY:I = 0x14

.field private static final MAX_LISTENER_HISTORY:I = 0x14

.field private static final TAG:Ljava/lang/String; = "EdgeLightingHistory"

.field private static mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;


# instance fields
.field private mEdgeLightingHistory:[Ljava/lang/String;

.field private mEdgeLightingHistoryIdx:I

.field private mEventHistory:[Ljava/lang/String;

.field private mEventHistoryIdx:I

.field private mHostHistory:[Ljava/lang/String;

.field private mHostHistoryIdx:I

.field private mListenerHistory:[Ljava/lang/String;

.field private mListenerHistoryIdx:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    sput-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    const/16 v2, 0x14

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    iput v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    iput v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    iput v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    iput v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
    .locals 2

    const-class v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;-><init>()V

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x6

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "-EdgeLightingHistory"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    array-length v0, v2

    const-string/jumbo v2, "  [Host History] :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    array-length v0, v2

    const-string/jumbo v2, "  [Listener History] :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v2, :cond_8

    :cond_4
    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    array-length v0, v2

    const-string/jumbo v2, "  [EL History] :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    array-length v0, v2

    const-string/jumbo v2, "  [Event History] :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_8

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateEdgeLightingHistory(Ljava/lang/String;)V
    .locals 6

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "EdgeLightingHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEdgeLightingHistory log = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    array-length v1, v2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-ge v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    aput-object v0, v2, v4

    :cond_2
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-lt v2, v1, :cond_3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateEventHistory(Ljava/lang/String;)V
    .locals 6

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "EdgeLightingHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEventHistory log = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    array-length v1, v2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    if-ge v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    aput-object v0, v2, v4

    :cond_2
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    if-lt v2, v1, :cond_3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    array-length v1, v2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    :cond_0
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    if-lt v2, v1, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    array-length v1, v2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    :cond_0
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    if-lt v2, v1, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
