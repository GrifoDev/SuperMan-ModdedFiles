.class public Lcom/android/incallui/widget/SecMiniController;
.super Lcom/android/incallui/widget/InCallQuickPanel;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecMiniController"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/InCallQuickPanel;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public initInCallQuickPanel(Landroid/content/Context;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcom/android/incallui/widget/InCallQuickPanel;->initInCallQuickPanel(Landroid/content/Context;)V

    const/high16 v0, 0x10000000

    iget-object v1, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN_ON_MINI_CONTROLLER"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.incallui.ACTION_CALL_MUTE"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.incallui.ACTION_CALL_SPEAKER"

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.incallui.ACTION_CALL_ANSWER"

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v10, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.incallui.ACTION_CALL_RESUME"

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v12, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.incallui.ACTION_CALL_END"

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.incallui.ACTION_CALL_REJECT"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v8, v9, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v8, 0x7f100342

    invoke-virtual {p0, v8, v1}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f10034a

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f100349

    invoke-virtual {p0, v1, v3}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f100347

    invoke-virtual {p0, v1, v5}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_0
    const v1, 0x7f100348

    invoke-virtual {p0, v1, v6}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f10034c

    invoke-virtual {p0, v1, v7}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v1, 0x7f10034b

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const v1, 0x7f100347

    invoke-virtual {p0, v1, v4}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected updateJanskyInfo()V
    .locals 6

    const v5, 0x7f100352

    const/4 v1, 0x0

    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isActiveJanskyAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    invoke-static {v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/android/incallui/widget/SecMiniController;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_0
    const-string v2, "SecMiniController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateJanskyInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    :goto_1
    invoke-virtual {p0, v5, v1}, Lcom/android/incallui/widget/SecMiniController;->setViewVisibility(II)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected updateName(Ljava/lang/String;)V
    .locals 2

    const v1, 0x7f100350

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/widget/SecMiniController;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/widget/SecMiniController;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/widget/SecMiniController;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
