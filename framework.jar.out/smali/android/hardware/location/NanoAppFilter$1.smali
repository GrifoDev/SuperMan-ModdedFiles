.class final Landroid/hardware/location/NanoAppFilter$1;
.super Ljava/lang/Object;
.source "NanoAppFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/NanoAppFilter;
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
        "Landroid/hardware/location/NanoAppFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/NanoAppFilter;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 135
    new-instance v0, Landroid/hardware/location/NanoAppFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/location/NanoAppFilter;-><init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppFilter;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Landroid/hardware/location/NanoAppFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/NanoAppFilter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/NanoAppFilter;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 139
    new-array v0, p1, [Landroid/hardware/location/NanoAppFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Landroid/hardware/location/NanoAppFilter$1;->newArray(I)[Landroid/hardware/location/NanoAppFilter;

    move-result-object v0

    return-object v0
.end method
