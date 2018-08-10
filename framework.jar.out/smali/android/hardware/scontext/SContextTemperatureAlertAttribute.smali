.class public Landroid/hardware/scontext/SContextTemperatureAlertAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextTemperatureAlertAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextTemperatureAlertAttribute"


# instance fields
.field private mHighTemperature:I

.field private mIsIncluding:Z

.field private mLowTemperature:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0x46

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    const/16 v0, 0x7f

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-direct {p0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0x46

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    const/16 v0, 0x7f

    iput v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    iput p1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    iput p2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    iput-boolean p3, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-direct {p0}, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "low_temperature"

    iget v2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "high_temperature"

    iget v2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "including"

    iget-boolean v2, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x17

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    const/16 v3, 0x7f

    const/16 v1, -0x80

    const/4 v2, 0x0

    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    if-le v0, v3, :cond_1

    :cond_0
    const-string/jumbo v0, "SContextTemperatureAlertAttribute"

    const-string/jumbo v1, "The low temperature is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    if-le v0, v3, :cond_3

    :cond_2
    const-string/jumbo v0, "SContextTemperatureAlertAttribute"

    const-string/jumbo v1, "The high temperature is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget v0, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mLowTemperature:I

    iget v1, p0, Landroid/hardware/scontext/SContextTemperatureAlertAttribute;->mHighTemperature:I

    if-le v0, v1, :cond_4

    const-string/jumbo v0, "SContextTemperatureAlertAttribute"

    const-string/jumbo v1, "The low temperature must be less than the high temperature."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method
