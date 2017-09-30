.class public Lcom/samsung/android/sdk/ssf/account/io/NoticeReqInfo;
.super Ljava/lang/Object;


# instance fields
.field private appid:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private pv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/NoticeReqInfo;->appid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/account/io/NoticeReqInfo;->pv:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/account/io/NoticeReqInfo;->lang:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/account/io/NoticeReqInfo;->country:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/NoticeReqInfo;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/NoticeReqInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/NoticeReqInfo;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getPv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/NoticeReqInfo;->pv:Ljava/lang/String;

    return-object v0
.end method
