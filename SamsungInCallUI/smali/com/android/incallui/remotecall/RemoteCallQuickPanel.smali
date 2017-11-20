.class public Lcom/android/incallui/remotecall/RemoteCallQuickPanel;
.super Landroid/widget/RemoteViews;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0400a2

    invoke-direct {p0, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setNameStatus(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)V
    .locals 4

    const v1, 0x7f10023e

    const v3, 0x7f10023c

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isPullAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09062b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const v2, 0x7f100241

    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f100242

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isRemoteVideoCall()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020442

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setImageViewResource(II)V

    :goto_4
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09062d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const v0, 0x7f020443

    invoke-virtual {p0, v3, v0}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setImageViewResource(II)V

    goto :goto_4

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method private updatePendingIntent()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/remotecall/RemoteCallIntentService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/android/incallui/remotecall/RemoteCallIntentService;->PULL_REMOTE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f10023f

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 8

    const/16 v7, 0x8

    const v6, 0x7f100243

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getHoldCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v5

    if-nez v4, :cond_2

    move v3, v1

    :goto_0
    if-nez v5, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->updatePendingIntent()V

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    invoke-direct {p0, v4, v2}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setNameStatus(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)V

    invoke-virtual {v5}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v6, v1}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v3, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v5}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    invoke-direct {p0, v4, v2}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setNameStatus(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)V

    invoke-virtual {p0, v6, v7}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_1

    invoke-direct {p0, v5, v1}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setNameStatus(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)V

    invoke-virtual {p0, v6, v7}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    goto :goto_3
.end method
