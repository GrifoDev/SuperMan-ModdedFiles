.class public Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextTemperatureAlertAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextTemperatureAlertAttribute"


# instance fields
.field private mHighTemperature:I

.field private mIsIncluding:Z

.field private mLowTemperature:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    const/16 v0, 0x7f

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    const/16 v0, 0x7f

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mIsIncluding:Z

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    iput-boolean p3, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    const/16 v0, 0x7f

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mIsIncluding:Z

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "low_temperature"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "high_temperature"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "including"

    iget-boolean v2, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x17

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    const/16 v3, 0x7f

    const/16 v1, -0x80

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    if-le v0, v3, :cond_1

    :cond_0
    const-string/jumbo v0, "SemContextTemperatureAlertAttribute"

    const-string/jumbo v1, "The low temperature is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    if-le v0, v3, :cond_3

    :cond_2
    const-string/jumbo v0, "SemContextTemperatureAlertAttribute"

    const-string/jumbo v1, "The high temperature is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    if-le v0, v1, :cond_4

    const-string/jumbo v0, "SemContextTemperatureAlertAttribute"

    const-string/jumbo v1, "The low temperature must be less than the high temperature."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method
