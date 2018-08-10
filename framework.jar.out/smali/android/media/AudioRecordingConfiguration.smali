.class public final Landroid/media/AudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "AudioRecordingConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecordingConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClientFormat:Landroid/media/AudioFormat;

.field private final mClientSource:I

.field private final mDeviceFormat:Landroid/media/AudioFormat;

.field private final mPatchHandle:I

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "AudioRecordingConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/media/AudioRecordingConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioRecordingConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/media/AudioFormat;Landroid/media/AudioFormat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    iput p2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iput-object p3, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    iput-object p4, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iput p5, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioRecordingConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioRecordingConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    instance-of v2, p1, Landroid/media/AudioRecordingConfiguration;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    iget-object v3, v0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iget-object v2, v0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public getAudioDevice()Landroid/media/AudioDeviceInfo;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error retrieving list of audio patches"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPatch;

    invoke-virtual {v4}, Landroid/media/AudioPatch;->id()I

    move-result v7

    iget v8, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    if-ne v7, v8, :cond_2

    invoke-virtual {v4}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v7, v6

    if-lez v7, :cond_3

    aget-object v7, v6, v9

    invoke-virtual {v7}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioPort;->id()I

    move-result v0

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_3

    aget-object v7, v1, v3

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v7

    if-ne v7, v0, :cond_1

    aget-object v7, v1, v3

    return-object v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object v7, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Couldn\'t find device for recording, did recording end already?"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10
.end method

.method public getClientAudioSessionId()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    return v0
.end method

.method public getClientAudioSource()I
    .locals 1

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    return v0
.end method

.method public getClientFormat()Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
