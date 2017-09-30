.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;,
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$Child;,
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$ServiceInfo;
    }
.end annotation


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$Child;",
            ">;"
        }
    .end annotation
.end field

.field private deviceType:Ljava/lang/String;

.field private esu_pkg:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;

.field private pkg:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;

.field private st:I

.field private statusDesc:Ljava/lang/String;

.field private svc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$ServiceInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$Child;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->st:I

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->statusDesc:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->deviceType:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->children:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->svc:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->esu_pkg:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;

    iput-object p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->pkg:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;

    return-void
.end method


# virtual methods
.method public getApplicationPackageInfo()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->pkg:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;

    return-object v0
.end method

.method public getChildInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$Child;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getEsuPackageInfo()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->esu_pkg:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;

    return-object v0
.end method

.method public getServiceInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$ServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->svc:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->st:I

    return v0
.end method

.method public getStatusDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->statusDesc:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response [status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->st:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Description of status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->statusDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Device type value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ServiceInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->svc:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", child= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", esu pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->esu_pkg:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse;->pkg:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountUserResponse$PackageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
