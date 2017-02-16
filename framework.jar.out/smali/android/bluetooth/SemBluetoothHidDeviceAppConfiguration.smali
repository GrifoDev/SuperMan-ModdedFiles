.class public final Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;
.super Ljava/lang/Object;
.source "SemBluetoothHidDeviceAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHash:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration$1;

    invoke-direct {v0}, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration$1;-><init>()V

    .line 64
    sput-object v0, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 37
    .local v0, "rnd":Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;->mHash:J

    .line 35
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "hash"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;->mHash:J

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 47
    instance-of v1, p1, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    if-eqz v1, :cond_1

    .line 50
    iget-wide v2, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;->mHash:J

    nop

    nop

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v4, p1, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;->mHash:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 52
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 84
    iget-wide v0, p0, Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;->mHash:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    return-void
.end method
