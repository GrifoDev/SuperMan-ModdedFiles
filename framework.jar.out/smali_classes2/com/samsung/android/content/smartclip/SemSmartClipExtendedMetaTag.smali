.class public Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
.super Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
.source "SemSmartClipExtendedMetaTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SemSmartClipExtendedMetaTag"


# instance fields
.field protected mExtraData:[B

.field protected mParcelableData:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag$1;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag$1;-><init>()V

    sput-object v0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 37
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parcelableData"    # Landroid/os/Parcelable;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 37
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    .line 85
    iput-object p3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "extraData"    # [B

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 37
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    .line 74
    iput-object p3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getExtraData()[B
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    return-object v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->setType(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->setValue(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .local v0, "extraDataLen":I
    if-lez v0, :cond_1

    .line 134
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 135
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 141
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 142
    .local v1, "parcelableDataExist":Z
    :cond_0
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    .line 124
    :goto_1
    return-void

    .line 137
    .end local v1    # "parcelableDataExist":Z
    :cond_1
    iput-object v5, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    goto :goto_0

    .line 145
    .restart local v1    # "parcelableDataExist":Z
    :cond_2
    iput-object v5, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    :goto_1
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
