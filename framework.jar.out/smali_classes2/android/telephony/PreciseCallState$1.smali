.class final Landroid/telephony/PreciseCallState$1;
.super Ljava/lang/Object;
.source "PreciseCallState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PreciseCallState;
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
        "Landroid/telephony/PreciseCallState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/PreciseCallState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 258
    new-instance v0, Landroid/telephony/PreciseCallState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/PreciseCallState;-><init>(Landroid/os/Parcel;Landroid/telephony/PreciseCallState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Landroid/telephony/PreciseCallState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/PreciseCallState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/PreciseCallState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 262
    new-array v0, p1, [Landroid/telephony/PreciseCallState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Landroid/telephony/PreciseCallState$1;->newArray(I)[Landroid/telephony/PreciseCallState;

    move-result-object v0

    return-object v0
.end method
