.class Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;
.super Ljava/lang/Object;
.source "RecentsAppListViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->startApp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    iput p2, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "com.google.android.youtube"

    iget-object v5, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getKioskId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->-set0(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;I)I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-static {v4}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->-get0(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-static {v7}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->-get0(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_1
    const-string/jumbo v4, "RecentsAppListViewAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startActivity - package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->executeCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->executeCount:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v6, v0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppInfo;->executeCount:I

    invoke-static {v4, v5, v6}, Lcom/android/systemui/recents/misc/AppListUsageStats;->storeCount(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_2
    return-void

    :cond_0
    const/high16 v4, 0x10200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    iget-object v4, v4, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
