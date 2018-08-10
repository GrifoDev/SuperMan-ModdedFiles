.class public interface abstract Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;
.super Ljava/lang/Object;
.source "MultiWindowManagerPolicy.java"


# direct methods
.method public static windowTypeToLayerLw(I)I
    .locals 1

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    :pswitch_3
    const/16 v0, 0xb

    return v0

    :pswitch_4
    const/16 v0, 0x15

    return v0

    :pswitch_data_0
    .packed-switch 0x8fd
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract getNavigationBarHeight()I
.end method

.method public abstract getStatusBarHeight()I
.end method

.method public abstract isLockTaskModeEnabled()Z
.end method

.method public abstract isMinimizedDockAndHomeStackResizable(I)Z
.end method

.method public abstract isQuickPanelExpanded()Z
.end method

.method public abstract isRecentsVisible()Z
.end method
