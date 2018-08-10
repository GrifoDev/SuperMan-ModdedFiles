.class public interface abstract Lcom/android/systemui/plugins/VolumeDialogController;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/Dependencies;
    value = {
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/VolumeDialogController$State;
        .end subannotation,
        .subannotation Lcom/android/systemui/plugins/annotations/DependsOn;
            target = Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;,
        Lcom/android/systemui/plugins/VolumeDialogController$State;,
        Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
.end method

.method public abstract getAudioManager()Landroid/media/AudioManager;
.end method

.method public abstract getState()V
.end method

.method public abstract hasVibrator()Z
.end method

.method public abstract isChangedFromKey()Z
.end method

.method public abstract notifyVisible(Z)V
.end method

.method public abstract removeCallback(Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;)V
.end method

.method public abstract setActiveStream(I)V
.end method

.method public abstract setRingerMode(IZ)V
.end method

.method public abstract setStreamVolume(II)V
.end method

.method public abstract userActivity()V
.end method

.method public abstract vibrate()V
.end method
