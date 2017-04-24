.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;ZZLandroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$keyguardShowing:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$afterKeyguardGone:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 11

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, v10}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setIsClickedNotification(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    :cond_0
    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v0, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->-wrap0(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v8, v9

    :cond_1
    move-object v6, v8

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$keyguardShowing:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$afterKeyguardGone:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$intent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->val$notificationKey:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;ZZLandroid/app/PendingIntent;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v10, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    return v10
.end method
