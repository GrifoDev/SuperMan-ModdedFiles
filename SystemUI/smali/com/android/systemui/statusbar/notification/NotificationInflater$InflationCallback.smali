.class public interface abstract Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
.super Ljava/lang/Object;
.source "NotificationInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InflationCallback"
.end annotation


# virtual methods
.method public abstract handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
.end method

.method public abstract onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end method
