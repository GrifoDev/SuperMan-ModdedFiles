.class public Lcom/samsung/android/hardware/context/SemContextCarryingDetection;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextCarryingDetection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextCarryingDetection$1;
    }
.end annotation


# static fields
.field public static final AOD_OVERTURN_DURATION:I = 0x4

.field public static final AOD_PROXIMITY_CHECK_DURATION:I = 0x6

.field public static final AOD_PROXIMITY_USE_DURATION:I = 0x5

.field public static final AOD_SCENARIO_CHECK_OVERTURN:I = 0x2

.field public static final AOD_SCENARIO_CHECK_PROXIMITY_PERIODICALLY:I = 0x4

.field public static final AOD_SCENARIO_CHECK_TIMEOUT:I = 0x1

.field public static final AOD_SCENARIO_CHECK_USER_CYCLE:I = 0x40

.field public static final AOD_SCENARIO_CHECK_USER_RUNNING:I = 0x10

.field public static final AOD_SCENARIO_CHECK_USER_VEHICLE:I = 0x20

.field public static final AOD_SCENARIO_CHECK_USER_WALKING:I = 0x8

.field public static final AOD_STATUS_OFF:I = 0x2

.field public static final AOD_STATUS_ON:I = 0x1

.field public static final AOD_TIMEOUT_DURATION:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextCarryingDetection;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_OFF_CARRYING_IN:I = 0x9

.field public static final REASON_OFF_NO_MOVE_SCREEN_DOWN_TIME_OUT:I = 0x6

.field public static final REASON_OFF_NO_MOVE_SCREEN_UP_TIME_OUT:I = 0x7

.field public static final REASON_OFF_RUNNING_START:I = 0xa

.field public static final REASON_OFF_SCREEN_DOWN_START_STATE:I = 0x8

.field public static final REASON_ON_CARRYING_OUT:I = 0x4

.field public static final REASON_ON_DISPLAY_INIT:I = 0x1

.field public static final REASON_ON_MOVEMENT_WITH_SCREEN_DOWN:I = 0x2

.field public static final REASON_ON_MOVEMENT_WITH_SCREEN_UP:I = 0x3

.field public static final REASON_ON_RUNNING_STOPPED:I = 0x5


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextCarryingDetection$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 90
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;->mContext:Landroid/os/Bundle;

    .line 255
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 263
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;->readFromParcel(Landroid/os/Parcel;)V

    .line 262
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;->mContext:Landroid/os/Bundle;

    .line 327
    return-void
.end method


# virtual methods
.method public getCarryingReason()I
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "AODReason"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCarryingStatus()I
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "AODStatus"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;->mContext:Landroid/os/Bundle;

    .line 303
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextCarryingDetection;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 317
    return-void
.end method
