.class Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 18

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v13, v12, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v11, :cond_0

    monitor-exit v13

    return-void

    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_3

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v12, 0x0

    :try_start_2
    iput-boolean v12, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    const-wide/16 v14, 0x0

    iput-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    move-wide/from16 v16, v0

    add-long v4, v14, v16

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    add-long v14, v4, v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/settingslib/applications/ApplicationsState;->-wrap3(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v16

    add-long v8, v14, v16

    iget-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v12, v14, v8

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->cacheSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_5

    :cond_1
    :goto_0
    iput-wide v8, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->cacheSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->codeSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    iput-wide v4, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    invoke-static {v12, v14, v15}, Lcom/android/settingslib/applications/ApplicationsState;->-wrap1(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/settingslib/applications/ApplicationsState;->-wrap3(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    invoke-static {v12, v14, v15}, Lcom/android/settingslib/applications/ApplicationsState;->-wrap1(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/settingslib/applications/ApplicationsState;->-wrap2(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    invoke-static {v12, v14, v15}, Lcom/android/settingslib/applications/ApplicationsState;->-wrap1(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x1

    :cond_2
    :try_start_3
    monitor-exit v2

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    const/4 v15, 0x4

    invoke-virtual {v12, v15, v14}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v12, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v12, v12, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    move-object/from16 v0, p1

    iget v14, v0, Landroid/content/pm/PackageStats;->userHandle:I

    if-ne v12, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v14, 0x0

    iput-object v14, v12, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    monitor-exit v13

    return-void

    :cond_5
    :try_start_4
    iget-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->codeSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->codeSize:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->dataSize:J

    move-wide/from16 v16, v0

    cmp-long v12, v14, v16

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v12, v14, v4

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v12, v14, v6

    if-nez v12, :cond_1

    iget-wide v14, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    move-wide/from16 v16, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_2

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    :try_start_5
    monitor-exit v2

    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12
.end method
