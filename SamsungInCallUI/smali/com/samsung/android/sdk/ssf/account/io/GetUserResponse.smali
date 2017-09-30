.class public Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;
.super Ljava/lang/Object;


# instance fields
.field private child:[Lcom/samsung/android/sdk/ssf/account/io/ChildDuid;

.field private device_idx:I

.field private msisdn:Ljava/lang/String;

.field private pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

.field private pl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/PlInfo;",
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
.method public getChild()[Lcom/samsung/android/sdk/ssf/account/io/ChildDuid;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->child:[Lcom/samsung/android/sdk/ssf/account/io/ChildDuid;

    return-object v0
.end method

.method public getDevice_idx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->device_idx:I

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

    return-object v0
.end method

.method public getPl()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/PlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->pl:Ljava/util/ArrayList;

    return-object v0
.end method
