.class public final enum Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
.super Ljava/lang/Enum;
.source "VideoSharing.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/VideoSharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum FAILED_SHARING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;


# instance fields
.field public reasonCodeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v4, v4}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "ABORTED_BY_USER"

    invoke-direct {v0, v1, v5, v5}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "ABORTED_BY_REMOTE"

    invoke-direct {v0, v1, v6, v6}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "ABORTED_BY_SYSTEM"

    invoke-direct {v0, v1, v7, v7}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "REJECTED_BY_SECONDARY_DEVICE"

    invoke-direct {v0, v1, v8, v8}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "REJECTED_SPAM"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "REJECTED_MAX_SHARING_SESSIONS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "REJECTED_BY_USER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "REJECTED_BY_REMOTE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "REJECTED_BY_TIMEOUT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "REJECTED_BY_SYSTEM"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "FAILED_INITIATION"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const-string v1, "FAILED_SHARING"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_SECONDARY_DEVICE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_SPAM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_MAX_SHARING_SESSIONS:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    new-instance v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->reasonCodeId:I

    return-void
.end method

.method public static valueOf(I)Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    iget v5, v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->reasonCodeId:I

    if-ne v5, p0, :cond_1

    move-object v1, v0

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toInt()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->reasonCodeId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->reasonCodeId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->reasonCodeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
