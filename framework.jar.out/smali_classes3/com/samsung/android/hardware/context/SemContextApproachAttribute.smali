.class public Lcom/samsung/android/hardware/context/SemContextApproachAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextApproachAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextApproachAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextApproachAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mUserID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    return-void
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "UserID"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
