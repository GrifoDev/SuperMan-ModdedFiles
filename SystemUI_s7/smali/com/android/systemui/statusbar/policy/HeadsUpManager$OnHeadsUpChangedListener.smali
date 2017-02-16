.class public interface abstract Lcom/android/systemui/statusbar/policy/HeadsUpManager$OnHeadsUpChangedListener;
.super Ljava/lang/Object;
.source "HeadsUpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnHeadsUpChangedListener"
.end annotation


# virtual methods
.method public abstract onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end method

.method public abstract onHeadsUpPinnedModeChanged(Z)V
.end method

.method public abstract onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
.end method

.method public abstract onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end method
