.class public interface abstract Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
.super Ljava/lang/Object;
.source "NotificationSwipeActionHelper.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/DependsOn;
    target = Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_NOTIFICATION_SWIPE_ACTION"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract dismiss(Landroid/view/View;F)V
.end method

.method public abstract getMinDismissVelocity()F
.end method

.method public abstract isDismissGesture(Landroid/view/MotionEvent;)Z
.end method

.method public abstract isFalseGesture(Landroid/view/MotionEvent;)Z
.end method

.method public abstract snap(Landroid/view/View;FF)V
.end method

.method public abstract snooze(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;)V
.end method

.method public abstract swipedFarEnough(FF)Z
.end method

.method public abstract swipedFastEnough(FF)Z
.end method
