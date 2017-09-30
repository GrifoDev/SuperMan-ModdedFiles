.class public Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthInfo"
.end annotation


# instance fields
.field private MO:Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;

.field private auth_methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;->auth_methods:Ljava/util/List;

    return-object v0
.end method

.method public getMoAuth()Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;->MO:Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;

    return-object v0
.end method

.method public setAuthMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;->auth_methods:Ljava/util/List;

    return-void
.end method

.method public setMoAuth(Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;->MO:Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthInfo{MO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;->MO:Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$MoAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auth_methods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse$AuthInfo;->auth_methods:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
