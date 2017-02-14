.class public interface abstract Lcom/android/systemui/volume/VolumeDialogController$Callbacks;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onConfigurationChanged()V
.end method

.method public abstract onDismissRequested(I)V
.end method

.method public abstract onLayoutDirectionChanged(I)V
.end method

.method public abstract onPlaySound()V
.end method

.method public abstract onShowRequested(I)V
.end method

.method public abstract onShowSafetyWarning(I)V
.end method

.method public abstract onShowSilentHint()V
.end method

.method public abstract onShowVibrateHint()V
.end method

.method public abstract onShowVolumeLimiterToast()V
.end method

.method public abstract onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
.end method

.method public abstract onStopSound()V
.end method

.method public abstract onThemeChanged()V
.end method

.method public abstract onZenModeChanged()V
.end method
