.class public Lcom/android/systemui/plugins/PluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source "PluginManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;,
        Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;,
        Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;
    }
.end annotation


# instance fields
.field private final isDebuggable:Z

.field private final mClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

.field private mHasOneShot:Z

.field private mListening:Z

.field private mLooper:Landroid/os/Looper;

.field private final mOneShotPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParentClassLoader:Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;

.field private final mPluginMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/plugins/PluginListener",
            "<*>;",
            "Lcom/android/systemui/plugins/PluginInstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/plugins/PluginManagerImpl;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    invoke-direct {v0}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/systemui/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mFactory:Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    iput-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    iput-boolean p3, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->isDebuggable:Z

    new-instance v1, Lcom/android/systemui/plugins/PluginPrefs;

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/plugins/PluginPrefs;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, v1}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/plugins/PluginManagerImpl$PluginExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-boolean v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->isDebuggable:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/systemui/plugins/-$Lambda$Upv-4XtKk9gV4CvuUNPqdt0_SZ8;

    invoke-direct {v2}, Lcom/android/systemui/plugins/-$Lambda$Upv-4XtKk9gV4CvuUNPqdt0_SZ8;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private clearClassLoader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_systemui_plugins_PluginManagerImpl_3754()V
    .locals 2

    const-class v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    return-void
.end method

.method private startListening()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mListening:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mListening:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.systemui.action.PLUGIN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListening()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mHasOneShot:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/plugins/PluginManagerImpl;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/systemui/plugins/PluginManager;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener",
            "<TT;>;",
            "Ljava/lang/Class;",
            "Z)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->isDebuggable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

    invoke-virtual {v0, p1}, Lcom/android/systemui/plugins/PluginPrefs;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mFactory:Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v6, p3

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/plugins/PluginManagerImpl;)Lcom/android/systemui/plugins/PluginInstanceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/plugins/PluginInstanceManager;->loadAll()V

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/systemui/plugins/PluginManagerImpl;->startListening()V

    return-void
.end method

.method public dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/Plugin;",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/plugins/PluginInstanceManager;->dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    return-object v1

    :cond_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginManagerImpl;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getContext(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/Context;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/plugins/PluginManagerImpl;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    return-object v1
.end method

.method public getOneShotPlugin(Ljava/lang/Class;)Lcom/android/systemui/plugins/Plugin;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const-class v1, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doesn\'t provide an interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doesn\'t provide an action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/plugins/PluginManagerImpl;->getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/systemui/plugins/Plugin;

    move-result-object v1

    return-object v1
.end method

.method public getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/android/systemui/plugins/Plugin;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->isDebuggable:Z

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Must be called from UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mFactory:Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/plugins/PluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/plugins/PluginManagerImpl;)Lcom/android/systemui/plugins/PluginInstanceManager;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

    invoke-virtual {v0, p1}, Lcom/android/systemui/plugins/PluginPrefs;->addAction(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/systemui/plugins/PluginInstanceManager;->getPlugin()Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    iget-object v1, v8, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mHasOneShot:Z

    invoke-direct {p0}, Lcom/android/systemui/plugins/PluginManagerImpl;->startListening()V

    iget-object v0, v8, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/plugins/Plugin;

    return-object v0

    :cond_2
    return-object v3
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;

    invoke-virtual {p0}, Lcom/android/systemui/plugins/PluginManagerImpl;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui.plugin"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/plugins/PluginManagerImpl$ClassLoaderFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    const-string/jumbo v18, "android.intent.action.USER_UNLOCKED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-virtual {v11}, Lcom/android/systemui/plugins/PluginInstanceManager;->loadAll()V

    goto :goto_0

    :cond_0
    const-string/jumbo v18, "com.android.systemui.action.DISABLE_PLUGIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-class v19, Landroid/app/NotificationManager;

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    invoke-virtual/range {v18 .. v20}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string/jumbo v19, "tuner"

    const-string/jumbo v20, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const-string/jumbo v19, "system_notification_accent_color"

    const-string/jumbo v20, "color"

    const-string/jumbo v21, "android"

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object v10, v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_1
    new-instance v18, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "ALR"

    invoke-direct/range {v18 .. v20}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Plugin \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\" has updated"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    const-string/jumbo v19, "Restart SysUI for changes to take effect."

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v19, "com.android.systemui.action.RESTART"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "package://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    new-instance v18, Landroid/app/Notification$Action$Builder;

    const-string/jumbo v19, "Restart SysUI"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v14}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-class v19, Landroid/app/NotificationManager;

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v21, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/plugins/PluginManagerImpl;->clearClassLoader(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Reloading "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    :cond_4
    const-string/jumbo v18, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-virtual {v11, v15}, Lcom/android/systemui/plugins/PluginInstanceManager;->onPackageChange(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-virtual {v11, v15}, Lcom/android/systemui/plugins/PluginInstanceManager;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method public removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/PluginListener",
            "<*>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->isDebuggable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-virtual {v0}, Lcom/android/systemui/plugins/PluginInstanceManager;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/plugins/PluginManagerImpl;->stopListening()V

    :cond_2
    return-void
.end method
