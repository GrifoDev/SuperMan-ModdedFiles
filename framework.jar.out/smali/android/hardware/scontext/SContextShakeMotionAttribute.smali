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

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    .line 32
    const/16 v0, 0x320

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    .line 38
    invoke-direct {p0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;->setAttribute()V

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "strength"    # I
    .param p2, "duration"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    .line 32
    const/16 v0, 0x320

    iput v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    .line 56
    iput p1, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    .line 57
    iput p2, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    .line 58
    invoke-direct {p0}, Landroid/hardware/scontext/SContextShakeMotionAttribute;->setAttribute()V

    .line 55
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "strength"

    iget v2, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string/jumbo v1, "duration"

    iget v2, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const/16 v1, 0xc

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 75
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    iget v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mStrength:I

    if-gez v0, :cond_0

    .line 65
    const-string/jumbo v0, "SContextShakeMotionAttribute"

    const-string/jumbo v1, "The strength is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v2

    .line 68
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextShakeMotionAttribute;->mDuration:I

    if-gez v0, :cond_1

    .line 69
    const-string/jumbo v0, "SContextShakeMotionAttribute"

    const-string/jumbo v1, "The duration is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return v2

    .line 72
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
