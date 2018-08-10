.class public Lcom/android/systemui/plugins/PluginInstanceManager;
.super Ljava/lang/Object;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;,
        Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;,
        Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;,
        Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/systemui/plugins/Plugin;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final PLUGIN_PERMISSION:Ljava/lang/String; = "com.android.systemui.permission.PLUGIN"


# instance fields
.field private final isDebuggable:Z

.field private final mAction:Ljava/lang/String;

.field private final mAllowMultiple:Z

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/systemui/plugins/PluginListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/plugins/PluginListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mMainHandler:Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/plugins/PluginInstanceManager",
            "<TT;>.MainHandler;"
        }
    .end annotation
.end field

.field private final mManager:Lcom/android/systemui/plugins/PluginManagerImpl;

.field final mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/plugins/PluginInstanceManager",
            "<TT;>.PluginHandler;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mVersion:Lcom/android/systemui/plugins/VersionInfo;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/plugins/PluginInstanceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->isDebuggable:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/plugins/PluginInstanceManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/plugins/PluginInstanceManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mAllowMultiple:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mListener:Lcom/android/systemui/plugins/PluginListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginManagerImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mManager:Lcom/android/systemui/plugins/PluginManagerImpl;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/VersionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mVersion:Lcom/android/systemui/plugins/VersionInfo;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Lcom/android/systemui/plugins/VersionInfo;Lcom/android/systemui/plugins/PluginManagerImpl;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener",
            "<TT;>;Z",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/plugins/VersionInfo;",
            "Lcom/android/systemui/plugins/PluginManagerImpl;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;-><init>(Lcom/android/systemui/plugins/PluginInstanceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;

    new-instance v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    invoke-direct {v0, p0, p6}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;-><init>(Lcom/android/systemui/plugins/PluginInstanceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    iput-object p8, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mManager:Lcom/android/systemui/plugins/PluginManagerImpl;

    iput-object p1, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mListener:Lcom/android/systemui/plugins/PluginListener;

    iput-boolean p5, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mAllowMultiple:Z

    iput-object p7, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mVersion:Lcom/android/systemui/plugins/VersionInfo;

    iput-boolean p9, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->isDebuggable:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Lcom/android/systemui/plugins/VersionInfo;Lcom/android/systemui/plugins/PluginManagerImpl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener",
            "<TT;>;Z",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/plugins/VersionInfo;",
            "Lcom/android/systemui/plugins/PluginManagerImpl;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/plugins/PluginInstanceManager;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Lcom/android/systemui/plugins/VersionInfo;Lcom/android/systemui/plugins/PluginManagerImpl;Z)V

    return-void
.end method

.method private disable(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)V
    .locals 4

    const-string/jumbo v0, "PluginInstanceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disabling plugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->-get0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->-get0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method


# virtual methods
.method public checkAndDisable(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    iget-object v4, v1, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/plugins/PluginInstanceManager;->disable(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .locals 6
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

    const/4 v3, 0x0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

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

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->-get2(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->-get2(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/systemui/plugins/VersionInfo;->hasClass(Ljava/lang/Class;)Z

    move-result v3

    :cond_1
    return v3

    :cond_2
    return v3
.end method

.method public destroy()V
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {v3}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    iget-object v3, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public disableAll()V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {v2}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    invoke-direct {p0, v2}, Lcom/android/systemui/plugins/PluginInstanceManager;->disable(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getPlugin()Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo",
            "<TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Must be called from UI thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {v1, v4}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->-wrap0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->-get0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    iget-object v1, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/plugins/PluginPrefs;->setHasPlugins(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/plugins/Plugin;

    iget-object v2, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->-get1(Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/plugins/Plugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    return-object v0

    :cond_1
    return-object v4
.end method

.method public loadAll()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPackageChange(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager;->mPluginHandler:Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
