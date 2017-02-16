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

.field private mClipData:Landroid/content/ClipData;

.field private mClipId:Ljava/lang/String;

.field private mIsProtected:Z

.field private transient mParcelFd:Landroid/os/ParcelFileDescriptor;

.field private mTimestamp:J

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/samsung/android/content/clipboard/data/SemClipData$1;

    invoke-direct {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/content/clipboard/data/SemClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    .line 48
    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    .line 49
    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 54
    iput p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    .line 55
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    .line 57
    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->createUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    .line 48
    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    .line 49
    iput-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    .line 65
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    .line 67
    const-class v0, Landroid/content/ClipData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    .line 68
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private createUniqueId()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xe

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 74
    .local v0, "id":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v3, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 76
    .local v2, "rand":Ljava/util/Random;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 77
    .local v1, "oCalendar":Ljava/util/Calendar;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 79
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public canAlternateClipData(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 203
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    if-ne v1, p1, :cond_1

    .line 204
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 207
    :cond_1
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 208
    .local v0, "altData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    return v1
.end method

.method public checkClipId()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->createUniqueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    .line 89
    :cond_0
    return-void
.end method

.method public closeParcelFileDescriptor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    iput-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 116
    :cond_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 124
    :cond_1
    const-string/jumbo v1, "SemClipData"

    const-string/jumbo v2, "IOException!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "Result":Z
    if-eqz p1, :cond_0

    .line 245
    instance-of v2, p1, Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 246
    nop

    nop

    .line 247
    .local v1, "trgData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 252
    .end local v0    # "Result":Z
    .end local v1    # "trgData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_0
    :goto_0
    return v0

    .line 247
    .restart local v0    # "Result":Z
    .restart local v1    # "trgData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 249
    .end local v1    # "trgData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "Result":Z
    goto :goto_0
.end method

.method public getAlternateClipData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 213
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->createClipBoardData(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 215
    .local v0, "clipData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 223
    .end local v0    # "clipData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_0
    :goto_0
    return-object v0

    .line 220
    .restart local v0    # "clipData":Lcom/samsung/android/content/clipboard/data/SemClipData;
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

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    return-wide v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    return-object v0
.end method

.method public getClipType()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    return v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    return-wide v0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    return v0
.end method

.method protected abstract readFromSource(Landroid/os/Parcel;)V
.end method

.method public setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "altData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 228
    if-eqz p2, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .line 230
    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setTimestamp(J)V

    .line 231
    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setCallerUid(J)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipId(Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallerUid(J)V
    .locals 1
    .param p1, "callerUid"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    .line 145
    return-void
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "data"    # Landroid/content/ClipData;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    .line 197
    return-void
.end method

.method public setClipId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    .line 111
    return-void
.end method

.method public setProtectState(Z)V
    .locals 0
    .param p1, "isProtected"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    .line 175
    return-void
.end method

.method public setProtected(Z)V
    .locals 0
    .param p1, "isProtected"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    .line 166
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    .line 101
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 271
    iget v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 273
    iget-boolean v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mIsProtected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 274
    iget-wide v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mCallerUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mParcelFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemClipData;->mClipId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    return-void
.end method
