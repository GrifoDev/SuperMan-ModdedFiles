.class public Lcom/cmdm/control/bean/Welcome;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Welcome"
.end annotation


# instance fields
.field public default_welcome:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Default"
    .end annotation
.end field

.field public expire:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Expire"
    .end annotation
.end field

.field public starting:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Starting"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "Url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault_welcome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/cmdm/control/bean/Welcome;->default_welcome:Ljava/lang/String;

    return-object v0
.end method

.method public getExpire()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cmdm/control/bean/Welcome;->expire:Ljava/lang/String;

    return-object v0
.end method

.method public getStarting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cmdm/control/bean/Welcome;->starting:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cmdm/control/bean/Welcome;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDefault_welcome(Ljava/lang/String;)V
    .locals 0
    .param p1, "default_welcome"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cmdm/control/bean/Welcome;->default_welcome:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setExpire(Ljava/lang/String;)V
    .locals 0
    .param p1, "expire"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/cmdm/control/bean/Welcome;->expire:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setStarting(Ljava/lang/String;)V
    .locals 0
    .param p1, "starting"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cmdm/control/bean/Welcome;->starting:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cmdm/control/bean/Welcome;->url:Ljava/lang/String;

    .line 96
    return-void
.end method
