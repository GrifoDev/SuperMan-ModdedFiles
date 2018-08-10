.class public final Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/EdgeLightingPolicyInfo$1;
    }
.end annotation


# static fields
.field public static final CATEGORY_BLACK:I = 0x2

.field public static final CATEGORY_WHITE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final RANGE_MASK:I = 0xffff

.field public static final RANGE_NOTIFICATION:I = 0x1

.field public static final RANGE_PRIVATE_MASK:I = 0xff00

.field public static final RANGE_PRIVATE_NOTIFICATION_AFTER_WAKEUP:I = 0x400

.field public static final RANGE_PRIVATE_NOT_HUN_BUT_NOTIFICATION:I = 0x100

.field public static final RANGE_PRIVATE_TOAST:I = 0x200

.field public static final RANGE_PUBLIC_ALL:I = 0x7

.field public static final RANGE_PUBLIC_MASK:I = 0xff

.field public static final RANGE_RESERVED_FLAG:I = 0x10000

.field public static final RANGE_WAKE_LOCK:I = 0x4

.field public static final RANGE_WAKE_UP:I = 0x2


# instance fields
.field public final category:I

.field public final packageName:Ljava/lang/String;

.field public final range:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    const v0, 0xffff

    and-int/2addr v0, p3

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EdgeLightingPolicyInfo{packageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", category= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", range= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
