.class public Lcom/cmdm/control/bean/RegionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "RegionInfo"
.end annotation


# instance fields
.field public bytes:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "bytes"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "description"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "url"
    .end annotation
.end field

.field public version:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cmdm/control/bean/RegionInfo;->bytes:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cmdm/control/bean/RegionInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cmdm/control/bean/RegionInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cmdm/control/bean/RegionInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setBytes(Ljava/lang/String;)V
    .locals 0
    .param p1, "bytes"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cmdm/control/bean/RegionInfo;->bytes:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cmdm/control/bean/RegionInfo;->description:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cmdm/control/bean/RegionInfo;->url:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cmdm/control/bean/RegionInfo;->version:Ljava/lang/String;

    .line 74
    return-void
.end method
