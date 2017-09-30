.class public Lcom/samsung/android/sdk/ssf/account/io/UpdateReqInfo;
.super Ljava/lang/Object;


# instance fields
.field protected pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

.field private push_info:[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

.field private sids:[I

.field private succession:Lcom/samsung/android/sdk/ssf/account/io/Succession;


# direct methods
.method public constructor <init>([Lcom/samsung/android/sdk/ssf/account/io/PushInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/UpdateReqInfo;->push_info:[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/UpdateReqInfo;->push_info:[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    goto :goto_0
.end method


# virtual methods
.method public getPushInfo()[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/UpdateReqInfo;->push_info:[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    return-object v0
.end method

.method public getSidsArray()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/UpdateReqInfo;->sids:[I

    return-object v0
.end method

.method public getSuccession()Lcom/samsung/android/sdk/ssf/account/io/Succession;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/UpdateReqInfo;->succession:Lcom/samsung/android/sdk/ssf/account/io/Succession;

    return-object v0
.end method

.method public putSidsArray([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/UpdateReqInfo;->sids:[I

    return-void
.end method

.method public putSuccession(Lcom/samsung/android/sdk/ssf/account/io/Succession;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/UpdateReqInfo;->succession:Lcom/samsung/android/sdk/ssf/account/io/Succession;

    return-void
.end method

.method public setPkg(Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/UpdateReqInfo;->pkg:Lcom/samsung/android/sdk/ssf/account/io/PackageInfo;

    return-void
.end method
