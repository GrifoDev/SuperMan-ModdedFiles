.class public interface abstract Lcom/android/server/statusbar/StatusBarManagerInternal;
.super Ljava/lang/Object;
.source "StatusBarManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerInternal$GlobalActionsListener;
    }
.end annotation


# virtual methods
.method public abstract appTransitionCancelled()V
.end method

.method public abstract appTransitionFinished()V
.end method

.method public abstract appTransitionPending()V
.end method

.method public abstract appTransitionStarting(JJ)V
.end method

.method public abstract cancelPreloadRecentApps()V
.end method

.method public abstract dismissKeyboardShortcutsMenu()V
.end method

.method public abstract hideRecentApps(ZZ)V
.end method

.method public abstract onCameraLaunchGestureDetected(I)V
.end method

.method public abstract preloadRecentApps()V
.end method

.method public abstract setCurrentUser(I)V
.end method

.method public abstract setGlobalActionsListener(Lcom/android/server/statusbar/StatusBarManagerInternal$GlobalActionsListener;)V
.end method

.method public abstract setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V
.end method

.method public abstract setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
.end method

.method public abstract setWindowState(II)V
.end method

.method public abstract showAssistDisclosure()V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showPictureInPictureMenu()V
.end method

.method public abstract showRecentApps(ZZ)V
.end method

.method public abstract showScreenPinningRequest(I)V
.end method

.method public abstract showSnapWindowGuideView(ILjava/lang/String;)V
.end method

.method public abstract startAssist(Landroid/os/Bundle;)V
.end method

.method public abstract toggleKeyboardShortcutsMenu(I)V
.end method

.method public abstract toggleRecentApps()V
.end method

.method public abstract toggleSplitScreen()V
.end method

.method public abstract topAppWindowChanged(Z)V
.end method
