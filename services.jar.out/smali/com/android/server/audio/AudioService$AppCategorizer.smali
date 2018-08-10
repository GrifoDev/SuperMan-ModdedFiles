.class public Lcom/android/server/audio/AudioService$AppCategorizer;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppCategorizer"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field final mPackageManager:Landroid/content/pm/PackageManager;

.field final sAppList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sDatabase:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    iput-object p2, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mSecGlobal:Lcom/android/server/audio/AudioService$SecGlobalVariable;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$SecGlobalVariable;->-get98(Lcom/android/server/audio/AudioService$SecGlobalVariable;)Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sDatabase:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sDatabase:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->getPackageList()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method checkExist(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAllSelectedPackages()[Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method putPackage(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$AppCategorizer;->checkExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sDatabase:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->putPackage(ILjava/lang/String;)V

    return-void
.end method

.method removePackage(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sAppList:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AppCategorizer;->sDatabase:Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$AudioSettingsDBHelper;->removePackage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
