.class public final Lcom/samsung/android/edge/SemEdgeLightingInfo;
.super Ljava/lang/Object;
.source "SemEdgeLightingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/SemEdgeLightingInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/edge/SemEdgeLightingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_APPLICATION:I = 0x1

.field private static final TYPE_INTERNAL:I = 0x7d0

.field public static final TYPE_NOTIFICATION:I = 0x7d1


# instance fields
.field private mExtra:Landroid/os/Bundle;

.field private final mInfiniteLoop:Z

.field private final mMainColor:I

.field private final mSubColor:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/samsung/android/edge/SemEdgeLightingInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "color"    # I

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->enforceEdgeLightingType(I)V

    .line 59
    iput p1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    .line 60
    iput p2, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mMainColor:I

    .line 61
    iput v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mSubColor:I

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mInfiniteLoop:Z

    .line 57
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "mainColor"    # I
    .param p3, "subColor"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->enforceEdgeLightingType(I)V

    .line 74
    iput p1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    .line 75
    iput p2, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mMainColor:I

    .line 76
    iput p3, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mSubColor:I

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mInfiniteLoop:Z

    .line 72
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "mainColor"    # I
    .param p3, "subColor"    # I
    .param p4, "infiniteLoop"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->enforceEdgeLightingType(I)V

    .line 92
    iput p1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    .line 93
    iput p2, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mMainColor:I

    .line 94
    iput p3, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mSubColor:I

    .line 95
    iput-boolean p4, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mInfiniteLoop:Z

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mMainColor:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mSubColor:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mInfiniteLoop:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mExtra:Landroid/os/Bundle;

    .line 98
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private enforceEdgeLightingType(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 107
    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "only SYSTEM can use the type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMainColor()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mMainColor:I

    return v0
.end method

.method public getSubColor()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mSubColor:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    return v0
.end method

.method public isInfiniteLoop()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mInfiniteLoop:Z

    return v0
.end method

.method public setExtra(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mExtra:Landroid/os/Bundle;

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SemEdgeLighitngInfo{type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string/jumbo v1, ", mc = "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    iget v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mMainColor:I

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string/jumbo v1, ", sc = "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    iget v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mSubColor:I

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string/jumbo v1, ", il = "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    iget-boolean v1, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mInfiniteLoop:Z

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "}"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 173
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mMainColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mSubColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-boolean v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mInfiniteLoop:Z

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/edge/SemEdgeLightingInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 172
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method
