.class public Landroid/hardware/scontext/SContextStepCountAlertAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextStepCountAlertAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextStepCountAlertAttribute"


# instance fields
.field private mStepCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    iput p1, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "step_count"

    iget v3, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x3

    invoke-super {p0, v2, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    const-string/jumbo v2, "interrupt_gyro"

    iget v3, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x30

    invoke-super {p0, v2, v1}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    if-gez v0, :cond_0

    const-string/jumbo v0, "SContextStepCountAlertAttribute"

    const-string/jumbo v1, "The step count is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getStepCount()I
    .locals 1

    iget v0, p0, Landroid/hardware/scontext/SContextStepCountAlertAttribute;->mStepCount:I

    return v0
.end method
