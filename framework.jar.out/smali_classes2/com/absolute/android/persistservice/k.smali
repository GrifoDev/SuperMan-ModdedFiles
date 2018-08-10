.class public Lcom/absolute/android/persistservice/k;
.super Lcom/absolute/android/persistservice/ac;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-class v1, Lcom/absolute/android/persistservice/k;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/k;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/absolute/android/persistservice/ac;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a(Lcom/absolute/android/persistence/AppProfile;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;-><init>(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized a(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/k;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez v0, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a(I)V

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/k;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez v0, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized a(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/absolute/android/persistservice/PersistedAppInfo;

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/absolute/android/persistence/AppProfile;->setIsPersisted(Z)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected declared-synchronized a()[Lcom/absolute/android/persistence/AppProfile;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-array v1, v0, [Lcom/absolute/android/persistence/AppProfile;

    iget-object v5, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v5, 0x0

    monitor-exit p0

    return-object v5

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/absolute/android/persistservice/PersistedAppInfo;

    invoke-virtual {v5}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v5

    aput-object v5, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected declared-synchronized b()I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/absolute/android/persistservice/PersistedAppInfo;

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected declared-synchronized b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized b(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;

    sget-boolean v1, Lcom/absolute/android/persistservice/k;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez v0, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b(I)V

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/k;->e()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected declared-synchronized c(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
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

.method protected declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/absolute/android/persistservice/ac;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    instance-of v7, p1, Lcom/absolute/android/persistservice/k;

    if-eqz v7, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/absolute/android/persistservice/k;

    iget-object v7, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    iget-object v8, v0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->size()I

    move-result v8

    if-ne v7, v8, :cond_3

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v7, v0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    monitor-exit p0

    const/4 v7, 0x1

    return v7

    :cond_1
    return v9

    :cond_2
    return v9

    :cond_3
    return v9

    :cond_4
    iget-object v7, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/absolute/android/persistservice/PersistedAppInfo;

    iget-object v7, v0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/absolute/android/persistservice/PersistedAppInfo;

    invoke-virtual {v4, v5}, Lcom/absolute/android/persistservice/PersistedAppInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    monitor-exit p0

    return v9

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method protected declared-synchronized f(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/PersistedAppInfo;

    sget-boolean v2, Lcom/absolute/android/persistservice/k;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    if-nez v1, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->c()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method protected declared-synchronized g(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistservice/PersistedAppInfo;

    sget-boolean v2, Lcom/absolute/android/persistservice/k;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    if-nez v1, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method protected declared-synchronized h(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/k;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/absolute/android/persistservice/k;

    iget-object v4, p0, Lcom/absolute/android/persistservice/k;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/absolute/android/persistservice/k;->e:Lcom/absolute/android/persistservice/v;

    invoke-static {p1}, Lcom/absolute/android/utils/FileUtil;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/absolute/android/persistservice/k;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/k;->k(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/k;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    return v3
.end method
