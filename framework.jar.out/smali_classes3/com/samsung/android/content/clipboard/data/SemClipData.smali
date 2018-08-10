.class public abstract Lcom/samsung/android/content/clipboard/data/SemClipData;
.super Ljava/lang/Object;
.source "SemClipData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/clipboard/data/SemClipData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemClipData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCallerUid:J

.field protected mClipData:Landroid/content/ClipData;

.field private mClipId:Ljava/lang/String;

.field private mIsProtected:Z

.field private transient mParcelFd:Landroid/os/ParcelFileDescriptor;

.field private mTimestamp:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemClipData$1;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    iput p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->createUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    return-void
.end method

.method private createUniqueId()Ljava/lang/String;
    .locals 6

    const/16 v5, 0xe

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->hashCode()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public canAlternateClipData(I)Z
    .locals 2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    return v1
.end method

.method public checkClipId()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->createUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public closeParcelFileDescriptor()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "SemClipData"

    const-string/jumbo v2, "IOException!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 4

    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setProtected(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "SemClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ClipBoardDataFactory.createClipBoardData() is null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCallerUid()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    return-wide v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipDataInternal()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getClipDataInternal()Landroid/content/ClipData;
.end method

.method public getClipId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    return-object v0
.end method

.method public getClipType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    return v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    return-wide v0
.end method

.method public isProtected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    return v0
.end method

.method protected abstract readFromSource(Landroid/os/Parcel;)V
.end method

.method public setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setTimestamp(J)V

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setCallerUid(J)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipId(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallerUid(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    return-void
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    return-void
.end method

.method public setClipId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    return-void
.end method

.method public setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public setProtectState(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    return-void
.end method

.method public setProtected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
