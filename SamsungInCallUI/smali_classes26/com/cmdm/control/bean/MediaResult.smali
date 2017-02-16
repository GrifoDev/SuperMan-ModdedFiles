.class public Lcom/cmdm/control/bean/MediaResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "MediaResult"
.end annotation


# instance fields
.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "mediaId"
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
.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmdm/control/bean/MediaResult;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/cmdm/control/bean/MediaResult;->mediaId:Ljava/lang/String;

    .line 30
    return-void
.end method
