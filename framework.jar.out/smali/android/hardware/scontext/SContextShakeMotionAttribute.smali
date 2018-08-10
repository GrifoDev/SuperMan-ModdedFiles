.class public Landroid/hardware/scontext/SContextShakeMotionAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextShakeMotionAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextShakeMotionAttribute"


# instance fields
.field private mDuration:I

.field private mStrength:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    const/16 v0, 0x320

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    const/16 v0, 0x320

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    iput p1, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    iput p2, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "strength"

    iget v2, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xc

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    if-gez v0, :cond_0

    const-string/jumbo v0, "SContextShakeMotionAttribute"

    const-string/jumbo v1, "The strength is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    if-gez v0, :cond_1

    const-string/jumbo v0, "SContextShakeMotionAttribute"

    const-string/jumbo v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
