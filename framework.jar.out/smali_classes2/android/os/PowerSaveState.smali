.class public Landroid/os/PowerSaveState;
.super Ljava/lang/Object;
.source "PowerSaveState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerSaveState$1;,
        Landroid/os/PowerSaveState$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PowerSaveState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final batterySaverEnabled:Z

.field public final brightnessFactor:F

.field public final globalBatterySaverEnabled:Z

.field public final gpsMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/PowerSaveState$1;

    invoke-direct {v0}, Landroid/os/PowerSaveState$1;-><init>()V

    sput-object v0, Landroid/os/PowerSaveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->gpsMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/os/PowerSaveState$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->-get0(Landroid/os/PowerSaveState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->-get3(Landroid/os/PowerSaveState$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->gpsMode:I

    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->-get1(Landroid/os/PowerSaveState$Builder;)F

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->-get2(Landroid/os/PowerSaveState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/os/PowerSaveState;->gpsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
