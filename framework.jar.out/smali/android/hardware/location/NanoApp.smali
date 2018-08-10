.class public Landroid/hardware/location/NanoApp;
.super Ljava/lang/Object;
.source "NanoApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/NanoApp$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/NanoApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final UNKNOWN:Ljava/lang/String;

.field private mAppBinary:[B

.field private mAppId:J

.field private mAppIdSet:Z

.field private mAppVersion:I

.field private mName:Ljava/lang/String;

.field private mNeededExecMemBytes:I

.field private mNeededReadMemBytes:I

.field private mNeededSensors:[I

.field private mNeededWriteMemBytes:I

.field private mOutputEvents:[I

.field private mPublisher:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/NanoApp$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoApp$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/location/NanoApp;-><init>(I[B)V

    iput-boolean v1, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NanoApp"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    const-string/jumbo v0, "NanoApp"

    const-string/jumbo v1, "NanoApp(int, byte[]) is deprecated, please use NanoApp(long, byte[]) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(J[B)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "NanoApp"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    const-string/jumbo v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    const-string/jumbo v0, "Unknown"

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    iput-wide p1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    iput v1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    iput v1, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    iput v1, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    iput v1, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    iput-object p3, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v3, "NanoApp"

    iput-object v3, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unknown"

    iput-object v3, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v3, v1, [I

    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    iget-object v3, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v3, v2, [I

    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    iget-object v3, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v3, v0, [B

    iput-object v3, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    iget-object v3, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoApp;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/NanoApp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppBinary()[B
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    return-wide v0
.end method

.method public getAppVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNeededExecMemBytes()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    return v0
.end method

.method public getNeededReadMemBytes()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    return v0
.end method

.method public getNeededSensors()[I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    return-object v0
.end method

.method public getNeededWriteMemBytes()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    return v0
.end method

.method public getOutputEvents()[I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method public setAppBinary([B)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    return-void
.end method

.method public setAppId(J)V
    .locals 1

    iput-wide p1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    return-void
.end method

.method public setAppVersion(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNeededExecMemBytes(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    return-void
.end method

.method public setNeededReadMemBytes(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    return-void
.end method

.method public setNeededSensors([I)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    return-void
.end method

.method public setNeededWriteMemBytes(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    return-void
.end method

.method public setOutputEvents([I)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Publisher : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Must set non-null AppBinary for nanoapp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Must set AppId for nanoapp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
