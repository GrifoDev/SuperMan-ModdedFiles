.class public Landroid/net/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ProxyInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCAL_EXCL_LIST:Ljava/lang/String; = ""

.field public static final LOCAL_HOST:Ljava/lang/String; = "localhost"

.field public static final LOCAL_PORT:I = -0x1


# instance fields
.field private mEnterpriseProxy:I

.field private mExclusionList:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPacFileUrl:Landroid/net/Uri;

.field private mParsedExclusionList:[Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/ProxyInfo$1;

    invoke-direct {v0}, Landroid/net/ProxyInfo$1;-><init>()V

    sput-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/ProxyInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->semGetUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->semGetPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getEnterpriseProxy()I

    move-result v0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-direct {p0, p3}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    iput-object p3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    invoke-direct {p0, p5}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    iput-object p3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    iput-object p6, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    iput-object p3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;
    .locals 2

    new-instance v0, Landroid/net/ProxyInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/ProxyInfo;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Landroid/net/ProxyInfo;

    const-string/jumbo v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;
    .locals 1

    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, p0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method private setExclusionList(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    goto :goto_0
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

    instance-of v3, p1, Landroid/net/ProxyInfo;

    if-nez v3, :cond_0

    return v2

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/ProxyInfo;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    iget v4, v0, Landroid/net/ProxyInfo;->mPort:I

    if-ne v3, v4, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, v0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    iget v4, v0, Landroid/net/ProxyInfo;->mPort:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget-object v3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->semGetUsername()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->semGetUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, v0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-nez v3, :cond_b

    iget-object v3, v0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-eqz v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->semGetPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->semGetPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, v0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    if-nez v3, :cond_e

    iget-object v3, v0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_e

    return v2

    :cond_e
    iget v3, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    iget v4, v0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    return v1
.end method

.method public getEnterpriseProxy()I
    .locals 1

    iget v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    return v0
.end method

.method public getExclusionList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    return-object v0
.end method

.method public getExclusionListAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxVpnProfile()I
    .locals 1

    iget v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    return v0
.end method

.method public getPacFileUrl()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iget v4, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public isValid()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_1
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    :goto_2
    invoke-static {v0, v1, v2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    :goto_3
    return v0

    :cond_1
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3
.end method

.method public makeProxy()Ljava/net/Proxy;
    .locals 6

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iget-object v4, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iget v5, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-direct {v1, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v3, v4, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public semGetPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public semGetUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public semSetPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public semSetUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    return-void
.end method

.method public setEnterpriseProxy(I)V
    .locals 0

    iput p1, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    return-void
.end method

.method public setKnoxVpnProfile(I)V
    .locals 0

    iput p1, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v2, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "PAC Script: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[username : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[pw : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, " xl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const-string/jumbo v1, "[ProxyProperties.mHost == null]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0
.end method
