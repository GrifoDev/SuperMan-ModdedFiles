.class public Lcom/android/systemui/pip/tv/PipNotification;
.super Ljava/lang/Object;
.source "PipNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/tv/PipNotification$1;,
        Lcom/android/systemui/pip/tv/PipNotification$2;,
        Lcom/android/systemui/pip/tv/PipNotification$3;,
        Lcom/android/systemui/pip/tv/PipNotification$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final NOTIFICATION_TAG:Ljava/lang/String;


# instance fields
.field private mArt:Landroid/graphics/Bitmap;

.field private mDefaultIconResId:I

.field private mDefaultTitle:Ljava/lang/String;

.field private final mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotified:Z

.field private mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private final mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/pip/tv/PipNotification;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/pip/tv/PipNotification;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/pip/tv/PipNotification;)Lcom/android/systemui/pip/tv/PipManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/tv/PipNotification;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaController:Landroid/media/session/MediaController;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/tv/PipNotification;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->updateMediaControllerMetadata()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->dismissPipNotification()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/pip/tv/PipNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->notifyPipNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/pip/tv/PipNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/tv/PipNotification;->NOTIFICATION_TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/pip/tv/PipNotification;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    new-instance v1, Lcom/android/systemui/pip/tv/PipNotification$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipNotification$1;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

    new-instance v1, Lcom/android/systemui/pip/tv/PipNotification$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipNotification$2;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    new-instance v1, Lcom/android/systemui/pip/tv/PipNotification$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipNotification$3;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    new-instance v1, Lcom/android/systemui/pip/tv/PipNotification$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipNotification$4;-><init>(Lcom/android/systemui/pip/tv/PipNotification;)V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mEventReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v2, "sys"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$TvExtender;

    invoke-direct {v2}, Landroid/app/Notification$TvExtender;-><init>()V

    const-string/jumbo v3, "PipNotification.menu"

    invoke-static {p1, v3}, Lcom/android/systemui/pip/tv/PipNotification;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$TvExtender;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;

    move-result-object v2

    const-string/jumbo v3, "PipNotification.close"

    invoke-static {p1, v3}, Lcom/android/systemui/pip/tv/PipNotification;->createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$TvExtender;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$TvExtender;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipListener:Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pip/tv/PipManager;->addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pip/tv/PipManager;->addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "PipNotification.menu"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "PipNotification.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipNotification;->onConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method private static createPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private dismissPipNotification()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/pip/tv/PipNotification;->NOTIFICATION_TAG:Ljava/lang/String;

    const/16 v2, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private notifyPipNotification()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultIconResId:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/pip/tv/PipNotification;->NOTIFICATION_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x44c

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private updateMediaControllerMetadata()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v3}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipNotification;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v3}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android.media.metadata.TITLE"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string/jumbo v3, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v3, "android.media.metadata.ART"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    if-eq v0, v3, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification;->mArt:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    return v3

    :cond_3
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method onConfigurationChanged(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12084c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultTitle:Ljava/lang/String;

    const v1, 0x7f0804b2

    iput v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mDefaultIconResId:I

    iget-boolean v1, p0, Lcom/android/systemui/pip/tv/PipNotification;->mNotified:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipNotification;->notifyPipNotification()V

    :cond_0
    return-void
.end method
