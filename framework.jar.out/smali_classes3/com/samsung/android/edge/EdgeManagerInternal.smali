.class public abstract Lcom/samsung/android/edge/EdgeManagerInternal;
.super Ljava/lang/Object;
.source "EdgeManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelEdgeLightingForNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract edgeLightingForNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract excludePackageFromRunningEdgeLightingForNotification(Ljava/lang/String;)V
.end method

.method public abstract isRunningEdgeLightingForNotificationFromPackage(Ljava/lang/String;)Z
.end method

.method public abstract putOnGoingEventNotification(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeOnGoingEventNotification(Ljava/lang/String;)V
.end method
