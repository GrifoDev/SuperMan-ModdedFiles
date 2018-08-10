.class public interface abstract Lcom/samsung/systemui/splugins/bixby/PluginNotificationEntry;
.super Ljava/lang/Object;
.source "PluginNotificationEntry.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "notification"
.end annotation


# virtual methods
.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract getEnr()Lcom/samsung/systemui/splugins/bixby/PluginExpandableNotificationRow;
.end method

.method public abstract getExpandedContentView()Landroid/view/View;
.end method

.method public abstract getPublicContentView()Landroid/view/View;
.end method

.method public abstract getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
.end method
