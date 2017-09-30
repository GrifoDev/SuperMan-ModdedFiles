.class public Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo;
.super Lcom/samsung/android/sdk/ssf/common/CommonInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;
    }
.end annotation


# instance fields
.field private list:[Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " paramsList cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo;->list:[Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;

    return-void
.end method


# virtual methods
.method public getList()[Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo;->list:[Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;

    return-object v0
.end method

.method public setAliveParamList([Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo;->list:[Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;

    return-void
.end method
