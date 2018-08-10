.class public Landroid/bluetooth/OobData;
.super Ljava/lang/Object;
.source "OobData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/OobData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/OobData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private leBluetoothDeviceAddress:[B

.field private leSecureConnectionsConfirmation:[B

.field private leSecureConnectionsRandom:[B

.field private securityManagerTk:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/OobData$1;

    invoke-direct {v0}, Landroid/bluetooth/OobData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->leBluetoothDeviceAddress:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->leSecureConnectionsConfirmation:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/OobData;->leSecureConnectionsRandom:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/OobData;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/OobData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLeBluetoothDeviceAddress()[B
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/OobData;->leBluetoothDeviceAddress:[B

    return-object v0
.end method

.method public getLeSecureConnectionsConfirmation()[B
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/OobData;->leSecureConnectionsConfirmation:[B

    return-object v0
.end method

.method public getLeSecureConnectionsRandom()[B
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/OobData;->leSecureConnectionsRandom:[B

    return-object v0
.end method

.method public getSecurityManagerTk()[B
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    return-object v0
.end method

.method public setLeBluetoothDeviceAddress([B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->leBluetoothDeviceAddress:[B

    return-void
.end method

.method public setLeSecureConnectionsConfirmation([B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->leSecureConnectionsConfirmation:[B

    return-void
.end method

.method public setLeSecureConnectionsRandom([B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->leSecureConnectionsRandom:[B

    return-void
.end method

.method public setSecurityManagerTk([B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/OobData;->leBluetoothDeviceAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->securityManagerTk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->leSecureConnectionsConfirmation:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/OobData;->leSecureConnectionsRandom:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
