.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private notification_id:Ljava/lang/String;

.field private seen:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;->notification_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;->seen:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$1;)V

    return-object v0
.end method

.method public setNotificationId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;->notification_id:Ljava/lang/String;

    return-object p0
.end method

.method public setSeen(Z)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;->seen:Z

    return-object p0
.end method
