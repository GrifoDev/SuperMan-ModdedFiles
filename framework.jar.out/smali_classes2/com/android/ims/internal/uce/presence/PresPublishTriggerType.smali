.class public Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
.super Ljava/lang/Object;
.source "PresPublishTriggerType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;",
            ">;"
        }
    .end annotation
.end field

.field public static final UCE_PRES_PUBLISH_TRIGGER_ETAG_EXPIRED:I = 0x0

.field public static final UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_2G:I = 0x6

.field public static final UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_3G:I = 0x5

.field public static final UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_EHRPD:I = 0x3

.field public static final UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_HSPAPLUS:I = 0x4

.field public static final UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_IWLAN:I = 0x8

.field public static final UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_LTE_VOPS_DISABLED:I = 0x1

.field public static final UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_LTE_VOPS_ENABLED:I = 0x2

.field public static final UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_WLAN:I = 0x7

.field public static final UCE_PRES_PUBLISH_TRIGGER_UNKNOWN:I = 0x9


# instance fields
.field private mPublishTriggerType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPublishTrigeerType()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    return-void
.end method

.method public setPublishTrigeerType(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;->mPublishTriggerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
