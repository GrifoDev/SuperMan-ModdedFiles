.class public Lcom/android/ims/internal/uce/presence/PresCmdId;
.super Ljava/lang/Object;
.source "PresCmdId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresCmdId$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresCmdId;",
            ">;"
        }
    .end annotation
.end field

.field public static final UCE_PRES_CMD_GETCONTACTCAP:I = 0x2

.field public static final UCE_PRES_CMD_GETCONTACTLISTCAP:I = 0x3

.field public static final UCE_PRES_CMD_GET_VERSION:I = 0x0

.field public static final UCE_PRES_CMD_PUBLISHMYCAP:I = 0x1

.field public static final UCE_PRES_CMD_REENABLE_SERVICE:I = 0x5

.field public static final UCE_PRES_CMD_SETNEWFEATURETAG:I = 0x4

.field public static final UCE_PRES_CMD_UNKNOWN:I = 0x6


# instance fields
.field private mCmdId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/presence/PresCmdId$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresCmdId$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresCmdId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdId;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresCmdId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresCmdId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCmdId()I
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    return-void
.end method

.method public setCmdId(I)V
    .locals 0

    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresCmdId;->mCmdId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
