.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;,
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$ServiceInfo;,
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$AppInfo;,
        Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$DeviceInfo;
    }
.end annotation


# instance fields
.field private mDeviceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo;->mDeviceInfoList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo;->mDeviceInfoList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDeviceInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$DeviceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo;->mDeviceInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDeviceInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo;->mDeviceInfoList:Ljava/util/ArrayList;

    return-void
.end method
