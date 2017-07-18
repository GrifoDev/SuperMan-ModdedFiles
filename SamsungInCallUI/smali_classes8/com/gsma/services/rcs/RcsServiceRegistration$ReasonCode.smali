.class public final enum Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
.super Ljava/lang/Enum;
.source "RcsServiceRegistration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/RcsServiceRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;",
        ">;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

.field public static final enum BATTERY_LOW:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

.field public static final enum CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNSPECIFIED:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

.field private static mValueToEnum:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    const-string v3, "UNSPECIFIED"

    invoke-direct {v2, v3, v1, v1}, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    const-string v3, "CONNECTION_LOST"

    invoke-direct {v2, v3, v4, v4}, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    new-instance v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    const-string v3, "BATTERY_LOW"

    invoke-direct {v2, v3, v5, v5}, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->BATTERY_LOW:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    sget-object v3, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    aput-object v3, v2, v1

    sget-object v3, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->CONNECTION_LOST:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    aput-object v3, v2, v4

    sget-object v3, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->BATTERY_LOW:Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    aput-object v3, v2, v5

    sput-object v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-static {}, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->values()[Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    sget-object v4, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode$1;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode$1;-><init>()V

    sput-object v1, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput p3, p0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->mCode:I

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

    iput v0, p0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->mCode:I

    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    .locals 4

    sget-object v1, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    .locals 1

    const-class v0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    .locals 1

    sget-object v0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->$VALUES:[Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

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

    iget v0, p0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->mCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
