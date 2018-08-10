.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;
.super Ljava/lang/Object;
.source "DeskPanelViewNotification.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->initViewHierarchyChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const-string/jumbo v1, "DeskPanelViewNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DPVNH.onChildViewAdded-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextNoneState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-wrap4(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextHeadsUpState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get4(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->expand(Z)V

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "DeskPanelViewNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DPVNH.onChildViewRemoved-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/DebugLogMonitor;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get9(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-get9(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestNotificationUpdate()V

    :cond_2
    return-void
.end method
