.class public Lcom/samsung/android/sdk/ssf/account/io/UpdateResponse;
.super Ljava/lang/Object;


# instance fields
.field private services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServicesInfo()[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/UpdateResponse;->services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

    return-object v0
.end method

.method public setServices([Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/UpdateResponse;->services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

    return-void
.end method
