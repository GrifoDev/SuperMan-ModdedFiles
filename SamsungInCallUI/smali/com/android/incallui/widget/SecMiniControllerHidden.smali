.class public Lcom/android/incallui/widget/SecMiniControllerHidden;
.super Lcom/android/incallui/widget/InCallQuickPanel;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecMiniControllerHidden"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/InCallQuickPanel;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private getHiddenName()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    const v1, 0x7f090282

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    const v1, 0x7f090283

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public initInCallQuickPanel(Landroid/content/Context;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/widget/InCallQuickPanel;->initInCallQuickPanel(Landroid/content/Context;)V

    const/high16 v0, 0x10000000

    iget-object v1, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.incallui.ACTION_CALL_MUTE"

    iget-object v4, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v2, v3, v13, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v12, v2, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.incallui.ACTION_CALL_SPEAKER"

    iget-object v5, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v3, v4, v13, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v12, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.incallui.ACTION_CALL_ANSWER"

    iget-object v6, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v4, v5, v13, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v12, v4, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.incallui.ACTION_CALL_RESUME"

    iget-object v7, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v5, v6, v13, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v12, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.incallui.ACTION_CALL_END"

    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v6, v7, v13, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v5, v12, v6, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.incallui.ACTION_CALL_REJECT"

    iget-object v9, p0, Lcom/android/incallui/widget/SecMiniControllerHidden;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v7, v8, v13, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v6, v12, v0, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v6, 0x7f10034a

    invoke-virtual {p0, v6, v1}, Lcom/android/incallui/widget/SecMiniControllerHidden;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f100349

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/widget/SecMiniControllerHidden;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f100347

    invoke-virtual {p0, v1, v3}, Lcom/android/incallui/widget/SecMiniControllerHidden;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f100348

    invoke-virtual {p0, v1, v4}, Lcom/android/incallui/widget/SecMiniControllerHidden;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f10034c

    invoke-virtual {p0, v1, v5}, Lcom/android/incallui/widget/SecMiniControllerHidden;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f10034b

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/widget/SecMiniControllerHidden;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method protected updateJanskyInfo()V
    .locals 0

    return-void
.end method

.method protected updateName(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f100350

    invoke-direct {p0}, Lcom/android/incallui/widget/SecMiniControllerHidden;->getHiddenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/widget/SecMiniControllerHidden;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method
