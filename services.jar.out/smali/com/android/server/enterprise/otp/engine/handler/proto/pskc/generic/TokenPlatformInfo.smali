.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;
.super Ljava/lang/Object;
.source "TokenPlatformInfo.java"


# instance fields
.field private algoLocation:Ljava/lang/String;

.field private keyLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgoLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->algoLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->keyLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgoLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->algoLocation:Ljava/lang/String;

    return-void
.end method

.method public setKeyLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->keyLocation:Ljava/lang/String;

    return-void
.end method
