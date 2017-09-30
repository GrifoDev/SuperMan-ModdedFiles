.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;
.super Ljava/lang/Object;


# instance fields
.field private appId:Ljava/lang/String;

.field private serviceId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;->serviceId:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;->appId:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;->serviceId:I

    return-void
.end method
