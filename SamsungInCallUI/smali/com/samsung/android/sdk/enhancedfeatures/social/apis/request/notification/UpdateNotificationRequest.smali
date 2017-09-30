.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;
    }
.end annotation


# instance fields
.field private notification_id:Ljava/lang/String;

.field private seen:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;->notification_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;->seen:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getNotificationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;->notification_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSeen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;->seen:Z

    return v0
.end method
