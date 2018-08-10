.class Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;
.super Ljava/lang/Object;
.source "SPluginManagerImpl.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginExceptionHandler"
.end annotation


# instance fields
.field private final mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private checkStack(Ljava/lang/Throwable;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v5, v4

    iget-object v7, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v7}, Lcom/android/systemui/splugins/SPluginManagerImpl;->-get1(Lcom/android/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, p2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->checkAndDisable(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    or-int/2addr v0, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->checkStack(Ljava/lang/Throwable;Ljava/util/ArrayList;)Z

    move-result v4

    or-int/2addr v4, v0

    return v4
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    const-string/jumbo v2, "plugin.debugging"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->this$0:Lcom/android/systemui/splugins/SPluginManagerImpl;

    invoke-static {v2}, Lcom/android/systemui/splugins/SPluginManagerImpl;->-get0(Lcom/android/systemui/splugins/SPluginManagerImpl;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->checkStack(Ljava/lang/Throwable;Ljava/util/ArrayList;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;->mHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
