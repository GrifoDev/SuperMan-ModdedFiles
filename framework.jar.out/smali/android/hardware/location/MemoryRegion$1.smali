.class final Landroid/hardware/location/MemoryRegion$1;
.super Ljava/lang/Object;
.source "MemoryRegion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/MemoryRegion;
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
        "Landroid/hardware/location/MemoryRegion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/MemoryRegion;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 133
    new-instance v0, Landroid/hardware/location/MemoryRegion;

    invoke-direct {v0, p1}, Landroid/hardware/location/MemoryRegion;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/hardware/location/MemoryRegion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/MemoryRegion;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/MemoryRegion;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 137
    new-array v0, p1, [Landroid/hardware/location/MemoryRegion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Landroid/hardware/location/MemoryRegion$1;->newArray(I)[Landroid/hardware/location/MemoryRegion;

    move-result-object v0

    return-object v0
.end method
