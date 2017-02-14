.class public Landroid/net/wifi/nan/SubscribeSettings;
.super Ljava/lang/Object;
.source "SubscribeSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/SubscribeSettings$1;,
        Landroid/net/wifi/nan/SubscribeSettings$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/nan/SubscribeSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBSCRIBE_TYPE_ACTIVE:I = 0x1

.field public static final SUBSCRIBE_TYPE_PASSIVE:I


# instance fields
.field public final mSubscribeCount:I

.field public final mSubscribeType:I

.field public final mTtlSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/nan/SubscribeSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/nan/SubscribeSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nan/SubscribeSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    iput p2, p0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeCount:I

    iput p3, p0, Landroid/net/wifi/nan/SubscribeSettings;->mTtlSec:I

    return-void
.end method

.method synthetic constructor <init>(IIILandroid/net/wifi/nan/SubscribeSettings;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/nan/SubscribeSettings;-><init>(III)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Landroid/net/wifi/nan/SubscribeSettings;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    nop

    nop

    iget v3, p0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    iget v4, v0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeCount:I

    iget v4, v0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeCount:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/net/wifi/nan/SubscribeSettings;->mTtlSec:I

    iget v4, v0, Landroid/net/wifi/nan/SubscribeSettings;->mTtlSec:I

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget v1, p0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeCount:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/SubscribeSettings;->mTtlSec:I

    add-int v0, v1, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SubscribeSettings [mSubscribeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSubscribeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTtlSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/nan/SubscribeSettings;->mTtlSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/nan/SubscribeSettings;->mSubscribeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/nan/SubscribeSettings;->mTtlSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
