.class public Lcom/sec/ims/presence/XdmIconInfo;
.super Ljava/lang/Object;
.source "XdmIconInfo.java"


# instance fields
.field private pi8Entity:Ljava/lang/String;

.field private pi8Etag:Ljava/lang/String;

.field private pi8IconLocalPath:Ljava/lang/String;

.field private pi8IconUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sec/ims/presence/XdmIconInfo;->setPi8Entity(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/ims/presence/XdmIconInfo;->setPi8IconUri(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/sec/ims/presence/XdmIconInfo;->setPi8Etag(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/sec/ims/presence/XdmIconInfo;->setPi8IconLocalPath(Ljava/lang/String;)V

    return-void
.end method

.method private setPi8Entity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/XdmIconInfo;->pi8Entity:Ljava/lang/String;

    return-void
.end method

.method private setPi8Etag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/XdmIconInfo;->pi8Etag:Ljava/lang/String;

    return-void
.end method

.method private setPi8IconLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/XdmIconInfo;->pi8IconLocalPath:Ljava/lang/String;

    return-void
.end method

.method private setPi8IconUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/presence/XdmIconInfo;->pi8IconUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPi8Entity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/XdmIconInfo;->pi8Entity:Ljava/lang/String;

    return-object v0
.end method

.method public getPi8Etag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/XdmIconInfo;->pi8Etag:Ljava/lang/String;

    return-object v0
.end method

.method public getPi8IconLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/XdmIconInfo;->pi8IconLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPi8IconUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/XdmIconInfo;->pi8IconUri:Ljava/lang/String;

    return-object v0
.end method
