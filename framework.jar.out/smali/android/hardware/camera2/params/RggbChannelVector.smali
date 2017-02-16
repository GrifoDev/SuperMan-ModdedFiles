.class public final Landroid/hardware/camera2/params/RggbChannelVector;
.super Ljava/lang/Object;
.source "RggbChannelVector.java"


# static fields
.field public static final BLUE:I = 0x3

.field public static final COUNT:I = 0x4

.field public static final GREEN_EVEN:I = 0x1

.field public static final GREEN_ODD:I = 0x2

.field public static final RED:I


# instance fields
.field private final mBlue:F

.field private final mGreenEven:F

.field private final mGreenOdd:F

.field private final mRed:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "greenEven"    # F
    .param p3, "greenOdd"    # F
    .param p4, "blue"    # F

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string/jumbo v0, "red"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    .line 61
    const-string/jumbo v0, "greenEven"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    .line 62
    const-string/jumbo v0, "greenOdd"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    .line 63
    const-string/jumbo v0, "blue"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentFinite(FLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    .line 59
    return-void
.end method

.method private toShortString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 215
    const-string/jumbo v0, "{R:%f, G_even:%f, G_odd:%f, B:%f}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 216
    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 215
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyTo([FI)V
    .locals 2
    .param p1, "destination"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 148
    const-string/jumbo v0, "destination must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    array-length v0, p1

    sub-int/2addr v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "destination too small to fit elements"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    add-int/lit8 v0, p2, 0x0

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    aput v1, p1, v0

    .line 154
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    aput v1, p1, v0

    .line 155
    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    aput v1, p1, v0

    .line 156
    add-int/lit8 v0, p2, 0x3

    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    aput v1, p1, v0

    .line 147
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    if-nez p1, :cond_0

    .line 169
    return v2

    .line 170
    :cond_0
    if-ne p0, p1, :cond_1

    .line 171
    return v1

    .line 172
    :cond_1
    instance-of v3, p1, Landroid/hardware/camera2/params/RggbChannelVector;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 173
    check-cast v0, Landroid/hardware/camera2/params/RggbChannelVector;

    .line 174
    .local v0, "other":Landroid/hardware/camera2/params/RggbChannelVector;
    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 175
    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 176
    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 177
    iget v3, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    iget v4, v0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 174
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 177
    goto :goto_0

    :cond_3
    move v1, v2

    .line 174
    goto :goto_0

    .line 179
    .end local v0    # "other":Landroid/hardware/camera2/params/RggbChannelVector;
    :cond_4
    return v2
.end method

.method public getBlue()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return v0
.end method

.method public getComponent(I)F
    .locals 3
    .param p1, "colorChannel"    # I

    .prologue
    .line 114
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Color channel out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 120
    :pswitch_0
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    return v0

    .line 122
    :pswitch_1
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    return v0

    .line 124
    :pswitch_2
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    return v0

    .line 126
    :pswitch_3
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    return v0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getGreenEven()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    return v0
.end method

.method public getGreenOdd()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    return v0
.end method

.method public final getRed()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mRed:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 188
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenEven:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 187
    xor-int/2addr v0, v1

    .line 189
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mGreenOdd:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 187
    xor-int/2addr v0, v1

    .line 190
    iget v1, p0, Landroid/hardware/camera2/params/RggbChannelVector;->mBlue:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 187
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    const-string/jumbo v0, "RggbChannelVector%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/camera2/params/RggbChannelVector;->toShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
