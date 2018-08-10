.class public interface abstract Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;
.super Ljava/lang/Object;
.source "NavGesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/statusbar/phone/NavGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GestureHelper"
.end annotation


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setBarState(ZZ)V
.end method
