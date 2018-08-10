.class public abstract Lcom/samsung/android/edge/EdgeManagerInternal;
.super Ljava/lang/Object;
.source "EdgeManagerInternal.java"


# static fields
.field public static final NOTIFICATION_KEY_IS_HEAD_UP:Ljava/lang/String; = "isHeadUp"

.field public static final NOTIFICATION_KEY_IS_INTERRUPT:Ljava/lang/String; = "isInterrupt"

.field public static final NOTIFICATION_KEY_IS_UPDATE:Ljava/lang/String; = "isUpdate"

.field public static final NOTIFICATION_KEY_VISIBILITY:Ljava/lang/String; = "visibility"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract hideForNotification(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract hideForWakeLock(Ljava/lang/String;I)V
.end method

.method public abstract hideForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSuppressed(I)V
.end method

.method public abstract showForNotification(Landroid/service/notification/StatusBarNotification;Landroid/os/Bundle;)Z
.end method

.method public abstract showForResumedActivity(Landroid/content/ComponentName;)V
.end method

.method public abstract showForToast(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract showForWakeLock(Ljava/lang/String;I)Z
.end method

.method public abstract showForWakeLockByWindow(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract showForWakeUp(Ljava/lang/String;I)Z
.end method

.method public abstract showForWakeUpByWindow(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract statusBarDisabled(II)V
.end method
