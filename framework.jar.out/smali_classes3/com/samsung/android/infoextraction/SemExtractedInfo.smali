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

    new-instance v0, Lcom/samsung/android/infoextraction/SemExtractedInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/SemExtractedInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    iput-object p2, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    iput-object p4, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    iput p5, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    iput p6, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    iput p7, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    iput-object p2, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    iput-object p4, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    iput p5, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    iput p6, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    iput p7, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    iput p8, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    iput p9, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    return v0
.end method

.method public getAdaptableData()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getEndPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    return v0
.end method

.method public getExtraData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    return v0
.end method

.method public isPossibleToShow()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
