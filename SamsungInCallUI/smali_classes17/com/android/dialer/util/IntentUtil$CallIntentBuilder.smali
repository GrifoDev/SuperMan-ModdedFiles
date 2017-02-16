.class public Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;
.super Ljava/lang/Object;
.source "IntentUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/util/IntentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallIntentBuilder"
.end annotation


# instance fields
.field private mCallInitiationType:I

.field private mIsVideoCall:Z

.field private mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->mIsVideoCall:Z

    .line 49
    iput-object p1, p0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->mUri:Landroid/net/Uri;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;-><init>(Landroid/net/Uri;)V

    .line 54
    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-boolean v0, p0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->mIsVideoCall:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iget v3, p0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->mCallInitiationType:I

    invoke-static {v1, v2, v0, v3}, Lcom/android/dialer/util/IntentUtil;->getCallIntent(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallInitiationType(I)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;
    .locals 0
    .param p1, "initiationType"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->mCallInitiationType:I

    .line 58
    return-object p0
.end method

.method public setIsVideoCall(Z)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;
    .locals 0
    .param p1, "isVideoCall"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->mIsVideoCall:Z

    .line 68
    return-object p0
.end method

.method public setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;
    .locals 0
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/dialer/util/IntentUtil$CallIntentBuilder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 63
    return-object p0
.end method
