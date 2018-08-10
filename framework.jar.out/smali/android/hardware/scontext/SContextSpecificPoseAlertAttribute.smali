.class public Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextSpecificPoseAlertAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextSpecificPoseAlertAttribute"


# instance fields
.field private mMaximumAngle:I

.field private mMinimumAngle:I

.field private mMovingThrs:I

.field private mRetentionTime:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const/16 v0, -0x5a

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const/16 v0, 0x5a

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    const/16 v0, -0x5a

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    const/16 v0, 0x5a

    iput v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    iput v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    iput p1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    iput p2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    iput p3, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    iput p4, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "retention_time"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "minimum_angle"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "maximum_angle"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "moving_thrs"

    iget v2, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x1c

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    const/16 v3, 0x5a

    const/16 v1, -0x5a

    const/4 v2, 0x0

    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mRetentionTime:I

    if-gez v0, :cond_0

    const-string/jumbo v0, "SContextSpecificPoseAlertAttribute"

    const-string/jumbo v1, "The retention time is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    if-le v0, v3, :cond_2

    :cond_1
    const-string/jumbo v0, "SContextSpecificPoseAlertAttribute"

    const-string/jumbo v1, "The minimum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-le v0, v3, :cond_4

    :cond_3
    const-string/jumbo v0, "SContextSpecificPoseAlertAttribute"

    const-string/jumbo v1, "The maximum angle is wrong. The angle must be between -90 and 90."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMinimumAngle:I

    iget v1, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMaximumAngle:I

    if-le v0, v1, :cond_5

    const-string/jumbo v0, "SContextSpecificPoseAlertAttribute"

    const-string/jumbo v1, "The minimum angle must be less than the maximum angle."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget v0, p0, Landroid/hardware/scontext/SContextSpecificPoseAlertAttribute;->mMovingThrs:I

    if-gez v0, :cond_6

    const-string/jumbo v0, "SContextSpecificPoseAlertAttribute"

    const-string/jumbo v1, "The moving threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    const/4 v0, 0x1

    return v0
.end method
