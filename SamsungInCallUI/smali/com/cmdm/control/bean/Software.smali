.class public Lcom/cmdm/control/bean/Software;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSoftwareName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Software;->softwareName:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwarePackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/bean/Software;->softwarePackage:Ljava/lang/String;

    return-object v0
.end method

.method public setSoftwareName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Software;->softwareName:Ljava/lang/String;

    return-void
.end method

.method public setSoftwarePackage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmdm/control/bean/Software;->softwarePackage:Ljava/lang/String;

    return-void
.end method
