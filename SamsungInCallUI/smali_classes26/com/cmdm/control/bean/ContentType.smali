.class public Lcom/cmdm/control/bean/ContentType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "ContentType"
.end annotation


# instance fields
.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "cid"
    .end annotation
.end field

.field public defaultFlag:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "defaultFlag"
    .end annotation
.end field

.field public pid:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "pid"
    .end annotation
.end field

.field public posterUrl:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "posterUrl"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentType;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentType;->defaultFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentType;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentType;->posterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cmdm/control/bean/ContentType;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentType;->cid:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setDefaultFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultFlag"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentType;->defaultFlag:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentType;->pid:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setPosterUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "posterUrl"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentType;->posterUrl:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cmdm/control/bean/ContentType;->url:Ljava/lang/String;

    .line 88
    return-void
.end method
