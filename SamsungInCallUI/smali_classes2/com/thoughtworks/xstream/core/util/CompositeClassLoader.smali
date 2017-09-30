.class public Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;
.super Ljava/lang/ClassLoader;


# instance fields
.field private final classLoaders:Ljava/util/List;

.field private final queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is17()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "registerAsParallelCapable"

    const/4 v0, 0x0

    nop

    nop

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    nop

    nop

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->queue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->addInternal(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->addInternal(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private addInternal(Ljava/lang/ClassLoader;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move-object v0, v2

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    :goto_2
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private cleanup()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/ClassLoader;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->cleanup()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->addInternal(Ljava/lang/ClassLoader;)V
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

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    new-instance v1, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader$1;-><init>(Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;I)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->cleanup()V

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;->classLoaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
