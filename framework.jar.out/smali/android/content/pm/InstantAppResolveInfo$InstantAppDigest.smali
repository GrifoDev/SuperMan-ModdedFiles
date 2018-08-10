.class public final Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
.super Ljava/lang/Object;
.source "InstantAppResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/InstantAppResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstantAppDigest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGEST_MASK:I = -0x1000

.field private static final DIGEST_PREFIX_COUNT:I = 0x5


# instance fields
.field private final mDigestBytes:[[B

.field private final mDigestPrefix:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    return-void

    :cond_1
    new-array v2, v0, [[B

    iput-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->generateDigest(Ljava/lang/String;I)[[B

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    iget-object v2, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v3, v3, v0

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, -0x1000

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static generateDigest(Ljava/lang/String;I)[[B
    .locals 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [[B

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    return-object v6

    :cond_1
    const/16 v6, 0x2e

    :try_start_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/16 v6, 0x2e

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    if-gez v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "could not find digest algorithm"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    add-int/lit8 v6, v5, 0x1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_1
    if-ltz v5, :cond_0

    if-ge v1, p1, :cond_0

    const/16 v6, 0x2e

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[[B
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    return-object v0
.end method

.method public getDigestPrefix()[I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestPrefix:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :cond_1
    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->mDigestBytes:[[B

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
