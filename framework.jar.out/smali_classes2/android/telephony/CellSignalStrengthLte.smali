.class public final Landroid/telephony/CellSignalStrengthLte;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthLte.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthLte$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/CellSignalStrengthLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthLte"


# instance fields
.field private mCqi:I

.field private mRsrp:I

.field private mRsrq:I

.field private mRssnr:I

.field private mSignalStrength:I

.field private mTimingAdvance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Landroid/telephony/CellSignalStrengthLte$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthLte$1;-><init>()V

    .line 301
    sput-object v0, Landroid/telephony/CellSignalStrengthLte;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->setDefaultValues()V

    .line 43
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "signalStrength"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqi"    # I
    .param p6, "timingAdvance"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 54
    invoke-virtual/range {p0 .. p6}, Landroid/telephony/CellSignalStrengthLte;->initialize(IIIIII)V

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const v1, 0x7fffffff

    .line 279
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 284
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 286
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthLte;->copyFrom(Landroid/telephony/CellSignalStrengthLte;)V

    .line 64
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string/jumbo v0, "CellSignalStrengthLte"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->copy()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthLte;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthLte;

    .prologue
    .line 109
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 110
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 111
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 112
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 113
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 114
    iget v0, p1, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 108
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 229
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v2, "s":Landroid/telephony/CellSignalStrengthLte;
    if-nez p1, :cond_0

    .line 235
    return v3

    .line 230
    .end local v2    # "s":Landroid/telephony/CellSignalStrengthLte;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    .line 238
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/CellSignalStrengthLte;
    :cond_0
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    if-ne v4, v5, :cond_1

    .line 239
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v4, v5, :cond_1

    .line 240
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-ne v4, v5, :cond_1

    .line 241
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v4, v5, :cond_1

    .line 242
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    if-ne v4, v5, :cond_1

    .line 243
    iget v4, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    iget v5, v2, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    .line 238
    :cond_1
    return v3
.end method

.method public getAsuLevel()I
    .locals 3

    .prologue
    .line 198
    const/16 v0, 0x63

    .line 199
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v1

    .line 200
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0x63

    .line 205
    :goto_0
    return v0

    .line 201
    :cond_0
    const/16 v2, -0x8c

    if-gt v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 202
    :cond_1
    const/16 v2, -0x2b

    if-lt v1, v2, :cond_2

    const/16 v0, 0x61

    goto :goto_0

    .line 203
    :cond_2
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getDbm()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    return v0
.end method

.method public getLevel()I
    .locals 6

    .prologue
    const v5, 0x7fffffff

    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, "levelRsrp":I
    const/4 v2, 0x0

    .line 144
    .local v2, "levelRssnr":I
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v3, v5, :cond_0

    const/4 v1, 0x0

    .line 151
    :goto_0
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v3, v5, :cond_4

    const/4 v2, 0x0

    .line 158
    :goto_1
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-ne v3, v5, :cond_8

    .line 159
    move v0, v2

    .line 167
    .local v0, "level":I
    :goto_2
    return v0

    .line 145
    .end local v0    # "level":I
    :cond_0
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v4, -0x5f

    if-lt v3, v4, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    .line 146
    :cond_1
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v4, -0x69

    if-lt v3, v4, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 147
    :cond_2
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    const/16 v4, -0x73

    if-lt v3, v4, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    .line 148
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 152
    :cond_4
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v4, 0x2d

    if-lt v3, v4, :cond_5

    const/4 v2, 0x4

    goto :goto_1

    .line 153
    :cond_5
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_6

    const/4 v2, 0x3

    goto :goto_1

    .line 154
    :cond_6
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    const/16 v4, -0x1e

    if-lt v3, v4, :cond_7

    const/4 v2, 0x2

    goto :goto_1

    .line 155
    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    .line 160
    :cond_8
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    if-ne v3, v5, :cond_9

    .line 161
    move v0, v1

    .restart local v0    # "level":I
    goto :goto_2

    .line 163
    .end local v0    # "level":I
    :cond_9
    if-ge v2, v1, :cond_a

    move v0, v2

    .restart local v0    # "level":I
    goto :goto_2

    .end local v0    # "level":I
    :cond_a
    move v0, v1

    .restart local v0    # "level":I
    goto :goto_2
.end method

.method public getRsrq()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    return v0
.end method

.method public getRssnr()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    return v0
.end method

.method public getTimingAdvance()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 220
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    mul-int/lit8 v1, v1, 0x1f

    .line 219
    add-int/2addr v0, v1

    .line 220
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    mul-int/lit8 v1, v1, 0x1f

    .line 219
    add-int/2addr v0, v1

    .line 220
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    mul-int/lit8 v1, v1, 0x1f

    .line 219
    add-int/2addr v0, v1

    .line 221
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    mul-int/lit8 v1, v1, 0x1f

    .line 219
    add-int/2addr v0, v1

    return v0
.end method

.method public initialize(IIIIII)V
    .locals 0
    .param p1, "lteSignalStrength"    # I
    .param p2, "rsrp"    # I
    .param p3, "rsrq"    # I
    .param p4, "rssnr"    # I
    .param p5, "cqi"    # I
    .param p6, "timingAdvance"    # I

    .prologue
    .line 81
    iput p1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 82
    iput p2, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 83
    iput p3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 84
    iput p4, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 85
    iput p5, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 86
    iput p6, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 80
    return-void
.end method

.method public initialize(Landroid/telephony/SignalStrength;I)V
    .locals 1
    .param p1, "ss"    # Landroid/telephony/SignalStrength;
    .param p2, "timingAdvance"    # I

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 98
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 99
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 100
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 101
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 102
    iput p2, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 96
    return-void
.end method

.method public setDefaultValues()V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 128
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 129
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 130
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 131
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 132
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 133
    iput v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CellSignalStrengthLte: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    const-string/jumbo v1, " rsrp="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    const-string/jumbo v1, " rsrq="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    const-string/jumbo v1, " rssnr="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    const-string/jumbo v1, " cqi="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    const-string/jumbo v1, " ta="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    iget v1, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const v4, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 264
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrp:I

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    mul-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    iget v3, p0, Landroid/telephony/CellSignalStrengthLte;->mRsrq:I

    if-eq v3, v4, :cond_1

    :goto_1
    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget v0, p0, Landroid/telephony/CellSignalStrengthLte;->mTimingAdvance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    return-void

    :cond_0
    move v0, v2

    .line 268
    goto :goto_0

    :cond_1
    move v1, v2

    .line 269
    goto :goto_1
.end method
