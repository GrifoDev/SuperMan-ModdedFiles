.class public final Landroid/media/midi/MidiDeviceInfo;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceInfo$1;,
        Landroid/media/midi/MidiDeviceInfo$PortInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/midi/MidiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_ALSA_CARD:Ljava/lang/String; = "alsa_card"

.field public static final PROPERTY_ALSA_DEVICE:Ljava/lang/String; = "alsa_device"

.field public static final PROPERTY_BLUETOOTH_DEVICE:Ljava/lang/String; = "bluetooth_device"

.field public static final PROPERTY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final PROPERTY_NAME:Ljava/lang/String; = "name"

.field public static final PROPERTY_PRODUCT:Ljava/lang/String; = "product"

.field public static final PROPERTY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final PROPERTY_SERVICE_INFO:Ljava/lang/String; = "service_info"

.field public static final PROPERTY_USB_DEVICE:Ljava/lang/String; = "usb_device"

.field public static final PROPERTY_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "MidiDeviceInfo"

.field public static final TYPE_BLUETOOTH:I = 0x3

.field public static final TYPE_USB:I = 0x1

.field public static final TYPE_VIRTUAL:I = 0x2


# instance fields
.field private final mId:I

.field private final mInputPortCount:I

.field private final mInputPortNames:[Ljava/lang/String;

.field private final mIsPrivate:Z

.field private final mOutputPortCount:I

.field private final mOutputPortNames:[Ljava/lang/String;

.field private final mProperties:Landroid/os/Bundle;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/midi/MidiDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/midi/MidiDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    iput p2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    iput p3, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    iput p4, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    if-nez p5, :cond_0

    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    :goto_0
    if-nez p6, :cond_1

    new-array v0, p4, [Ljava/lang/String;

    iput-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    :goto_1
    iput-object p7, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    iput-boolean p8, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    return-void

    :cond_0
    iput-object p5, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p6, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    goto :goto_1
.end method

.method private getBasicProperties([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v1, p1, v3

    iget-object v5, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "MidiDeviceInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupported property type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/media/midi/MidiDeviceInfo;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/media/midi/MidiDeviceInfo;

    iget v1, p1, Landroid/media/midi/MidiDeviceInfo;->mId:I

    iget v2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    return v0
.end method

.method public getInputPortCount()I
    .locals 1

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    return v0
.end method

.method public getOutputPortCount()I
    .locals 1

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    return v0
.end method

.method public getPorts()[Landroid/media/midi/MidiDeviceInfo$PortInfo;
    .locals 7

    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    iget v5, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    add-int/2addr v4, v5

    new-array v3, v4, [Landroid/media/midi/MidiDeviceInfo$PortInfo;

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    if-ge v0, v4, :cond_0

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    invoke-direct {v4, v6, v0, v5}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    if-ge v0, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x2

    invoke-direct {v4, v6, v0, v5}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public getProperties()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MidiDeviceInfo[mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mInputPortCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mOutputPortCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mIsPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "name"

    aput-object v3, v0, v2

    const-string/jumbo v2, "manufacturer"

    aput-object v2, v0, v1

    const-string/jumbo v1, "product"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "version"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "serial_number"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "alsa_card"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "alsa_device"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroid/media/midi/MidiDeviceInfo;->getBasicProperties([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
