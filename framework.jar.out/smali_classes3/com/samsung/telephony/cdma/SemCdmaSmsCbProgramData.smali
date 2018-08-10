.class public Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;
.super Ljava/lang/Object;
.source "SemCdmaSmsCbProgramData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPERATION_ADD_CATEGORY:I = 0x1

.field public static final OPERATION_CLEAR_CATEGORIES:I = 0x2

.field public static final OPERATION_DELETE_CATEGORY:I


# instance fields
.field private final mAlertOption:I

.field private final mCategory:I

.field private final mCategoryName:Ljava/lang/String;

.field private final mLanguage:I

.field private final mMaxMessages:I

.field private final mOperation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData$1;

    invoke-direct {v0}, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData$1;-><init>()V

    sput-object v0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mOperation:I

    iput p2, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mCategory:I

    iput p3, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mLanguage:I

    iput p4, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mMaxMessages:I

    iput p5, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mAlertOption:I

    iput-object p6, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mOperation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mCategory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mLanguage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mMaxMessages:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mAlertOption:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlertOption()I
    .locals 1

    iget v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mAlertOption:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mCategory:I

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()I
    .locals 1

    iget v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mLanguage:I

    return v0
.end method

.method public getMaxMessages()I
    .locals 1

    iget v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mMaxMessages:I

    return v0
.end method

.method public getOperation()I
    .locals 1

    iget v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mOperation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CdmaSmsCbProgramData{operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mOperation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mLanguage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", max messages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mMaxMessages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", alert option="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mAlertOption:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mOperation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mLanguage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mMaxMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mAlertOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
