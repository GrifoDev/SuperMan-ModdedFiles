.class public final Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
.super Ljava/lang/Object;
.source "Tlv.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/DeviceRootKeyService/Tlv$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/service/DeviceRootKeyService/Tlv;",
            ">;"
        }
    .end annotation
.end field

.field public static final TLV_ATTRS:I = 0x11

.field public static final TLV_TAG_AUTH_DATA:I = 0x18

.field public static final TLV_TAG_AUTH_TAG:I = 0x17

.field public static final TLV_TAG_CERT:I = 0x1b

.field public static final TLV_TAG_CERT_SD:I = 0xa

.field public static final TLV_TAG_CERT_SM:I = 0x9

.field public static final TLV_TAG_CSR:I = 0x15

.field public static final TLV_TAG_DN_QUALIFIER:I = 0x6

.field public static final TLV_TAG_ENCRYPTED_DATA_BLOB:I = 0x1a

.field public static final TLV_TAG_EXPONENT:I = 0x1

.field public static final TLV_TAG_EXTEND_PCR_DATA:I = 0xd

.field public static final TLV_TAG_EXT_KEYUSAGE:I = 0x7

.field public static final TLV_TAG_HASH_ALGO:I = 0x3

.field public static final TLV_TAG_HUID:I = 0x13

.field public static final TLV_TAG_IMEI:I = 0x1c

.field public static final TLV_TAG_ISSUER:I = 0x2

.field public static final TLV_TAG_IV:I = 0x16

.field public static final TLV_TAG_KEYUSAGE:I = 0x5

.field private static final TLV_TAG_MAX:I = 0x1e

.field public static final TLV_TAG_MODEL_NAME:I = 0x12

.field public static final TLV_TAG_PREGEN_KEYPAIR:I = 0x14

.field public static final TLV_TAG_SIGNATURE:I = 0x19

.field public static final TLV_TAG_SIGN_DATA_BLOB:I = 0x8

.field public static final TLV_TAG_SUBJECT:I = 0x4

.field public static final TLV_TAG_SUBJECT_ALTER_NAME:I = 0x1d

.field public static final TLV_TAG_TID:I = 0xe

.field public static final TLV_TAG_TIMESTAMP:I = 0xb

.field public static final TLV_TAG_TLV_KEY_INFO:I = 0x10

.field public static final TLV_TAG_WRAPPED_KEY:I = 0xf

.field public static final TLV_TAG_WRAPPED_PCR:I = 0xc


# instance fields
.field private mTlvList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv$1;

    invoke-direct {v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv$1;-><init>()V

    sput-object v0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTlvValue(I)[B
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getValidKeyList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public setTlv(I[B)Z
    .locals 3

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    return-void
.end method
