.class public Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliveParam"
.end annotation


# instance fields
.field private duid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " deviceUniqueId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;->duid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceUniqueId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;->duid:Ljava/lang/String;

    return-void
.end method
