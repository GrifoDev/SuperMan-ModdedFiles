.class public Lcom/cmdm/control/bean/SettingContentType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "settingContentType"
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
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cmdm/control/bean/SettingContentType;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cmdm/control/bean/SettingContentType;->defaultFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cmdm/control/bean/SettingContentType;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cmdm/control/bean/SettingContentType;->posterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cmdm/control/bean/SettingContentType;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cmdm/control/bean/SettingContentType;->cid:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setDefaultFlag(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultFlag"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/cmdm/control/bean/SettingContentType;->defaultFlag:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0
    .param p1, "pid"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cmdm/control/bean/SettingContentType;->pid:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPosterUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "posterUrl"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cmdm/control/bean/SettingContentType;->posterUrl:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cmdm/control/bean/SettingContentType;->url:Ljava/lang/String;

    .line 78
    return-void
.end method
