.class public abstract Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AvailabilityCallback"
.end annotation


# instance fields
.field private mIsVendorCallback:Z


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mIsVendorCallback:Z

    return v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->mIsVendorCallback:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
