.class public Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextDualDisplayAngleAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDualDisplayAngleAttribute"


# instance fields
.field private mOffAngle:I

.field private mOnAngle:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0xd2

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    const/16 v0, 0xf0

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0xd2

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    const/16 v0, 0xf0

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    iput p1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    iput p2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "onAngle"

    iget v2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "offAngle"

    iget v2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "SContextDualDisplayAngleAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAngle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "onAngle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SContextDualDisplayAngleAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offAngle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "offAngle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2d

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    const/16 v1, 0x168

    const/4 v2, 0x0

    iget v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    if-le v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "SContextDualDisplayAngleAttribute"

    const-string/jumbo v1, "Value of onAngle is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-le v0, v1, :cond_3

    :cond_2
    const-string/jumbo v0, "SContextDualDisplayAngleAttribute"

    const-string/jumbo v1, "Value of offAngle is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-le v0, v1, :cond_4

    const-string/jumbo v0, "SContextDualDisplayAngleAttribute"

    const-string/jumbo v1, "onAngle is above offAngle!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method
