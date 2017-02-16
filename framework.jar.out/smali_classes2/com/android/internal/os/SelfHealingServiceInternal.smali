.class public abstract Lcom/android/internal/os/SelfHealingServiceInternal;
.super Ljava/lang/Object;
.source "SelfHealingServiceInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract wakeLockAcquired(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V
.end method

.method public abstract wakeLockChanged(Landroid/os/IBinder;ILandroid/os/WorkSource;)V
.end method

.method public abstract wakeLockReleased(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;)V
.end method
