.class Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;
.super Landroid/os/Handler;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/PluginInstanceManager;
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
            "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/plugins/PluginInstanceManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/PluginInstanceManager;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    return-void
.end method

.method private checkVersion(Ljava/lang/Class;Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/plugins/VersionInfo;)Lcom/android/systemui/plugins/VersionInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;TT;",
            "Lcom/android/systemui/plugins/VersionInfo;",
            ")",
            "Lcom/android/systemui/plugins/VersionInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;
        }
    .end annotation

    new-instance v2, Lcom/android/systemui/plugins/VersionInfo;

    invoke-direct {v2}, Lcom/android/systemui/plugins/VersionInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/android/systemui/plugins/VersionInfo;->addClass(Ljava/lang/Class;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugins/VersionInfo;->hasVersionInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v1}, Lcom/android/systemui/plugins/VersionInfo;->checkVersion(Lcom/android/systemui/plugins/VersionInfo;)V

    return-object v1

    :cond_0
    invoke-interface {p2}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/systemui/plugins/VersionInfo;->getDefaultVersion()I

    move-result v2

    if-eq v0, v2, :cond_1

    new-instance v2, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;

    const-string/jumbo v3, "Invalid legacy version"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;-><init>(Ljava/lang/String;Z)V

    throw v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private handleQueryPlugins(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v6}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get1(Lcom/android/systemui/plugins/PluginInstanceManager;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v6}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_1

    iget-object v6, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v6}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get2(Lcom/android/systemui/plugins/PluginInstanceManager;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const-string/jumbo v6, "PluginInstanceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Multiple plugins found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v8}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get1(Lcom/android/systemui/plugins/PluginInstanceManager;)Ljava/lang/String;

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

    invoke-virtual {p0, v3}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    iget-object v6, v6, Lcom/android/systemui/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;

    invoke-virtual {v6, v8, v5}, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    iget-object v6, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method protected handleLoadPlugin(Landroid/content/ComponentName;)Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo",
            "<TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get0(Lcom/android/systemui/plugins/PluginInstanceManager;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "PluginInstanceManager"

    const-string/jumbo v22, "Somehow hit second debuggable check"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v22, "com.android.systemui.permission.PLUGIN"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "PluginInstanceManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Plugin doesn\'t have permission: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get5(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginManagerImpl;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/plugins/PluginManagerImpl;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v10

    new-instance v8, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v4

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v8, v4, v10}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginContextWrapper;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    const/4 v4, 0x1

    invoke-static {v6, v4, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/Plugin;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get7(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v4}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->checkVersion(Ljava/lang/Class;Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/plugins/VersionInfo;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v9

    new-instance v4, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/android/systemui/plugins/VersionInfo;)V
    :try_end_1
    .catch Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_0
    move-exception v12

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v22, "tuner"

    const-string/jumbo v23, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v22, "system_notification_accent_color"

    const-string/jumbo v23, "color"

    const-string/jumbo v24, "android"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v22

    const-string/jumbo v23, "ALR"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v4, v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v22, Landroid/app/Notification$BigTextStyle;

    invoke-direct/range {v22 .. v22}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/content/Context;->getColor(I)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v19

    move-object/from16 v18, v6

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get6(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v18

    :goto_0
    :try_start_4
    invoke-virtual {v12}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;->isTooNew()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Plugin \""

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v22, "\" is too old"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Contact plugin developer to get an updated version.\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v22, "com.android.systemui.action.DISABLE_PLUGIN"

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "package://"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v4

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v4, v0, v15, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    new-instance v4, Landroid/app/Notification$Action$Builder;

    const-string/jumbo v22, "Disable plugin"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get3(Lcom/android/systemui/plugins/PluginInstanceManager;)Landroid/content/Context;

    move-result-object v4

    const-class v22, Landroid/app/NotificationManager;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual/range {v19 .. v19}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v22

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v24, 0x6

    move/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v4, v6, v0, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    const-string/jumbo v4, "PluginInstanceManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Plugin has invalid interface version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v7}, Lcom/android/systemui/plugins/Plugin;->getVersion()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", expected "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get7(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/VersionInfo;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Plugin \""

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v22, "\" is too new"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Check to see if an OTA is available.\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Lcom/android/systemui/plugins/VersionInfo$InvalidVersionException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v13

    const-string/jumbo v4, "PluginInstanceManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Couldn\'t load plugin: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    return-object v4

    :catch_2
    move-exception v14

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get4(Lcom/android/systemui/plugins/PluginInstanceManager;)Lcom/android/systemui/plugins/PluginListener;

    move-result-object v5

    iget-object v4, v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {v5, v4}, Lcom/android/systemui/plugins/PluginListener;->onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V

    iget-object v4, v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/plugins/Plugin;

    invoke-interface {v4}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;

    iget-object v4, v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    iget-object v4, v4, Lcom/android/systemui/plugins/PluginInstanceManager;->mMainHandler:Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;

    iget-object v5, v3, Lcom/android/systemui/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/plugins/PluginInstanceManager$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->this$0:Lcom/android/systemui/plugins/PluginInstanceManager;

    invoke-static {v4}, Lcom/android/systemui/plugins/PluginInstanceManager;->-get2(Lcom/android/systemui/plugins/PluginInstanceManager;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/plugins/PluginInstanceManager$PluginHandler;->handleQueryPlugins(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
