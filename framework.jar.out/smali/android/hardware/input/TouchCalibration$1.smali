.class final Landroid/hardware/input/TouchCalibration$1;
.super Ljava/lang/Object;
.source "TouchCalibration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/TouchCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/hardware/input/TouchCalibration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/TouchCalibration;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    new-instance v0, Landroid/hardware/input/TouchCalibration;

    invoke-direct {v0, p1}, Landroid/hardware/input/TouchCalibration;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Landroid/hardware/input/TouchCalibration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/TouchCalibration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/input/TouchCalibration;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 38
    new-array v0, p1, [Landroid/hardware/input/TouchCalibration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/hardware/input/TouchCalibration$1;->newArray(I)[Landroid/hardware/input/TouchCalibration;

    move-result-object v0

    return-object v0
.end method
