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

    .prologue
    .line 44
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 58
    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    .line 59
    const/16 v0, 0x7f

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mIsIncluding:Z

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "lowTemperature"    # I
    .param p2, "highTemperature"    # I
    .param p3, "isIncluding"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 58
    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    .line 59
    const/16 v0, 0x7f

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mIsIncluding:Z

    .line 92
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    .line 93
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    .line 94
    iput-boolean p3, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mIsIncluding:Z

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->setAttribute()V

    .line 91
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 58
    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    .line 59
    const/16 v0, 0x7f

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mIsIncluding:Z

    .line 72
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "low_temperature"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string/jumbo v1, "high_temperature"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string/jumbo v1, "including"

    iget-boolean v2, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mIsIncluding:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    const/16 v1, 0x17

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 121
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    .prologue
    const/16 v3, 0x7f

    const/16 v1, -0x80

    const/4 v2, 0x0

    .line 104
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    if-lt v0, v1, :cond_0

    .line 105
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    if-le v0, v3, :cond_1

    .line 106
    :cond_0
    const-string/jumbo v0, "SemContextTemperatureAlertAttribute"

    const-string/jumbo v1, "The low temperature is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return v2

    .line 109
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    if-lt v0, v1, :cond_2

    .line 110
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    if-le v0, v3, :cond_3

    .line 111
    :cond_2
    const-string/jumbo v0, "SemContextTemperatureAlertAttribute"

    const-string/jumbo v1, "The high temperature is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v2

    .line 114
    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mLowTemperature:I

    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextTemperatureAlertAttribute;->mHighTemperature:I

    if-le v0, v1, :cond_4

    .line 115
    const-string/jumbo v0, "SemContextTemperatureAlertAttribute"

    const-string/jumbo v1, "The low temperature must be less than the high temperature."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v2

    .line 118
    :cond_4
    const/4 v0, 0x1

    return v0
.end method
