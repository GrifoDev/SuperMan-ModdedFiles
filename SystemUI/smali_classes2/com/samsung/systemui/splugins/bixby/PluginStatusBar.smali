.class public interface abstract Lcom/samsung/systemui/splugins/bixby/PluginStatusBar;
.super Ljava/lang/Object;
.source "PluginStatusBar.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "notification"
.end annotation


# virtual methods
.method public abstract animateCollapsePanels()V
.end method

.method public abstract animateExpandNotificationsPanel()V
.end method

.method public abstract animateExpandSettingsPanel(Ljava/lang/String;)V
.end method

.method public abstract clearAllDeskNotifications()V
.end method

.method public abstract clearAllNotifications()V
.end method

.method public abstract getBrightnessOnTop()Z
.end method

.method public abstract getDeskMode()Z
.end method

.method public abstract getGroupManager()Lcom/samsung/systemui/splugins/bixby/PluginNotificationGroupManager;
.end method

.method public abstract getNotificationData()Lcom/samsung/systemui/splugins/bixby/PluginNotificationData;
.end method

.method public abstract getNotificationView(I)Landroid/view/View;
.end method

.method public abstract hasActiveClearableNotifications()Z
.end method

.method public abstract isQsExpanded()Z
.end method

.method public abstract launchContactUsApp()Z
.end method

.method public abstract setBrightnessOnTop(Z)Z
.end method

.method public abstract setQSPanelGrid(I)Z
.end method

.method public abstract showEdit()V
.end method

.method public abstract showGridPopup()V
.end method
