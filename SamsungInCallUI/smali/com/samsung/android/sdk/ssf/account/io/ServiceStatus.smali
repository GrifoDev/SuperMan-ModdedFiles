.class public Lcom/samsung/android/sdk/ssf/account/io/ServiceStatus;
.super Ljava/lang/Object;


# instance fields
.field private services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceStatus;->services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

    return-void
.end method


# virtual methods
.method public getServices()[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceStatus;->services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

    return-object v0
.end method

.method public setServices([Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceStatus;->services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceStatus [services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/account/io/ServiceStatus;->services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
