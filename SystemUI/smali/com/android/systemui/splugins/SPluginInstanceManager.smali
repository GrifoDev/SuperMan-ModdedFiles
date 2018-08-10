.class public Lcom/android/systemui/splugins/SPluginInstanceManager;
.super Ljava/lang/Object;
.source "SPluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;,
        Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;,
        Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;,
        Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/systemui/splugins/SPlugin;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final isDebuggable:Z

.field private final mAction:Ljava/lang/String;

.field private final mAllowMultiple:Z

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/samsung/systemui/splugins/SPluginListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/splugins/SPluginInstanceManager",
            "<TT;>.MainHandler;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/android/systemui/splugins/SPluginManagerImpl;

.field final mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/splugins/SPluginInstanceManager",
            "<TT;>.PluginHandler;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mVersion:Lcom/android/systemui/splugins/SVersionInfo;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->isDebuggable:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAllowMultiple:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SPluginManagerImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mManager:Lcom/android/systemui/splugins/SPluginManagerImpl;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SVersionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mVersion:Lcom/android/systemui/splugins/SVersionInfo;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZLandroid/os/Looper;Lcom/android/systemui/splugins/SVersionInfo;Lcom/android/systemui/splugins/SPluginManagerImpl;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<TT;>;Z",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/splugins/SVersionInfo;",
            "Lcom/android/systemui/splugins/SPluginManagerImpl;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;-><init>(Lcom/android/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    new-instance v0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;-><init>(Lcom/android/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    iput-object p8, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mManager:Lcom/android/systemui/splugins/SPluginManagerImpl;

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mListener:Lcom/samsung/systemui/splugins/SPluginListener;

    iput-boolean p5, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAllowMultiple:Z

    iput-object p7, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mVersion:Lcom/android/systemui/splugins/SVersionInfo;

    iput-boolean p9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->isDebuggable:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZLandroid/os/Looper;Lcom/android/systemui/splugins/SVersionInfo;Lcom/android/systemui/splugins/SPluginManagerImpl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener",
            "<TT;>;Z",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/splugins/SVersionInfo;",
            "Lcom/android/systemui/splugins/SPluginManagerImpl;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/splugins/SPluginInstanceManager;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZLandroid/os/Looper;Lcom/android/systemui/splugins/SVersionInfo;Lcom/android/systemui/splugins/SPluginManagerImpl;Z)V

    return-void
.end method

.method private disable(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)V
    .locals 4

    const-string/jumbo v0, "SPluginInstanceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disabling plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->-get0(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->-get0(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public checkAndDisable(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v5}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v5, v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/systemui/splugins/SPluginPrefs;->getUncaughtExceptionCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    const-string/jumbo v5, "SPluginInstanceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception plugin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->-get0(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-static {v5, v6, v1}, Lcom/android/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/systemui/splugins/SPluginPrefs;->setUncaughtExceptionCount(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->disable(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v4}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v4, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->-get2(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->-get2(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/systemui/splugins/SVersionInfo;->hasClass(Ljava/lang/Class;)Z

    move-result v3

    :cond_1
    return v3

    :cond_2
    return v3
.end method

.method public destroy()V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disableAll()V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v2}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    invoke-direct {p0, v2}, Lcom/android/systemui/splugins/SPluginInstanceManager;->disable(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  ACTION : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public handlePluginConfigurationChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public loadAll()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageChange(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager;->mPluginHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
