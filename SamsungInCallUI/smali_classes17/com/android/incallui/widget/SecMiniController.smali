.class public Lcom/android/incallui/widget/SecMiniController;
.super Lcom/android/incallui/widget/InCallQuickPanel;
.source "SecMiniController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecMiniController"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "layoutId"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/InCallQuickPanel;-><init>(Ljava/lang/String;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public initInCallQuickPanel(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-super/range {p0 .. p1}, Lcom/android/incallui/widget/InCallQuickPanel;->initInCallQuickPanel(Landroid/content/Context;)V

    .line 52
    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.incallui.ACTION_SHOW_CALL_SCREEN_ON_MINI_CONTROLLER"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 55
    .local v5, "showCallScreen":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.incallui.ACTION_CALL_MUTE"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 58
    .local v6, "toggleMute":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.incallui.ACTION_CALL_SPEAKER"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 61
    .local v7, "toggleSpeaker":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.incallui.ACTION_CALL_ANSWER"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 64
    .local v0, "actionAnswer":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.incallui.ACTION_ANSWER_VIDEO_INCOMING_CALL"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 67
    .local v4, "actionVideoAnswer":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.incallui.ACTION_CALL_RESUME"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 70
    .local v3, "actionResume":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.samsung.incallui.ACTION_CALL_END"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 73
    .local v1, "actionEnd":Landroid/app/PendingIntent;
    iget-object v8, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.android.incallui.ACTION_CALL_REJECT"

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 77
    .local v2, "actionReject":Landroid/app/PendingIntent;
    const v8, 0x7f1002b4

    invoke-virtual {p0, v8, v5}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 78
    const v8, 0x7f1002bc

    invoke-virtual {p0, v8, v6}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 79
    const v8, 0x7f1002bb

    invoke-virtual {p0, v8, v7}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 80
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 81
    const v8, 0x7f1002b9

    invoke-virtual {p0, v8, v4}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 85
    :goto_0
    const v8, 0x7f1002ba

    invoke-virtual {p0, v8, v3}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 86
    const v8, 0x7f1002be

    invoke-virtual {p0, v8, v1}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 87
    const v8, 0x7f1002bd

    invoke-virtual {p0, v8, v2}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 88
    return-void

    .line 83
    :cond_0
    const v8, 0x7f1002b9

    invoke-virtual {p0, v8, v0}, Lcom/android/incallui/widget/SecMiniController;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected updateJanskyInfo()V
    .locals 7

    .prologue
    const v6, 0x7f1002c4

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, "show":Z
    const-string v3, "jansky_info_for_tmo"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->isActiveJanskyAccount()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v0

    .line 95
    .local v0, "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    if-eqz v0, :cond_0

    .line 96
    iget-object v3, p0, Lcom/android/incallui/widget/SecMiniController;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 98
    const/4 v2, 0x1

    .line 99
    invoke-static {v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/android/incallui/widget/SecMiniController;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 103
    .end local v0    # "entry":Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v3, "SecMiniController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateJanskyInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/incallui/widget/SecMiniController;->setViewVisibility(II)V

    .line 105
    return-void

    .line 104
    :cond_1
    const/16 v3, 0x8

    goto :goto_0
.end method

.method protected updateName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const v1, 0x7f1002c2

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/widget/SecMiniController;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 111
    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/widget/SecMiniController;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/widget/SecMiniController;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
