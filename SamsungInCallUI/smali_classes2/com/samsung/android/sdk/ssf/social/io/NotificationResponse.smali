.class public Lcom/samsung/android/sdk/ssf/social/io/NotificationResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected notification_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/NotificationDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/NotificationDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/NotificationResponse;->notification_list:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/NotificationResponse;->total:I

    return v0
.end method

.method public setNotificationList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/NotificationDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/NotificationResponse;->notification_list:Ljava/util/List;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/NotificationResponse;->total:I

    return-void
.end method
