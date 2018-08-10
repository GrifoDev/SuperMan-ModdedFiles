.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkForLongClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    sget-object v4, Lcom/android/systemui/SystemUIAnalytics;->mCurrentScreenID:Ljava/lang/String;

    const-string/jumbo v5, "1118"

    invoke-static {v4, v5}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->val$view:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->sendAccessibilityEvent(I)V

    new-array v1, v7, [I

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->val$view:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x0

    aget v4, v1, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    aget v4, v1, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->val$view:Landroid/view/View;

    instance-of v4, v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->val$view:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->createMenu()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->val$view:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get0(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-get4(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->val$view:Landroid/view/View;

    invoke-interface {v4, v5, v2, v3, v0}, Lcom/android/systemui/SwipeHelper$LongPressListener;->onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$12;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->-set6(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z

    return-void
.end method
