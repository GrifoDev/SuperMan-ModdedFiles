.class Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache$FindInfoCallback;
.super Ljava/lang/Object;
.source "RemoteContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/remotecall/contact/RemoteCallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FindInfoCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;)V
    .locals 5

    move-object v0, p2

    check-cast v0, Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    const-string v1, "ContactInfoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callerInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setName(Ljava/lang/String;)V

    iget-object v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setNumber(Ljava/lang/String;)V

    iget-boolean v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->contactExists:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setContactExist(Z)V

    iget-object v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->ringtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setRingtoneUri(Landroid/net/Uri;)V

    iget-object v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setPhotoUri(Landroid/net/Uri;)V

    iget-object v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->phoneLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setPhoneLabel(Ljava/lang/String;)V

    iget v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->numberType:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setNumberType(I)V

    iget-object v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setNumberLabel(Ljava/lang/String;)V

    iget-boolean v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->contactExists:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setContactExist(Z)V

    iget-wide v2, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->contactIdOrZero:J

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->setPersonId(J)V

    iget-object v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->photoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->photoUri:Landroid/net/Uri;

    # getter for: Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->sCache:Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;
    invoke-static {}, Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;->access$000()Lcom/android/incallui/remotecall/contact/RemoteContactInfoCache;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/remotecall/contact/RemoteContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "ContactInfoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FindInfoCallback : onQueryComplete - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getInstance()Lcom/android/incallui/remotecall/remotecall/RemoteCallList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->onCallUpdated(Lcom/android/incallui/remotecall/remotecall/RemoteCall;)V

    return-void
.end method
