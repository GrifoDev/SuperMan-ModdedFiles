.class public Lcom/sec/ims/presence/XdmResponse;
.super Ljava/lang/Object;
.source "XdmResponse.java"


# instance fields
.field protected mListType:Lcom/sec/ims/presence/Constants$ListType;

.field protected mListUpdateType:Lcom/sec/ims/presence/Constants$ListUpdateType;

.field protected mSuccess:Z

.field protected mUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/Constants$ListType;Lcom/sec/ims/presence/Constants$ListUpdateType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/presence/XdmResponse;->mUri:Lcom/sec/ims/util/ImsUri;

    iput-boolean p2, p0, Lcom/sec/ims/presence/XdmResponse;->mSuccess:Z

    iput-object p3, p0, Lcom/sec/ims/presence/XdmResponse;->mListType:Lcom/sec/ims/presence/Constants$ListType;

    iput-object p4, p0, Lcom/sec/ims/presence/XdmResponse;->mListUpdateType:Lcom/sec/ims/presence/Constants$ListUpdateType;

    return-void
.end method


# virtual methods
.method public getListType()Lcom/sec/ims/presence/Constants$ListType;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/XdmResponse;->mListType:Lcom/sec/ims/presence/Constants$ListType;

    return-object v0
.end method

.method public getListUpdateType()Lcom/sec/ims/presence/Constants$ListUpdateType;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/XdmResponse;->mListUpdateType:Lcom/sec/ims/presence/Constants$ListUpdateType;

    return-object v0
.end method

.method public getUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/presence/XdmResponse;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/presence/XdmResponse;->mSuccess:Z

    return v0
.end method
