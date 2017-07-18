.class public Lcom/gsma/services/rcs/upload/FileUploadInfo;
.super Ljava/lang/Object;
.source "FileUploadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/upload/FileUploadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFile:Landroid/net/Uri;

.field private mFileExpiration:J

.field private mFileIconExpiration:J

.field private mFileicon:Landroid/net/Uri;

.field private mFileiconMimeType:Ljava/lang/String;

.field private mFileiconSize:J

.field private mFileiconValidity:J

.field private mFilename:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mSize:J

.field private mValidity:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gsma/services/rcs/upload/FileUploadInfo$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/upload/FileUploadInfo$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JLjava/lang/String;JLjava/lang/String;Landroid/net/Uri;JJLjava/lang/String;JJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    iput-object p1, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    iput-wide p2, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mValidity:J

    iput-object p4, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFilename:Ljava/lang/String;

    iput-wide p5, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    iput-object p7, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    iput-object p8, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    iput-wide p9, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconValidity:J

    iput-wide p11, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconSize:J

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconMimeType:Ljava/lang/String;

    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileExpiration:J

    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mValidity:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconValidity:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileExpiration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFile()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    return-object v0
.end method

.method public getFileExpiration()J
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileExpiration:J

    return-wide v0
.end method

.method public getFileIcon()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    return-object v0
.end method

.method public getFileIconExpiration()J
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    return-wide v0
.end method

.method public getFileIconMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileIconSize()J
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconSize:J

    return-wide v0
.end method

.method public getFileIconValidity()J
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconValidity:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    return-wide v0
.end method

.method public getValidity()J
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mValidity:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFile:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mValidity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileicon:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconValidity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileiconMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/gsma/services/rcs/upload/FileUploadInfo;->mFileIconExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
