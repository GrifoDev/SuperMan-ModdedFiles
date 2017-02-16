.class public final Landroid/content/pm/EphemeralResolveInfo;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralResolveInfo$1;,
        Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHA_ALGORITHM:Ljava/lang/String; = "SHA-256"


# instance fields
.field private final mDigestBytes:[B

.field private final mDigestPrefix:I

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$1;

    invoke-direct {v0}, Landroid/content/pm/EphemeralResolveInfo$1;-><init>()V

    .line 114
    sput-object v0, Landroid/content/pm/EphemeralResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    .line 51
    if-eqz p1, :cond_0

    .line 52
    if-nez p2, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_1
    if-eqz p3, :cond_0

    .line 54
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p1}, Landroid/content/pm/EphemeralResolveInfo;->generateDigest(Landroid/net/Uri;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    .line 60
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    .line 61
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    .line 60
    or-int/2addr v0, v1

    .line 62
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    .line 60
    or-int/2addr v0, v1

    .line 63
    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x0

    .line 60
    or-int/2addr v0, v1

    .line 59
    iput v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestPrefix:I

    .line 64
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    iput-object p2, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestPrefix:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 68
    return-void
.end method

.method private static generateDigest(Landroid/net/Uri;)[B
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 93
    :try_start_0
    const-string/jumbo v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 94
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 95
    .local v2, "hostBytes":[B
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 96
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hostBytes":[B
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "could not find digest algorithm"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[B
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    return-object v0
.end method

.method public getDigestPrefix()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestPrefix:I

    return v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 109
    iget v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigestPrefix:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 107
    return-void
.end method
