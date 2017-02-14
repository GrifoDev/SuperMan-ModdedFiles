.class final Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;
.super Lcom/android/server/policy/WindowOrientationListener;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/RotationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioWindowOrientationListener"
.end annotation


# static fields
.field private static sRotationCheckThread:Lcom/android/server/audio/RotationHelper$RotationCheckThread;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 1

    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->sRotationCheckThread:Lcom/android/server/audio/RotationHelper$RotationCheckThread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->sRotationCheckThread:Lcom/android/server/audio/RotationHelper$RotationCheckThread;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->endCheck()V

    :cond_0
    new-instance v0, Lcom/android/server/audio/RotationHelper$RotationCheckThread;

    invoke-direct {v0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;-><init>()V

    sput-object v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->sRotationCheckThread:Lcom/android/server/audio/RotationHelper$RotationCheckThread;

    sget-object v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->sRotationCheckThread:Lcom/android/server/audio/RotationHelper$RotationCheckThread;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$RotationCheckThread;->beginCheck()V

    return-void
.end method
