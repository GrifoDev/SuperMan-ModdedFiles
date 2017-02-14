.class public Lcom/android/launcher2/MenuWidgetsLoader;
.super Ljava/lang/Object;
.source "MenuWidgetsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;,
        Lcom/android/launcher2/MenuWidgetsLoader$WidgetComparator;,
        Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuWidgetsLoader"

.field private static final WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgetsLoader$WidgetComparator;


# instance fields
.field private mDataVersion:J

.field private mLoadCompleted:Z

.field private mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

.field private mUpdatedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUseThread:Z

.field private mWidgetProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidgetListProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetsLoadListener:Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuWidgetsLoader;->DEBUGGABLE:Z

    new-instance v0, Lcom/android/launcher2/MenuWidgetsLoader$WidgetComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuWidgetsLoader$WidgetComparator;-><init>(Lcom/android/launcher2/MenuWidgetsLoader$1;)V

    sput-object v0, Lcom/android/launcher2/MenuWidgetsLoader;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgetsLoader$WidgetComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgetProviders:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadCompleted:Z

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mUseThread:Z

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgetsLoadListener:Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mUpdatedPackages:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mDataVersion:J

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher2/AvailableWidgetListProvider;

    new-instance v1, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v1, p1}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v1, p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgetProviders:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuWidgetsLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadCompleted:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/MenuWidgetsLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadCompleted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuWidgetsLoader;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/MenuWidgetsLoader;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$408(Lcom/android/launcher2/MenuWidgetsLoader;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mDataVersion:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mDataVersion:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuWidgetsLoader;)Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgetsLoadListener:Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;

    return-object v0
.end method


# virtual methods
.method public checkWidgetSingleInstance()V
    .locals 3

    sget-object v1, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher2/HomeView;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Launcher.MenuWidgetsLoader"

    const-string v2, "SingleInstanceAppWidgetList is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgetProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidgetListProvider;

    instance-of v2, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-virtual {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->checkAppWidgetSingleInstanceList()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsLoader;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadCompleted:Z

    iget-wide v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mDataVersion:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mDataVersion:J

    return-void
.end method

.method public forceReload(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadCompleted:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsLoader;->loadMenuWidgets()V

    :cond_1
    return-void
.end method

.method public getAvailableWidgetList(Ljava/util/List;Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;",
            "Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgetProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidgetListProvider;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuWidgetsLoader;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgetsLoader$WidgetComparator;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsLoader$WidgetComparator;->updateCollator()V

    sget-object v1, Lcom/android/launcher2/MenuWidgetsLoader;->WIDGET_COMPARATOR:Lcom/android/launcher2/MenuWidgetsLoader$WidgetComparator;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public getDataVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mDataVersion:J

    return-wide v0
.end method

.method public declared-synchronized getUpdatedPackages()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mUpdatedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mUpdatedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mUpdatedPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getWidgetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;

    return-object v0
.end method

.method public loadMenuWidgets()V
    .locals 4

    const-string v0, "Launcher.MenuWidgetsLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MenuWidgetLoade-loadMenuWidgets : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadCompleted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mUseThread:Z

    if-nez v0, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/launcher2/MenuWidgetsLoader;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "Launcher.MenuWidgetsLoader"

    const-string v1, "----load completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_4

    :cond_3
    sget-boolean v0, Lcom/android/launcher2/MenuWidgetsLoader;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "Launcher.MenuWidgetsLoader"

    const-string v1, "----aleady loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;-><init>(Lcom/android/launcher2/MenuWidgetsLoader;Lcom/android/launcher2/MenuWidgetsLoader$1;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MenuWidgetsLoader"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public declared-synchronized packageChanged([Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    const-string v3, "Launcher.MenuWidgetsLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageChanged : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mUpdatedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setLoadingListener(Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgetsLoadListener:Lcom/android/launcher2/MenuWidgetsLoader$OnMenuWidgetsLoadListener;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "Launcher.MenuWidgetsLoader"

    const-string v1, "MenuWidgetLoader-stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mLoadTask:Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsLoader$LoadMenuWidgetsTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mWidgets:Ljava/util/List;

    return-void
.end method

.method public useThread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsLoader;->mUseThread:Z

    return v0
.end method
