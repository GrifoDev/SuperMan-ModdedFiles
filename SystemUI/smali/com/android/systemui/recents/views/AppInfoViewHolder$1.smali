.class Lcom/android/systemui/recents/views/AppInfoViewHolder$1;
.super Ljava/lang/Object;
.source "AppInfoViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/AppInfoViewHolder;->startApp(Lcom/android/systemui/recents/model/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

.field final synthetic val$appInfo:Lcom/android/systemui/recents/model/AppInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/AppInfoViewHolder;Lcom/android/systemui/recents/model/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iput-object p2, p0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_recents_views_AppInfoViewHolder$1_4742(Lcom/android/systemui/recents/misc/SystemServicesProxy;ILjava/lang/String;Ljava/lang/String;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    if-ne v3, p1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 27

    const/16 v18, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedTasks()Ljava/util/List;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v7, v7, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v7, v7, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget v9, v7, Lcom/android/systemui/recents/model/AppInfo;->userId:I

    const/16 v26, 0x0

    if-eqz v25, :cond_0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    const-wide/16 v10, 0x1

    invoke-interface {v7, v10, v11}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-direct {v8, v9, v0, v1, v2}, Lcom/android/systemui/recents/views/-$Lambda$7BLSR_D9hzyZSuS2NEhB6gs29w4;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/ActivityManager$RunningTaskInfo;

    const/16 v18, 0x1

    move-object/from16 v0, v22

    iget v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v7, v7, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;

    move-result-object v26

    :cond_0
    if-eqz v18, :cond_1

    new-instance v5, Lcom/android/systemui/recents/model/Task$TaskKey;

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v11, v7, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object/from16 v10, v21

    move-object v12, v5

    move-object/from16 v13, v26

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;ILcom/android/systemui/recents/misc/SystemServicesProxy$StartActivityFromRecentsResultListener;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v7, v7, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v10, v10, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0x115

    invoke-static {v7, v10, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget v8, v7, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v7, v7, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v8, v8, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget v10, v10, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    invoke-static {v7, v8, v10}, Lcom/android/systemui/recents/misc/AppListUsageStats;->storeCount(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_1
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v8, v8, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v10, v10, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v7, "com.google.android.youtube"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->val$appInfo:Lcom/android/systemui/recents/model/AppInfo;

    iget-object v8, v8, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/high16 v7, 0x10000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v19

    const/4 v7, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/AppInfoViewHolder$1;->this$0:Lcom/android/systemui/recents/views/AppInfoViewHolder;

    iget-object v7, v7, Lcom/android/systemui/recents/views/AppInfoViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v8, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/high16 v7, 0x10200000

    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
