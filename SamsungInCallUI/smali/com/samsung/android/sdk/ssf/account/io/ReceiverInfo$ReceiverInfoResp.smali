.class public Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;
.super Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReceiverInfoResp"
.end annotation


# instance fields
.field public rcode:J

.field public rmsg:Ljava/lang/String;

.field public st:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
