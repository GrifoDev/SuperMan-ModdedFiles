.class public Landroid/hardware/radio/RadioManager$ModuleProperties;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$ModuleProperties$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private final mClassId:I

.field private final mId:I

.field private final mImplementor:Ljava/lang/String;

.field private final mIsCaptureSupported:Z

.field private final mNumAudioSources:I

.field private final mNumTuners:I

.field private final mProduct:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/RadioManager$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ[Landroid/hardware/radio/RadioManager$BandDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    iput p2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    iput-object p3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    iput-object p4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    iput-object p5, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    iput-object p6, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    iput p7, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    iput p8, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    iput-boolean p9, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    iput-object p10, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    const-class v2, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Landroid/hardware/radio/RadioManager$BandDescriptor;

    iput-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    aget-object v2, v1, v0

    check-cast v2, Landroid/hardware/radio/RadioManager$BandDescriptor;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$ModuleProperties;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;-><init>(Landroid/os/Parcel;)V

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

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ModuleProperties;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getClassId()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    return v3

    :cond_4
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getProduct()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    return v3

    :cond_6
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    return v3

    :cond_8
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    if-nez v1, :cond_a

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getSerial()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    return v3

    :cond_a
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getNumTuners()I

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    :cond_c
    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getNumAudioSources()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    :cond_d
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->isCaptureSupported()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    :cond_e
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    :cond_f
    return v4
.end method

.method public getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    return-object v0
.end method

.method public getClassId()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    return v0
.end method

.method public getImplementor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    return-object v0
.end method

.method public getNumAudioSources()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    return v0
.end method

.method public getNumTuners()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    return v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    add-int v1, v2, v4

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    add-int v1, v2, v4

    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v4, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    return v1

    :cond_1
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public isCaptureSupported()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ModuleProperties [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mClassId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mImplementor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mProduct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNumTuners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mNumAudioSources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIsCaptureSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mBands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mClassId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mProduct:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mSerial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumTuners:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mNumAudioSources:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mIsCaptureSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ModuleProperties;->mBands:[Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
