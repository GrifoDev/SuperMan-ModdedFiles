.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation


# instance fields
.field private mAppid:Ljava/lang/String;

.field private mPackageInfo:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;

.field private mResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$ServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$ServiceInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mAppid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mServiceInfoList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mResourceList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mPackageInfo:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageInfo()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mPackageInfo:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;

    return-object v0
.end method

.method public getResourceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mResourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getServiceInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$ServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mServiceInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mAppid:Ljava/lang/String;

    return-void
.end method

.method public setPackageInfo(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mPackageInfo:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;

    return-void
.end method

.method public setResourceList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mResourceList:Ljava/util/ArrayList;

    return-void
.end method

.method public setServiceInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$ServiceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;->mServiceInfoList:Ljava/util/ArrayList;

    return-void
.end method
