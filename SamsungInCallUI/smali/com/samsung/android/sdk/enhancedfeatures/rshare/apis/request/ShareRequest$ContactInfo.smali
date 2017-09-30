.class Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactInfo"
.end annotation


# instance fields
.field public contactUri:Landroid/net/Uri;

.field public phoneNumber:Ljava/lang/String;

.field public updateType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    instance-of v1, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;->updateType:I

    iget v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;->updateType:I

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;->contactUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;->contactUri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;->contactUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$ContactInfo;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
