.class Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpEngineDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
    }
.end annotation


# instance fields
.field private final MAX_RETRY:I

.field private final TO_READ:I

.field private final TO_WRITE:I

.field private mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

.field private mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/SdpManagerService;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    iput-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->TO_READ:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->TO_WRITE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->MAX_RETRY:I

    new-instance v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    new-instance v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;-><init>(Lcom/android/server/SdpManagerService;)V

    return-void
.end method

.method private getEngineInfoLocked(I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->-wrap0(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListLocked()Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    invoke-static {v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->-wrap0(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "getEngineListLocked :: no engine found"

    invoke-static {v1, v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    return-object v0
.end method

.method private removeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->-wrap2(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method private storeEngineInfoLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineInfoXmlHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->-wrap1(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method private updateEngineListLocked()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->mEngineListXMLHandler:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;

    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->-wrap1(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)I

    move-result v0

    return v0
.end method
