.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PkgInfo"
.end annotation


# instance fields
.field private os:Ljava/lang/String;

.field private ov:Ljava/lang/String;

.field private pv:Ljava/lang/String;

.field private vc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;->pv:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;->vc:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;->os:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;->ov:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;->ov:Ljava/lang/String;

    return-object v0
.end method

.method public getPv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;->pv:Ljava/lang/String;

    return-object v0
.end method

.method public getVc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountAppInfo$PkgInfo;->vc:Ljava/lang/String;

    return-object v0
.end method
