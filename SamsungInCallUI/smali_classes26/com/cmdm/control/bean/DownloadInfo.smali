.class public Lcom/cmdm/control/bean/DownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public contentId:Ljava/lang/String;

.field public crsName:Ljava/lang/String;

.field public crsType:Ljava/lang/String;

.field public posterUrl:Ljava/lang/String;

.field public sourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/cmdm/control/bean/DownloadInfo;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getCrsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cmdm/control/bean/DownloadInfo;->crsName:Ljava/lang/String;

    return-object v0
.end method

.method public getCrsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cmdm/control/bean/DownloadInfo;->crsType:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cmdm/control/bean/DownloadInfo;->posterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cmdm/control/bean/DownloadInfo;->sourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/cmdm/control/bean/DownloadInfo;->contentId:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setCrsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "crsName"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cmdm/control/bean/DownloadInfo;->crsName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setCrsType(Ljava/lang/String;)V
    .locals 0
    .param p1, "crsType"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cmdm/control/bean/DownloadInfo;->crsType:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setPosterUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "posterUrl"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/cmdm/control/bean/DownloadInfo;->posterUrl:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cmdm/control/bean/DownloadInfo;->sourceUrl:Ljava/lang/String;

    .line 38
    return-void
.end method
