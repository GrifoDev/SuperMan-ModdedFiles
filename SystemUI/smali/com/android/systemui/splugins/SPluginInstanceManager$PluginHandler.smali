.class Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;
.super Landroid/os/Handler;
.source "SPluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/splugins/SPluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PluginHandler"
.end annotation


# instance fields
.field private final mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/splugins/SPluginInstanceManager;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-void
.end method

.method private checkVersion(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPlugin;Lcom/android/systemui/splugins/SVersionInfo;)Lcom/android/systemui/splugins/SVersionInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;TT;",
            "Lcom/android/systemui/splugins/SVersionInfo;",
            ")",
            "Lcom/android/systemui/splugins/SVersionInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;
        }
    .end annotation

    new-instance v2, Lcom/android/systemui/splugins/SVersionInfo;

    invoke-direct {v2}, Lcom/android/systemui/splugins/SVersionInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/systemui/splugins/SVersionInfo;->addClass(Ljava/lang/Class;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/splugins/SVersionInfo;->hasVersionInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v1}, Lcom/android/systemui/splugins/SVersionInfo;->checkVersion(Lcom/android/systemui/splugins/SVersionInfo;)V

    return-object v1

    :cond_0
    invoke-interface {p2}, Lcom/samsung/systemui/splugins/SPlugin;->getVersion()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/systemui/splugins/SVersionInfo;->getDefaultVersion()I

    move-result v2

    if-eq v0, v2, :cond_1

    new-instance v2, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;

    const-string/jumbo v3, "Invalid legacy version"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private handleQueryPlugins(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v6}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get1(Lcom/android/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v6}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get6(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v6}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get2(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SPluginInstanceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Multiple plugins found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v8}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get1(Lcom/android/systemui/splugins/SPluginInstanceManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    iget-object v6, v6, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    invoke-virtual {v6, v8, v5}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    iget-object v6, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo",
            "<TT;>;"
        }
    .end annotation

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get0(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPluginInstanceManager"

    const-string/jumbo v11, "Somehow hit second debuggable check"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get6(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get6(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v11, "com.samsung.systemui.permission.SPLUGIN"

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "SPluginInstanceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Plugin doesn\'t have permission: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get5(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SPluginManagerImpl;

    move-result-object v0

    iget-object v11, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/splugins/SPluginManagerImpl;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v6

    new-instance v4, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;

    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get3(Lcom/android/systemui/splugins/SPluginInstanceManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, v6}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    const/4 v0, 0x1

    invoke-static {v2, v0, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/systemui/splugins/SPlugin;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v0}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get7(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v0

    invoke-direct {p0, v10, v3, v0}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->checkVersion(Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPlugin;Lcom/android/systemui/splugins/SVersionInfo;)Lcom/android/systemui/splugins/SVersionInfo;

    move-result-object v5

    new-instance v0, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/android/systemui/splugins/SVersionInfo;)V
    :try_end_1
    .catch Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "SPluginInstanceManager"

    invoke-virtual {v7}, Lcom/android/systemui/splugins/SVersionInfo$InvalidVersionException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-object v13

    :catch_1
    move-exception v8

    const-string/jumbo v0, "SPluginInstanceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t load plugin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v13
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_1
    if-ltz v2, :cond_2

    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v9}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get4(Lcom/android/systemui/splugins/SPluginInstanceManager;)Lcom/samsung/systemui/splugins/SPluginListener;

    move-result-object v10

    iget-object v9, v8, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v10, v9}, Lcom/samsung/systemui/splugins/SPluginListener;->onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V

    iget-object v9, v8, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v9, v9, Lcom/samsung/systemui/splugins/SPluginFragment;

    if-nez v9, :cond_1

    iget-object v9, v8, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/systemui/splugins/SPlugin;

    invoke-interface {v9}, Lcom/samsung/systemui/splugins/SPlugin;->onDestroy()V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_2
    if-ltz v2, :cond_0

    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v9, v8, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    iget-object v9, v9, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v8}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    invoke-static {v9}, Lcom/android/systemui/splugins/SPluginInstanceManager;->-get2(Lcom/android/systemui/splugins/SPluginInstanceManager;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;

    iget-object v9, v3, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v3}, Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;->-get0(Lcom/android/systemui/splugins/SPluginInstanceManager$SPluginInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/splugins/SPluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/splugins/SPluginInstanceManager;

    iget-object v9, v9, Lcom/android/systemui/splugins/SPluginInstanceManager;->mMainHandler:Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v3}, Lcom/android/systemui/splugins/SPluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
