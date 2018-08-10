.class public final Landroid/content/pm/InstantAppResolveInfo;
.super Ljava/lang/Object;
.source "InstantAppResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/InstantAppResolveInfo$1;,
        Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHA_ALGORITHM:Ljava/lang/String; = "SHA-256"


# instance fields
.field private final mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstantAppResolveInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstantAppResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iput-object p1, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    if-eqz p3, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iput-object p2, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    iput p4, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:I

    return-void

    :cond_3
    iput-object v1, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-direct {v0, p1}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[B
    .locals 2

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDigestPrefix()I
    .locals 2

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getIntentFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mDigest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Landroid/content/pm/InstantAppResolveInfo;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
