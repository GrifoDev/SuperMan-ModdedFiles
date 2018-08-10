.class public final Landroid/content/pm/EphemeralResolveInfo;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralResolveInfo$1;,
        Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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
.field private final mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

.field private final mLegacyFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$1;

    invoke-direct {v0}, Landroid/content/pm/EphemeralResolveInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/EphemeralResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/pm/EphemeralResolveInfo;-><init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->getInstantAppDigest()Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v1

    invoke-static {p3}, Landroid/content/pm/EphemeralResolveInfo;->createInstantAppIntentFilterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2, p4}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;Ljava/util/List;I)V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/content/pm/EphemeralIntentFilter;

    invoke-direct {v1, p2, p3}, Landroid/content/pm/EphemeralIntentFilter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/content/pm/EphemeralResolveInfo;->createInstantAppIntentFilterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Landroid/content/pm/InstantAppResolveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    iget-object v1, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/InstantAppResolveInfo;

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    invoke-direct {v0, p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/content/pm/EphemeralResolveInfo;-><init>(Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static createInstantAppIntentFilterList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppIntentFilter;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/EphemeralIntentFilter;

    invoke-virtual {v3}, Landroid/content/pm/EphemeralIntentFilter;->getInstantAppIntentFilter()Landroid/content/pm/InstantAppIntentFilter;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[B
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getDigestPrefix()I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getDigestPrefix()I

    move-result v0

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    return-object v0
.end method

.method public getInstantAppResolveInfo()Landroid/content/pm/InstantAppResolveInfo;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    return-object v0
.end method

.method public getIntentFilters()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralIntentFilter;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v5, Landroid/content/pm/EphemeralIntentFilter;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/InstantAppIntentFilter;

    invoke-direct {v5, v4}, Landroid/content/pm/EphemeralIntentFilter;-><init>(Landroid/content/pm/InstantAppIntentFilter;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mInstantAppResolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mLegacyFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
