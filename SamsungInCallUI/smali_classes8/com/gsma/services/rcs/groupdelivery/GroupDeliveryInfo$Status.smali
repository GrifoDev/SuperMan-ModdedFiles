.class public final enum Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
.super Ljava/lang/Enum;
.source "GroupDeliveryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum DISPLAYED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum FAILED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field public static final enum UNSUPPORTED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v3, "UNSUPPORTED"

    invoke-direct {v2, v3, v1, v1}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->UNSUPPORTED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v3, "NOT_DELIVERED"

    invoke-direct {v2, v3, v4, v4}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v3, "DELIVERED"

    invoke-direct {v2, v3, v5, v5}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v3, "DISPLAYED"

    invoke-direct {v2, v3, v6, v6}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DISPLAYED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const-string v3, "FAILED"

    invoke-direct {v2, v3, v7, v7}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->FAILED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    sget-object v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->UNSUPPORTED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    aput-object v3, v2, v1

    sget-object v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->NOT_DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    aput-object v3, v2, v4

    sget-object v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DELIVERED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    aput-object v3, v2, v5

    sget-object v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->DISPLAYED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    aput-object v3, v2, v6

    sget-object v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->FAILED:Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    aput-object v3, v2, v7

    sput-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->$VALUES:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status$1;

    invoke-direct {v1}, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status$1;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput p3, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->status:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->status:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .locals 4

    sget-object v1, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->$VALUES:[Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toInt()I
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->status:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/groupdelivery/GroupDeliveryInfo$Status;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
