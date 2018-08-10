.class public interface abstract Lcom/samsung/systemui/splugins/bixby/PluginExpandableNotificationRow;
.super Ljava/lang/Object;
.source "PluginExpandableNotificationRow.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "notification"
.end annotation


# virtual methods
.method public abstract canViewBeDismissed()Z
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getEnrVisibility()I
.end method

.method public abstract getPrivateLayout()Landroid/view/View;
.end method

.method public abstract getPublicLayout()Landroid/view/View;
.end method

.method public abstract getShowingLayout()Landroid/view/View;
.end method

.method public abstract getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
.end method

.method public abstract getVisibleNotificationHeader()Landroid/view/View;
.end method

.method public abstract isExpandable()Z
.end method

.method public abstract isExpanded()Z
.end method

.method public abstract isLowPriority()Z
.end method

.method public abstract isSummaryWithChildren()Z
.end method

.method public abstract notifyHeightChanged(Z)V
.end method

.method public abstract performDismiss()V
.end method

.method public abstract performEnrClick()V
.end method

.method public abstract setUserExpanded(Z)V
.end method

.method public abstract setUserExpanded(ZZ)V
.end method
