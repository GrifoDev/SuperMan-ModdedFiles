.class public final Landroid/accessibilityservice/FingerprintGestureController;
.super Ljava/lang/Object;
.source "FingerprintGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    }
.end annotation


# static fields
.field public static final FINGERPRINT_GESTURE_SWIPE_DOWN:I = 0x8

.field public static final FINGERPRINT_GESTURE_SWIPE_LEFT:I = 0x2

.field public static final FINGERPRINT_GESTURE_SWIPE_RIGHT:I = 0x1

.field public static final FINGERPRINT_GESTURE_SWIPE_UP:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "FingerprintGestureController"


# instance fields
.field private final mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

.field private final mCallbackHandlerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    return-void
.end method

.method static synthetic lambda$-android_accessibilityservice_FingerprintGestureController_5924(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic lambda$-android_accessibilityservice_FingerprintGestureController_6679(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    return-void
.end method


# virtual methods
.method public isGestureDetectionAvailable()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->isFingerprintGestureDetectionAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FingerprintGestureController"

    const-string/jumbo v2, "Failed to check if fingerprint gestures are active"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method

.method public onGesture(I)V
    .locals 7

    iget-object v6, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-direct {v2, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v5, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k;

    invoke-direct {v5, p1, v0}, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_0
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onGestureDetectionActiveChanged(Z)V
    .locals 7

    iget-object v6, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-direct {v2, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v5, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k$1;

    invoke-direct {v5, p1, v0}, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k$1;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_0
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public registerFingerprintGestureCallback(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;)V
    .locals 2

    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterFingerprintGestureCallback(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;)V
    .locals 2

    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
