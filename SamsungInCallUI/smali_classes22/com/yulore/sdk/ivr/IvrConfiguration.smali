.class public Lcom/yulore/sdk/ivr/IvrConfiguration;
.super Ljava/lang/Object;
.source "IvrConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final ivrFileDir:Ljava/io/File;

.field private final offlinePacketDir:Ljava/io/File;

.field private final secret:Ljava/lang/String;

.field private final updateIntervalByHour:I

.field private final updateNetworkStrategy:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;


# direct methods
.method private constructor <init>(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    # getter for: Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->access$000(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->context:Landroid/content/Context;

    .line 46
    # getter for: Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->apiKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->access$100(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->apiKey:Ljava/lang/String;

    .line 47
    # getter for: Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->secret:Ljava/lang/String;
    invoke-static {p1}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->access$200(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->secret:Ljava/lang/String;

    .line 48
    # getter for: Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->ivrFileDir:Ljava/io/File;
    invoke-static {p1}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->access$300(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->ivrFileDir:Ljava/io/File;

    .line 49
    # getter for: Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->offlinePacketDir:Ljava/io/File;
    invoke-static {p1}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->access$400(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->offlinePacketDir:Ljava/io/File;

    .line 50
    # getter for: Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->updateIntervalByHour:I
    invoke-static {p1}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->access$500(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->updateIntervalByHour:I

    .line 51
    # getter for: Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->updateNetworkStrategy:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;
    invoke-static {p1}, Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;->access$600(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->updateNetworkStrategy:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;Lcom/yulore/sdk/ivr/IvrConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;
    .param p2, "x1"    # Lcom/yulore/sdk/ivr/IvrConfiguration$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yulore/sdk/ivr/IvrConfiguration;-><init>(Lcom/yulore/sdk/ivr/IvrConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getIvrFileDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->ivrFileDir:Ljava/io/File;

    return-object v0
.end method

.method public getOfflinePacketDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->offlinePacketDir:Ljava/io/File;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateIntervalByHour()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->updateIntervalByHour:I

    return v0
.end method

.method public getUpdateNetworkStrategy()Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yulore/sdk/ivr/IvrConfiguration;->updateNetworkStrategy:Lcom/yulore/sdk/ivr/UpdateNetworkStrategy;

    return-object v0
.end method
