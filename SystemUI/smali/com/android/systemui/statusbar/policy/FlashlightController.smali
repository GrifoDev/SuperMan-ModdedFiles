.class public interface abstract Lcom/android/systemui/statusbar/policy/FlashlightController;
.super Ljava/lang/Object;
.source "FlashlightController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController",
        "<",
        "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
.end method

.method public abstract getFlashlightLevel()I
.end method

.method public abstract hasFlashlight()Z
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isCameraManagerReady()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
.end method

.method public abstract setFlashlight(Z)V
.end method

.method public abstract setFlashlightLevel(IZ)V
.end method

.method public abstract tryInitCamera()V
.end method

.method public abstract updateTorchCallback()V
.end method
