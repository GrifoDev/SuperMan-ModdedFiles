.class public Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthRespV3;
.super Lcom/samsung/android/sdk/ssf/common/CommonInfo;


# instance fields
.field public auth_code:Ljava/lang/String;

.field public device_idx:I

.field public duid:J

.field public left_blocking_hour:I

.field public rcode:J

.field public receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;

.field public rmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/common/CommonInfo;-><init>()V

    return-void
.end method
