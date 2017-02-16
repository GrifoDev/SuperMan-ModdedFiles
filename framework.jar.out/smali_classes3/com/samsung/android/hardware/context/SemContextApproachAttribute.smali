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

.field private static final TAG:Ljava/lang/String; = "SemContextApproachAttribute"


# instance fields
.field private mUserID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->setAttribute()V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "userID"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    .line 81
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->setAttribute()V

    .line 80
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    .line 65
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "UserID"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;->mUserID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const/4 v1, 0x1

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 94
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method
