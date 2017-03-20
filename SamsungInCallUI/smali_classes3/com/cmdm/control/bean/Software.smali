.class public Lcom/cmdm/control/bean/Software;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "Software"
.end annotation


# instance fields
.field public softwareName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "softwareName"
    .end annotation
.end field

.field public softwarePackage:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
        value = "softwarePackage"
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
.method public getSoftwareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmdm/control/bean/Software;->softwareName:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwarePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cmdm/control/bean/Software;->softwarePackage:Ljava/lang/String;

    return-object v0
.end method

.method public setSoftwareName(Ljava/lang/String;)V
    .locals 0
    .param p1, "softwareName"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cmdm/control/bean/Software;->softwareName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setSoftwarePackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "softwarePackage"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cmdm/control/bean/Software;->softwarePackage:Ljava/lang/String;

    .line 42
    return-void
.end method
