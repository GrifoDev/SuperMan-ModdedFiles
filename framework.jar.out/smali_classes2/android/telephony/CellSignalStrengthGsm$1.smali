.class final Landroid/telephony/CellSignalStrengthGsm$1;
.super Ljava/lang/Object;
.source "CellSignalStrengthGsm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellSignalStrengthGsm;
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
        "Landroid/telephony/CellSignalStrengthGsm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellSignalStrengthGsm;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 243
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthGsm$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellSignalStrengthGsm;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 248
    new-array v0, p1, [Landroid/telephony/CellSignalStrengthGsm;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthGsm$1;->newArray(I)[Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    return-object v0
.end method
