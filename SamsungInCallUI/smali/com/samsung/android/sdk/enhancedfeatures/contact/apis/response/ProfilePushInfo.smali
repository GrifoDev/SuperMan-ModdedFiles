.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;
.super Ljava/lang/Object;


# instance fields
.field protected appData:Ljava/lang/String;

.field protected pushType:I

.field protected sessionInfo:Ljava/lang/String;

.field protected timeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->pushType:I

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->sessionInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->appData:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->timeStamp:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getAppData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->appData:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->sessionInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->timeStamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getpushType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->pushType:I

    return v0
.end method

.method public setAppData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->appData:Ljava/lang/String;

    return-void
.end method

.method public setSessionInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->sessionInfo:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->timeStamp:Ljava/lang/Long;

    return-void
.end method

.method public setpushType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->pushType:I

    return-void
.end method
