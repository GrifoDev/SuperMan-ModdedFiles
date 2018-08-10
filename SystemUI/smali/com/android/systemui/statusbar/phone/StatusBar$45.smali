.class Lcom/android/systemui/statusbar/phone/StatusBar$45;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->clearAllNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$viewsToRemove:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->val$viewsToRemove:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->val$viewsToRemove:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->enableDismissAnimation(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$45;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-interface {v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
