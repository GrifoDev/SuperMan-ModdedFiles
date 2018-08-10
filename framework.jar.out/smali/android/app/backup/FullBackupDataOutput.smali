.class public Landroid/app/backup/FullBackupDataOutput;
.super Ljava/lang/Object;
.source "FullBackupDataOutput.java"


# instance fields
.field private final mData:Landroid/app/backup/BackupDataOutput;

.field private final mQuota:J

.field private mSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    iput-wide p1, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;J)V

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;J)V

    iput-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    iput-wide p2, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    return-void
.end method


# virtual methods
.method public addSize(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    :cond_0
    return-void
.end method

.method public getData()Landroid/app/backup/BackupDataOutput;
    .locals 1

    iget-object v0, p0, Landroid/app/backup/FullBackupDataOutput;->mData:Landroid/app/backup/BackupDataOutput;

    return-object v0
.end method

.method public getQuota()J
    .locals 2

    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mQuota:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Landroid/app/backup/FullBackupDataOutput;->mSize:J

    return-wide v0
.end method
