.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthCdma$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual/range {p0 .. p5}, Landroid/telephony/CellSignalStrengthCdma;->initialize(IIIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const v1, 0x7fffffff

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CellSignalStrengthCdma"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthCdma;
    .locals 1

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .locals 1

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v3

    :catch_0
    move-exception v1

    return v3

    :cond_0
    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getAsuLevel()I
    .locals 9

    const v8, 0x7fffffff

    const/16 v7, -0x5a

    const/16 v6, -0x64

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v2

    if-ne v1, v8, :cond_0

    const/16 v0, 0x63

    :goto_0
    if-ne v2, v8, :cond_6

    const/16 v3, 0x63

    :goto_1
    if-ge v0, v3, :cond_c

    move v4, v0

    :goto_2
    return v4

    :cond_0
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    const/16 v5, -0x52

    if-lt v1, v5, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    if-lt v1, v7, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    if-lt v1, v6, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v0, 0x63

    goto :goto_0

    :cond_6
    if-lt v2, v7, :cond_7

    const/16 v3, 0x10

    goto :goto_1

    :cond_7
    if-lt v2, v6, :cond_8

    const/16 v3, 0x8

    goto :goto_1

    :cond_8
    const/16 v5, -0x73

    if-lt v2, v5, :cond_9

    const/4 v3, 0x4

    goto :goto_1

    :cond_9
    const/16 v5, -0x82

    if-lt v2, v5, :cond_a

    const/4 v3, 0x2

    goto :goto_1

    :cond_a
    const/16 v5, -0x96

    if-lt v2, v5, :cond_b

    const/4 v3, 0x1

    goto :goto_1

    :cond_b
    const/16 v3, 0x63

    goto :goto_1

    :cond_c
    move v4, v3

    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    const v6, 0x7fffffff

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    if-ne v0, v6, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ne v1, v6, :cond_5

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    :goto_2
    return v2

    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    const/16 v5, -0x64

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_6

    const/4 v4, 0x4

    goto :goto_1

    :cond_6
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_7

    const/4 v4, 0x3

    goto :goto_1

    :cond_7
    const/16 v5, -0x82

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    goto :goto_1

    :cond_8
    const/16 v5, -0x96

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    :cond_a
    move v2, v4

    goto :goto_2
.end method

.method public getDbm()I
    .locals 2

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v1

    if-ge v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getEvdoDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    const v6, 0x7fffffff

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    if-ne v0, v6, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ne v1, v6, :cond_5

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    :goto_2
    return v2

    :cond_0
    const/16 v5, -0x41

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x7

    if-lt v1, v5, :cond_6

    const/4 v4, 0x4

    goto :goto_1

    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x3

    goto :goto_1

    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    goto :goto_1

    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    :cond_a
    move v2, v4

    goto :goto_2
.end method

.method public getEvdoSnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return v0
.end method

.method public getLevel()I
    .locals 3

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v2

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    return v1
.end method

.method public initialize(IIIII)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput p2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput p3, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput p4, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput p5, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public setCdmaDbm(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cdmaEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " evdoDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " evdoEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " evdoSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const v4, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    mul-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_1
    mul-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-eq v0, v4, :cond_2

    move v0, v1

    :goto_2
    mul-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-eq v3, v4, :cond_3

    :goto_3
    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method
