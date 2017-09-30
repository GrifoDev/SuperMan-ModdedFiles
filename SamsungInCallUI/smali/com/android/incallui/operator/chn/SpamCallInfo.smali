.class public Lcom/android/incallui/operator/chn/SpamCallInfo;
.super Ljava/lang/Object;


# instance fields
.field public isSpam:Z

.field public spamCount:I

.field public spamNumber:Ljava/lang/String;

.field public spamTagName:Ljava/lang/String;

.field public spamTagType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSpamCallInfo(Lcom/android/incallui/Call;Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/operator/chn/SpamCallInfo;

    invoke-direct {v0}, Lcom/android/incallui/operator/chn/SpamCallInfo;-><init>()V

    iget-object v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamTagName:Ljava/lang/String;

    iget-object v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamNumber:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->e:Z

    iput-boolean v1, v0, Lcom/android/incallui/operator/chn/SpamCallInfo;->isSpam:Z

    iget v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->c:I

    iput v1, v0, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamCount:I

    iget v1, p1, Lcom/bst/spamcall/numbermark/BinderGetNumMarkResult;->d:I

    iput v1, v0, Lcom/android/incallui/operator/chn/SpamCallInfo;->spamTagType:I

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->spamCallInfo:Lcom/android/incallui/operator/chn/SpamCallInfo;

    goto :goto_0
.end method
