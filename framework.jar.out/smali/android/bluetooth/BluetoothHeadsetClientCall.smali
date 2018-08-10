.class public final Landroid/bluetooth/BluetoothHeadsetClientCall;
.super Ljava/lang/Object;
.source "BluetoothHeadsetClientCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadsetClientCall$1;
    }
.end annotation


# static fields
.field public static final CALL_STATE_ACTIVE:I = 0x0

.field public static final CALL_STATE_ALERTING:I = 0x3

.field public static final CALL_STATE_DIALING:I = 0x2

.field public static final CALL_STATE_HELD:I = 0x1

.field public static final CALL_STATE_HELD_BY_RESPONSE_AND_HOLD:I = 0x6

.field public static final CALL_STATE_INCOMING:I = 0x4

.field public static final CALL_STATE_TERMINATED:I = 0x7

.field public static final CALL_STATE_WAITING:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCreationElapsedMilli:J

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mId:I

.field private mMultiParty:Z

.field private mNumber:Ljava/lang/String;

.field private final mOutgoing:Z

.field private mState:I

.field private final mUUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClientCall$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHeadsetClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZ)V
    .locals 8

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;ILjava/util/UUID;ILjava/lang/String;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    iput p4, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    if-eqz p5, :cond_0

    :goto_0
    iput-object p5, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    iput-boolean p7, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mCreationElapsedMilli:J

    return-void

    :cond_0
    const-string/jumbo p5, ""

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreationElapsedMilli()J
    .locals 2

    iget-wide v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mCreationElapsedMilli:J

    return-wide v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    return v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public isMultiParty()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    return v0
.end method

.method public setMultiParty(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "BluetoothHeadsetClientCall{mDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mUUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, ", mNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mMultiParty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mOutgoing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    const-string/jumbo v1, "ACTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "HELD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string/jumbo v1, "DIALING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string/jumbo v1, "ALERTING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string/jumbo v1, "INCOMING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string/jumbo v1, "WAITING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const-string/jumbo v1, "HELD_BY_RESPONSE_AND_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_7
    const-string/jumbo v1, "TERMINATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mMultiParty:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothHeadsetClientCall;->mOutgoing:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
