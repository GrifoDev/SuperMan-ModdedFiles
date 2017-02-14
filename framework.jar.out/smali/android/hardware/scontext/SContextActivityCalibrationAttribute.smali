.class public Landroid/hardware/scontext/SContextActivityCalibrationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextActivityCalibrationAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextActivityCalibrationAttribute"


# instance fields
.field private mData:I

.field private mStatus:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    iput v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    iput p1, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    iput p2, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x2

    new-array v0, v2, [B

    iget v2, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    iget v2, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    const-string/jumbo v2, "activity_calibration"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v2, "SContextActivityCalibrationAttribute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity Status Data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x35

    invoke-super {p0, v2, v1}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mStatus:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "SContextActivityCalibrationAttribute"

    const-string/jumbo v1, "Moving Status is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/hardware/scontext/SContextActivityCalibrationAttribute;->mData:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    :cond_2
    const-string/jumbo v0, "SContextActivityCalibrationAttribute"

    const-string/jumbo v1, "Data of calibration is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
