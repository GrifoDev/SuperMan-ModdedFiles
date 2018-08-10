.class public Landroid/telephony/PreciseCallState;
.super Ljava/lang/Object;
.source "PreciseCallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PreciseCallState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/PreciseCallState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRECISE_CALL_STATE_ACTIVE:I = 0x1

.field public static final PRECISE_CALL_STATE_ALERTING:I = 0x4

.field public static final PRECISE_CALL_STATE_DIALING:I = 0x3

.field public static final PRECISE_CALL_STATE_DISCONNECTED:I = 0x7

.field public static final PRECISE_CALL_STATE_DISCONNECTING:I = 0x8

.field public static final PRECISE_CALL_STATE_HOLDING:I = 0x2

.field public static final PRECISE_CALL_STATE_IDLE:I = 0x0

.field public static final PRECISE_CALL_STATE_INCOMING:I = 0x5

.field public static final PRECISE_CALL_STATE_NOT_VALID:I = -0x1

.field public static final PRECISE_CALL_STATE_WAITING:I = 0x6


# instance fields
.field private mBackgroundCallState:I

.field private mDisconnectCause:I

.field private mForegroundCallState:I

.field private mPreciseDisconnectCause:I

.field private mRingingCallState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/PreciseCallState$1;

    invoke-direct {v0}, Landroid/telephony/PreciseCallState$1;-><init>()V

    sput-object v0, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    iput p1, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    iput p2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    iput p3, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    iput p4, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    iput p5, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PreciseCallState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PreciseCallState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/PreciseCallState;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/telephony/PreciseCallState;

    iget v3, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    iget v4, v0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    iget v4, v0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    iget v4, v0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    iget v4, v0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    iget v4, v0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    if-eq v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getBackgroundCallState()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    return v0
.end method

.method public getDisconnectCause()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    return v0
.end method

.method public getForegroundCallState()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    return v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    return v0
.end method

.method public getRingingCallState()I
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    add-int v1, v2, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ringing call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Foreground call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Background call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Disconnect cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", Precise disconnect cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/PreciseCallState;->mRingingCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PreciseCallState;->mForegroundCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PreciseCallState;->mBackgroundCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PreciseCallState;->mDisconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/PreciseCallState;->mPreciseDisconnectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
