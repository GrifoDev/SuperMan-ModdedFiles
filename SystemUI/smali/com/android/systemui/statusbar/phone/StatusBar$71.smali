.class Lcom/android/systemui/statusbar/phone/StatusBar$71;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 11

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v2, "Trying to show notification guts, but not attached to window"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    move-object v6, p1

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move v2, v1

    move v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    return v1

    :cond_3
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_4

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v2, "Trying to show notification guts, but this channel is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v6, p4}, Lcom/android/systemui/statusbar/phone/StatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v7

    if-nez v7, :cond_5

    return v1

    :cond_5
    instance-of v0, p4, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationFreeformMenuItem;

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetExposedMenuView(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->onAcvitivyLaunchFreeform(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$71;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get32(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBar$71$1;

    move-object v5, p0

    move v8, p2

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/statusbar/phone/StatusBar$71$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$71;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/NotificationGuts;->post(Ljava/lang/Runnable;)Z

    return v3
.end method
