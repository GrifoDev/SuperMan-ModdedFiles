.class public abstract Landroid/media/VolumeProvider;
.super Ljava/lang/Object;
.source "VolumeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeProvider$Callback;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroid/media/VolumeProvider$Callback;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "volumeControl"    # I
    .param p2, "maxVolume"    # I
    .param p3, "currentVolume"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/media/VolumeProvider;->mControlType:I

    .line 78
    iput p2, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    .line 79
    iput p3, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    .line 76
    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    return v0
.end method

.method public final getMaxVolume()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    return v0
.end method

.method public final getVolumeControl()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/media/VolumeProvider;->mControlType:I

    return v0
.end method

.method public onAdjustVolume(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 143
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 131
    return-void
.end method

.method public setCallback(Landroid/media/VolumeProvider$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/VolumeProvider$Callback;

    .prologue
    .line 151
    iput-object p1, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    .line 150
    return-void
.end method

.method public final setCurrentVolume(I)V
    .locals 1
    .param p1, "currentVolume"    # I

    .prologue
    .line 118
    iput p1, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    .line 119
    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    invoke-virtual {v0, p0}, Landroid/media/VolumeProvider$Callback;->onVolumeChanged(Landroid/media/VolumeProvider;)V

    .line 117
    :cond_0
    return-void
.end method
