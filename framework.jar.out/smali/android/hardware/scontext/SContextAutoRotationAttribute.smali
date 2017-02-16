.class public Landroid/hardware/scontext/SContextAutoRotationAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextAutoRotationAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextAutoRotationAttribute"


# instance fields
.field private mDeviceType:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 37
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;->setAttribute()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "deviceType"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 56
    iput p1, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    .line 57
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoRotationAttribute;->setAttribute()V

    .line 55
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "device_type"

    iget v2, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const/4 v1, 0x6

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 72
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 65
    iget v0, p0, Landroid/hardware/scontext/SContextAutoRotationAttribute;->mDeviceType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 66
    const-string/jumbo v0, "SContextAutoRotationAttribute"

    const-string/jumbo v1, "The device type is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v2

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
