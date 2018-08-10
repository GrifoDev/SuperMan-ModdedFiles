.class public Lcom/att/iqi/lib/IQIManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;,
        Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;,
        Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;
    }
.end annotation


# static fields
.field private static a:Lcom/att/iqi/lib/IQIManager;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private b:Lcom/att/iqi/IIQIService;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/att/iqi/IMetricQueryCallback;

.field private final h:Lcom/att/iqi/IMetricSourcingCallback;

.field private final i:Lcom/att/iqi/IProfileChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/IQIManager;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$1;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->g:Lcom/att/iqi/IMetricQueryCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$2;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$2;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->h:Lcom/att/iqi/IMetricSourcingCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$3;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$3;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IProfileChangedCallback;

    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()Lcom/att/iqi/IIQIService;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    return-void
.end method

.method static synthetic a(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a()Lcom/att/iqi/IIQIService;
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    if-nez v4, :cond_0

    const-string/jumbo v0, "android.os.ServiceManager"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "getService"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    const/4 v4, 0x1

    :try_start_2
    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "iqi"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v3, :cond_1

    return-object v7

    :cond_0
    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    return-object v4

    :catch_0
    move-exception v2

    return-object v7

    :catch_1
    move-exception v3

    return-object v7

    :cond_1
    :try_start_3
    invoke-static {v3}, Lcom/att/iqi/IIQIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v4

    iput-object v4, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v4

    :catch_2
    move-exception v3

    return-object v7

    :catch_3
    move-exception v3

    return-object v7
.end method

.method static synthetic b(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic c(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/att/iqi/lib/IQIManager;
    .locals 3

    sget-object v0, Lcom/att/iqi/lib/IQIManager;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/lib/IQIManager;

    if-eqz v2, :cond_0

    :goto_0
    sget-object v2, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/lib/IQIManager;

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance v2, Lcom/att/iqi/lib/IQIManager;

    invoke-direct {v2}, Lcom/att/iqi/lib/IQIManager;-><init>()V

    sput-object v2, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/lib/IQIManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public registerMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->h:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {v3, p1, v4}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Callback already registered for metric ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public registerProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    return-void

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {v2, v3}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->g:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {v3, p1, v4}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Callback already registered for metric ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    invoke-interface {v1, p1}, Lcom/att/iqi/IIQIService;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    return v2
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->h:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {v2, p1, v3}, Lcom/att/iqi/IIQIService;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public unregisterProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    return-void

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {v2, v3}, Lcom/att/iqi/IIQIService;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public unregisterQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->g:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {v2, p1, v3}, Lcom/att/iqi/IIQIService;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
