.class final Landroid/bluetooth/SdpSapsRecord$1;
.super Ljava/lang/Object;
.source "SdpSapsRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/SdpSapsRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpSapsRecord;
    .locals 1

    new-instance v0, Landroid/bluetooth/SdpSapsRecord;

    invoke-direct {v0, p1}, Landroid/bluetooth/SdpSapsRecord;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpSapsRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/SdpSapsRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/SdpRecord;
    .locals 1

    new-array v0, p1, [Landroid/bluetooth/SdpRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/bluetooth/SdpSapsRecord$1;->newArray(I)[Landroid/bluetooth/SdpRecord;

    move-result-object v0

    return-object v0
.end method
