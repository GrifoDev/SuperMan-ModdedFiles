.class public final Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendMultipartSmsResult"
.end annotation


# instance fields
.field private final mMessageRefs:[I

.field private final mSendStatus:I


# direct methods
.method public constructor <init>(I[I)V
    .locals 0
    .param p1, "sendStatus"    # I
    .param p2, "messageRefs"    # [I

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput p1, p0, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;->mSendStatus:I

    .line 425
    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;->mMessageRefs:[I

    .line 423
    return-void
.end method


# virtual methods
.method public getMessageRefs()[I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;->mMessageRefs:[I

    return-object v0
.end method

.method public getSendStatus()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;->mSendStatus:I

    return v0
.end method
