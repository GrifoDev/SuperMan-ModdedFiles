.class public abstract Lcom/samsung/android/vr/GearVrManagerInternal;
.super Ljava/lang/Object;
.source "GearVrManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getVrActivityType(Landroid/content/pm/ActivityInfo;)I
.end method

.method public abstract getVrRecentsMode()I
.end method

.method public abstract hasHmtFeature()Z
.end method

.method public abstract isDock()Z
.end method

.method public abstract isGearVrInputDevice(Landroid/view/InputDevice;)Z
.end method

.method public abstract isGearVrReady()Z
.end method

.method public abstract isHomeKeyBlocked()Z
.end method

.method public abstract isMount()Z
.end method

.method public abstract isOverlayRestrictionWindow(Ljava/lang/String;II)Z
.end method

.method public abstract isStartActivityAllowed(Ljava/lang/String;I)Z
.end method

.method public abstract isVrMode()Z
.end method

.method public abstract isVrServiceAvailable()Z
.end method

.method public abstract notifyDeviceEventChanged(I)V
.end method

.method public abstract notifyVrAppError(Landroid/app/ApplicationErrorReport;)V
.end method

.method public abstract readyForVrMode(Landroid/content/ComponentName;Landroid/content/Intent;II)Z
.end method

.method public abstract registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
.end method

.method public abstract startVrHome()V
.end method

.method public abstract startVrRecents()V
.end method

.method public abstract unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
.end method
