.class public Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextLocationChangeTriggerAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextLocationChangeTriggerAttribute"


# instance fields
.field private mDuration:I

.field private mTriggerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "trigger_type"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x36

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    if-lt v2, v0, :cond_0

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mTriggerType:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    :cond_0
    const-string/jumbo v0, "SemContextLocationChangeTriggerAttribute"

    const-string/jumbo v2, "The display status is wrong."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationChangeTriggerAttribute;->mDuration:I

    if-ltz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
