.class public interface abstract Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;
.super Ljava/lang/Object;
.source "IMultiPhoneWindowManagerPolicy.java"


# virtual methods
.method public abstract adjustImmersiveFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract hasDockedStack()Z
.end method

.method public abstract isExpandedDockedStack()Z
.end method

.method public abstract isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract minimizeOrSildeAllFreeform()V
.end method

.method public abstract minimizeOtherFreeforms(Landroid/os/IBinder;)V
.end method

.method public abstract multiWindowTypeToLayerLw(I)I
.end method

.method public abstract notifyFreeformModeChange()V
.end method

.method public abstract setMultiWindowEnabled(ZLjava/lang/String;)V
.end method

.method public abstract slideOrUnslideAllFreeform()V
.end method

.method public abstract updateImeTargetFreeformTaskId()V
.end method
