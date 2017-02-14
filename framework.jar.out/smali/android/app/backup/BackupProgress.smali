.class public Landroid/app/backup/BackupProgress;
.super Ljava/lang/Object;
.source "BackupProgress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupProgress$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/backup/BackupProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bytesExpected:J

.field public final bytesTransferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/backup/BackupProgress$1;

    invoke-direct {v0}, Landroid/app/backup/BackupProgress$1;-><init>()V

    sput-object v0, Landroid/app/backup/BackupProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/app/backup/BackupProgress;->bytesExpected:J

    iput-wide p3, p0, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesExpected:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/backup/BackupProgress;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/backup/BackupProgress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesExpected:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/backup/BackupProgress;->bytesTransferred:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
