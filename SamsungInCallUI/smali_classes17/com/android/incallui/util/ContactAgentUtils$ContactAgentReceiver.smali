.class public Lcom/android/incallui/util/ContactAgentUtils$ContactAgentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/ContactAgentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactAgentReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    sget-object v6, Lcom/android/incallui/util/ContactAgentUtils;->ACTION_CONTACT_ORIGINAL_IMAGE_RESULT:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 89
    const-string v6, "ContactAgentReceiver"

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 91
    const/4 v5, 0x0

    .line 92
    .local v5, "result":[B
    const/4 v1, 0x0

    .line 94
    .local v1, "bizImage":[B
    const-string v6, "PHONENUMBER"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "number":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContactAgentReceiver number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    const-string v6, "ContactAgentReceiver number is empty "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    .end local v1    # "bizImage":[B
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "result":[B
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v1    # "bizImage":[B
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "result":[B
    :cond_1
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "normalizedNumber":Ljava/lang/String;
    new-instance v2, Lcom/android/incallui/coreapps/CoreAppsContact;

    invoke-direct {v2, v3}, Lcom/android/incallui/coreapps/CoreAppsContact;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    const-string v6, "extra_contact_name"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    .line 105
    const-string v6, "extra_contact_status"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->status:Ljava/lang/String;

    .line 106
    const/4 v6, -0x1

    iput v6, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->presenceMode:I

    .line 108
    const-string v6, "extra_contact_image"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 109
    if-eqz v5, :cond_2

    .line 110
    const-string v6, "ContactAgentReceiver extra_contact_image exists"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    array-length v7, v5

    invoke-static {v5, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 114
    :cond_2
    const-string v6, "extra_contact_biz_image"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 115
    if-eqz v1, :cond_3

    .line 116
    const-string v6, "ContactAgentReceiver extra_contact_biz_image exists"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    array-length v7, v1

    invoke-static {v1, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, v2, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_3
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->addCoreAppsContact(Lcom/android/incallui/coreapps/CoreAppsContact;)V

    .line 128
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto :goto_0
.end method
