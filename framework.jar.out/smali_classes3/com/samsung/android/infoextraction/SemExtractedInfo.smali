.class public Lcom/samsung/android/infoextraction/SemExtractedInfo;
.super Ljava/lang/Object;
.source "SemExtractedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/SemExtractedInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/infoextraction/SemExtractedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDE_HERMES_UI:I = 0x2

.field private static final SUPPORT_HERMES_UI:I = 0x1

.field private static final USE_EXTRA:I = 0x2

.field private static final USE_RESULT:I = 0x1


# instance fields
.field private mAccuracy:F

.field private mEndPos:I

.field private mExtraDatas:Ljava/lang/Object;

.field private mResult:Ljava/lang/Object;

.field private mResultType:I

.field private mSrc:Ljava/lang/String;

.field private mStartPos:I

.field private mUIState:I

.field private mUsingData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/samsung/android/infoextraction/SemExtractedInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/SemExtractedInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIF)V
    .locals 0
    .param p1, "resultType"    # I
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "extraDatas"    # Ljava/lang/Object;
    .param p5, "startPos"    # I
    .param p6, "endPos"    # I
    .param p7, "accuracy"    # F

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    .line 63
    iput-object p2, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    .line 65
    iput-object p4, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    .line 66
    iput p5, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    .line 67
    iput p6, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    .line 68
    iput p7, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIFII)V
    .locals 0
    .param p1, "resultType"    # I
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "extraDatas"    # Ljava/lang/Object;
    .param p5, "startPos"    # I
    .param p6, "endPos"    # I
    .param p7, "accuracy"    # F
    .param p8, "uiState"    # I
    .param p9, "usingData"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    .line 90
    iput-object p2, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    .line 92
    iput-object p4, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    .line 93
    iput p5, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    .line 94
    iput p6, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    .line 95
    iput p7, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    .line 96
    iput p8, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    .line 97
    iput p9, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    return v0
.end method

.method public getAdaptableData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getEndPosition()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    return v0
.end method

.method public getExtraData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    return v0
.end method

.method public isPossibleToShow()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 173
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 174
    return v1

    .line 176
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    .line 208
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    .line 209
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    .line 205
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 191
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 195
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 198
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return-void
.end method
