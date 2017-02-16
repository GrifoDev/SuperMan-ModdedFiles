.class public Landroid/mtp/MtpStorage;
.super Ljava/lang/Object;
.source "MtpStorage.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mMaxFileSize:J

.field private final mPath:Ljava/lang/String;

.field private final mRemovable:Z

.field private final mReserveSpace:J

.field private final mStorageId:I


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V
    .locals 4
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x400

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v0

    iput v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    .line 40
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMtpReserveSpace()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroid/mtp/MtpStorage;->mReserveSpace:J

    .line 43
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getMaxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    .line 38
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mMaxFileSize:J

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/mtp/MtpStorage;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getReserveSpace()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Landroid/mtp/MtpStorage;->mReserveSpace:J

    return-wide v0
.end method

.method public final getStorageId()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Landroid/mtp/MtpStorage;->mStorageId:I

    return v0
.end method

.method public final isRemovable()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/mtp/MtpStorage;->mRemovable:Z

    return v0
.end method
