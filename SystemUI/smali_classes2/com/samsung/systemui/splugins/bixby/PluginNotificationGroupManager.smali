.class public interface abstract Lcom/samsung/systemui/splugins/bixby/PluginNotificationGroupManager;
.super Ljava/lang/Object;
.source "PluginNotificationGroupManager.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "notification"
.end annotation


# virtual methods
.method public abstract getGroupSummary(Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
.end method

.method public abstract getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
.end method

.method public abstract isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z
.end method
