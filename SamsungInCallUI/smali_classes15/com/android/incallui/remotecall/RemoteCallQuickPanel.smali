.class public Lcom/android/incallui/remotecall/RemoteCallQuickPanel;
.super Landroid/widget/RemoteViews;
.source "RemoteCallQuickPanel.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f040090

    invoke-direct {p0, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setNameStatus(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)V
    .locals 6

    const v5, 0x7f1001c7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isPullAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v5, v4}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090567

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    const v3, 0x7f1001ca

    invoke-virtual {p0, v3, v1}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f1001cb

    invoke-virtual {p0, v3, v2}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getPhoto()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->updateImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v3, 0x8

    invoke-virtual {p0, v5, v3}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090569

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private setPhotoImage(Landroid/graphics/Bitmap;)V
    .locals 5

    const v4, 0x7f1001c5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0362

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    invoke-static {p1, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    invoke-virtual {p0, v4, v0}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v2, 0x7f1001c6

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    :cond_1
    return-void
.end method

.method private updateImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 6

    const v5, 0x7f1001c6

    if-eqz p1, :cond_0

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setPhotoImage(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v5, p2}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f1001c5

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    const/4 v3, 0x0

    invoke-virtual {p0, v5, v3}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0203a3

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setPhotoImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLargeIconToDisplay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLargeIconToDisplay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updatePendingIntent()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/remotecall/RemoteCallIntentService;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v2, Lcom/android/incallui/remotecall/RemoteCallIntentService;->PULL_REMOTE:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f1001c8

    invoke-virtual {p0, v2, v1}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public update(Lcom/android/incallui/remotecall/remotecall/RemoteCallList;)V
    .locals 11

    const/16 v8, 0x8

    const v10, 0x7f1001cc

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getActiveCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/remotecall/remotecall/RemoteCallList;->getHoldCall()Lcom/android/incallui/remotecall/remotecall/RemoteCall;

    move-result-object v4

    if-nez v0, :cond_2

    move v1, v6

    :goto_0
    if-nez v4, :cond_3

    move v2, v6

    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->updatePendingIntent()V

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setNameStatus(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)V

    invoke-virtual {v4}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->isConferenceCall()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090047

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v10, v3}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v10, v6}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v1, v7

    goto :goto_0

    :cond_3
    move v2, v7

    goto :goto_1

    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/android/incallui/remotecall/remotecall/RemoteCall;->getNumber()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setNameStatus(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)V

    invoke-virtual {p0, v10, v8}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_1

    invoke-direct {p0, v4, v6}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setNameStatus(Lcom/android/incallui/remotecall/remotecall/RemoteCall;Z)V

    invoke-virtual {p0, v10, v8}, Lcom/android/incallui/remotecall/RemoteCallQuickPanel;->setViewVisibility(II)V

    goto :goto_3
.end method
