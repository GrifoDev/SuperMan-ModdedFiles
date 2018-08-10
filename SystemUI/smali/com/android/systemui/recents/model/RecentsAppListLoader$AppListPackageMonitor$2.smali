.class Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$2;
.super Ljava/lang/Object;
.source "RecentsAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

.field final synthetic val$eventUserId:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$2;->this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    iput-object p2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$2;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$2;->val$eventUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$2;->this$1:Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$2;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor$2;->val$eventUserId:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;->-wrap1(Lcom/android/systemui/recents/model/RecentsAppListLoader$AppListPackageMonitor;Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/NotifyDataLoadEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return-void
.end method
