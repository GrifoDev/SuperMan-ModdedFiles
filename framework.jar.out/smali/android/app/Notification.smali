.class public Landroid/app/Notification;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$1;,
        Landroid/app/Notification$Action;,
        Landroid/app/Notification$BigPictureStyle;,
        Landroid/app/Notification$BigTextStyle;,
        Landroid/app/Notification$Builder;,
        Landroid/app/Notification$BuilderRemoteViews;,
        Landroid/app/Notification$CarExtender;,
        Landroid/app/Notification$DecoratedCustomViewStyle;,
        Landroid/app/Notification$DecoratedMediaCustomViewStyle;,
        Landroid/app/Notification$Extender;,
        Landroid/app/Notification$InboxStyle;,
        Landroid/app/Notification$MediaStyle;,
        Landroid/app/Notification$MessagingStyle;,
        Landroid/app/Notification$StandardTemplateParams;,
        Landroid/app/Notification$Style;,
        Landroid/app/Notification$TvExtender;,
        Landroid/app/Notification$WearableExtender;
    }
.end annotation


# static fields
.field public static final AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

.field public static final BADGE_ICON_LARGE:I = 0x2

.field public static final BADGE_ICON_NONE:I = 0x0

.field public static final BADGE_ICON_SMALL:I = 0x1

.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLOR_INVALID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_ALLOW_DURING_SETUP:Ljava/lang/String; = "android.allowDuringSetup"

.field public static final EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_BUILDER_APPLICATION_INFO:Ljava/lang/String; = "android.appInfo"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_ID"

.field public static final EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final EXTRA_COLORIZED:Ljava/lang/String; = "android.colorized"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_CONTAINS_CUSTOM_VIEW:Ljava/lang/String; = "android.contains.customView"

.field public static final EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final EXTRA_FOREGROUND_APPS:Ljava/lang/String; = "android.foregroundApps"

.field public static final EXTRA_HISTORIC_MESSAGES:Ljava/lang/String; = "android.messages.historic"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_ID"

.field public static final EXTRA_NOTIFICATION_TAG:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_TAG"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SUBSTITUTE_APP_NAME:Ljava/lang/String; = "android.substName"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTOGROUP_SUMMARY:I = 0x400

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_ALERT_ALL:I = 0x0

.field public static final GROUP_ALERT_CHILDREN:I = 0x2

.field public static final GROUP_ALERT_SUMMARY:I = 0x1

.field public static final INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400

.field private static final MAX_REPLY_HISTORY:I = 0x5

.field public static final PACKAGE_VISIBILITY_HIDE_ON_INDICATOR:I = 0x4

.field public static final PACKAGE_VISIBILITY_HIDE_ON_LOCKSCREEN:I = 0x2

.field public static final PACKAGE_VISIBILITY_PRIVATE:I = 0x1

.field public static final PRIORITY_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_HIGH:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_LOW:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_MAX:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_MIN:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SEM_FLAG_DISABLE_EDGE_LIGHTING:I = 0x20

.field public static final SEM_FLAG_DISABLE_HEADS_UP:I = 0x8

.field public static final SEM_FLAG_HIDE_ACTION_BUTTON_ICON:I = 0x4

.field public static final SEM_FLAG_HIDE_NOTIFICATION_ICON:I = 0x2

.field public static final SEM_FLAG_HIDE_NOTIFICATION_ON_PANEL:I = 0x1

.field public static final SEM_FLAG_HIDE_SMART_GLOW_LIGHTS:I = 0x40

.field public static final SEM_FLAG_SHOW_SMART_GLOW_LIGHTS:I = 0x10

.field public static final SEM_PRIORITY_DEFAULT:I = 0x0

.field public static final SEM_PRIORITY_HIGH:I = 0xa

.field public static final SEM_PRIORITY_MAX:I = 0x14

.field public static final STREAM_DEFAULT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Notification"

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1

.field public static processWhitelistToken:Landroid/os/IBinder;

.field public static whitelistToken:Landroid/os/IBinder;


# instance fields
.field public actions:[Landroid/app/Notification$Action;

.field public allPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public audioAttributes:Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public audioStreamType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public bigContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public category:Ljava/lang/String;

.field public color:I

.field public contentIntent:Landroid/app/PendingIntent;

.field public contentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private creationTime:J

.field public defaults:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public deleteIntent:Landroid/app/PendingIntent;

.field public extras:Landroid/os/Bundle;

.field public flags:I

.field public fullScreenIntent:Landroid/app/PendingIntent;

.field public headsUpContentView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public iconLevel:I

.field public largeIcon:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ledARGB:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ledOffMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public ledOnMS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mBadgeIcon:I

.field private mChannelId:Ljava/lang/String;

.field private mGroupAlertBehavior:I

.field private mGroupKey:Ljava/lang/String;

.field private mLargeIcon:Landroid/graphics/drawable/Icon;

.field private mLock:Ljava/lang/Object;

.field private mSettingsText:Ljava/lang/CharSequence;

.field private mShortcutId:Ljava/lang/String;

.field private mSmallIcon:Landroid/graphics/drawable/Icon;

.field private mSortKey:Ljava/lang/String;

.field private mTimeout:J

.field public number:I

.field public parcelDataSize:I

.field public priority:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public publicVersion:Landroid/app/Notification;

.field public semBadgeTarget:Landroid/content/ComponentName;

.field public semFlags:I

.field public semMissedCount:I

.field public semPriority:I

.field public sound:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tickerText:Ljava/lang/CharSequence;

.field public tickerView:Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public vibrate:[J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public visibility:I

.field public when:J


# direct methods
.method static synthetic -get0(Landroid/app/Notification;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    return-wide v0
.end method

.method static synthetic -get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/Notification;J)J
    .locals 1

    iput-wide p1, p0, Landroid/app/Notification;->creationTime:J

    return-wide p1
.end method

.method static synthetic -set1(Landroid/app/Notification;I)I
    .locals 0

    iput p1, p0, Landroid/app/Notification;->mBadgeIcon:I

    return p1
.end method

.method static synthetic -set10(Landroid/app/Notification;J)J
    .locals 1

    iput-wide p1, p0, Landroid/app/Notification;->mTimeout:J

    return-wide p1
.end method

.method static synthetic -set2(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/app/Notification;I)I
    .locals 0

    iput p1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return p1
.end method

.method static synthetic -set4(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p1
.end method

.method static synthetic -set6(Landroid/app/Notification;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set7(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object p1
.end method

.method static synthetic -set9(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 1

    invoke-static {p0, p1}, Landroid/app/Notification;->getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Notification;)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification;->hasLargeIcon()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    new-instance v0, Landroid/app/Notification$1;

    invoke-direct {v0}, Landroid/app/Notification$1;-><init>()V

    sput-object v0, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/app/Notification;->number:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput v2, p0, Landroid/app/Notification;->color:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iput v2, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v2, p0, Landroid/app/Notification;->mBadgeIcon:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->mLock:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->when:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->creationTime:J

    iput v2, p0, Landroid/app/Notification;->priority:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/app/Notification;->number:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput v1, p0, Landroid/app/Notification;->color:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iput v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->mLock:Ljava/lang/Object;

    iput p1, p0, Landroid/app/Notification;->icon:I

    iput-object p2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-wide p3, p0, Landroid/app/Notification;->when:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification;->creationTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/app/Notification;->number:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput v1, p0, Landroid/app/Notification;->color:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iput v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p4, p5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {p1, v1, p8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->buildInto(Landroid/app/Notification;)Landroid/app/Notification;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/app/Notification;->number:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->audioStreamType:I

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput v1, p0, Landroid/app/Notification;->color:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iput v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->mLock:Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/app/Notification;->readFromParcelImpl(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    return-void
.end method

.method public static addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    return-void
.end method

.method public static addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V
    .locals 2

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.appInfo"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method private static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    instance-of v2, v0, [Landroid/app/Notification;

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    check-cast v0, [Landroid/app/Notification;

    return-object v0

    :cond_1
    array-length v2, v0

    const-class v3, [Landroid/app/Notification;

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification;

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v1
.end method

.method public static getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Landroid/app/Notification$BigTextStyle;

    aput-object v3, v0, v2

    const-class v3, Landroid/app/Notification$BigPictureStyle;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$InboxStyle;

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$MediaStyle;

    const/4 v4, 0x3

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-class v3, Landroid/app/Notification$MessagingStyle;

    const/4 v4, 0x6

    aput-object v3, v0, v4

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private hasLargeIcon()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForegroundService()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static priorityToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "MIN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "LOW"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "DEFAULT"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "HIGH"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "MAX"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private readFromParcelImpl(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Landroid/app/Notification;->whitelistToken:Landroid/os/IBinder;

    sget-object v1, Landroid/app/Notification;->whitelistToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    sget-object v1, Landroid/app/Notification;->processWhitelistToken:Landroid/os/IBinder;

    sput-object v1, Landroid/app/Notification;->whitelistToken:Landroid/os/IBinder;

    :cond_0
    const-class v1, Landroid/app/PendingIntent;

    sget-object v2, Landroid/app/Notification;->whitelistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/Notification;->creationTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->icon:I

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/app/Notification$Action;

    iput-object v1, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/Notification;->mTimeout:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mBadgeIcon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->semMissedCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->semFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->semPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    iput v1, p0, Landroid/app/Notification;->parcelDataSize:I

    return-void
.end method

.method private static removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13

    const/4 v1, 0x0

    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_4

    move-object v10, p0

    check-cast v10, Landroid/text/Spanned;

    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v10, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-interface {v10}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v12, v9

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_3

    aget-object v8, v9, v11

    move-object v0, v8

    instance-of v1, v8, Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_0

    move-object v1, v8

    check-cast v1, Landroid/text/style/CharacterStyle;

    invoke-virtual {v1}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Landroid/text/style/TextAppearanceSpan;

    if-eqz v1, :cond_2

    move-object v7, v0

    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v2

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0

    :cond_2
    instance-of v1, v0, Landroid/text/style/RelativeSizeSpan;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v1, :cond_1

    move-object v0, v8

    goto :goto_1

    :cond_3
    return-object v6

    :cond_4
    return-object p0
.end method

.method public static safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    const/16 v1, 0x1400

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " instance is a custom Parcelable and not allowed in Notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {p0}, Landroid/app/Notification;->removeTextSizeSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static visibilityToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "PRIVATE"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "PUBLIC"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "SECRET"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private writeToParcelImpl(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Landroid/app/Notification;->whitelistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/Notification;->creationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget v1, p0, Landroid/app/Notification;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget v0, p0, Landroid/app/Notification;->number:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_3
    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    :cond_1
    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_8

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    iget v0, p0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v0, :cond_9

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_a

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    iget-object v0, p0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget v0, p0, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    iget v0, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_c

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_d

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    iget v0, p0, Landroid/app/Notification;->visibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_e

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v0, p1, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c
    iget v0, p0, Landroid/app/Notification;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_d
    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_e
    iget v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_f
    iget v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/Notification;->semMissedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/Notification;->semFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/Notification;->semPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    iput v0, p0, Landroid/app/Notification;->parcelDataSize:I

    return-void

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5

    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    :cond_b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :cond_c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    :cond_e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c

    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_d

    :cond_10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_e

    :cond_11
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    :cond_12
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10
.end method


# virtual methods
.method public clone()Landroid/app/Notification;
    .locals 2

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public cloneInto(Landroid/app/Notification;Z)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    sget-object v5, Landroid/app/Notification;->whitelistToken:Landroid/os/IBinder;

    sput-object v5, Landroid/app/Notification;->whitelistToken:Landroid/os/IBinder;

    iget-wide v6, p0, Landroid/app/Notification;->when:J

    iput-wide v6, p1, Landroid/app/Notification;->when:J

    iget-wide v6, p0, Landroid/app/Notification;->creationTime:J

    iput-wide v6, p1, Landroid/app/Notification;->creationTime:J

    iget-object v5, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iput-object v5, p1, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    iget v5, p0, Landroid/app/Notification;->number:I

    iput v5, p1, Landroid/app/Notification;->number:I

    iget-object v5, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v5, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    :cond_1
    if-eqz p2, :cond_2

    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_2
    if-eqz p2, :cond_3

    iget-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iput-object v5, p1, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    :cond_3
    iget v5, p0, Landroid/app/Notification;->iconLevel:I

    iput v5, p1, Landroid/app/Notification;->iconLevel:I

    iget-object v5, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v5, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v5, p0, Landroid/app/Notification;->audioStreamType:I

    iput v5, p1, Landroid/app/Notification;->audioStreamType:I

    iget-object v5, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v5, :cond_4

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    iget-object v6, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v5, v6}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_4
    iget-object v4, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_5

    array-length v0, v4

    new-array v3, v0, [J

    iput-object v3, p1, Landroid/app/Notification;->vibrate:[J

    invoke-static {v4, v9, v3, v9, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_5
    iget v5, p0, Landroid/app/Notification;->ledARGB:I

    iput v5, p1, Landroid/app/Notification;->ledARGB:I

    iget v5, p0, Landroid/app/Notification;->ledOnMS:I

    iput v5, p1, Landroid/app/Notification;->ledOnMS:I

    iget v5, p0, Landroid/app/Notification;->ledOffMS:I

    iput v5, p1, Landroid/app/Notification;->ledOffMS:I

    iget v5, p0, Landroid/app/Notification;->defaults:I

    iput v5, p1, Landroid/app/Notification;->defaults:I

    iget v5, p0, Landroid/app/Notification;->flags:I

    iput v5, p1, Landroid/app/Notification;->flags:I

    iget v5, p0, Landroid/app/Notification;->priority:I

    iput v5, p1, Landroid/app/Notification;->priority:I

    iget-object v5, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v5, :cond_6

    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->size()I
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Landroid/util/ArraySet;

    iget-object v6, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v5, p1, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    :cond_7
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v5, v5

    new-array v5, v5, [Landroid/app/Notification$Action;

    iput-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v5, v5

    if-ge v2, v5, :cond_9

    iget-object v5, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v5, v5, v2

    if-eqz v5, :cond_8

    iget-object v5, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v6, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/app/Notification$Action;->clone()Landroid/app/Notification$Action;

    move-result-object v6

    aput-object v6, v5, v2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "could not unparcel extras from notification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v8, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_a

    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_a
    if-eqz p2, :cond_b

    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_b
    iget v5, p0, Landroid/app/Notification;->visibility:I

    iput v5, p1, Landroid/app/Notification;->visibility:I

    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v5, :cond_c

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v5, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v6, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v5, v6, p2}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    :cond_c
    iget v5, p0, Landroid/app/Notification;->color:I

    iput v5, p1, Landroid/app/Notification;->color:I

    iget-object v5, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    iget-wide v6, p0, Landroid/app/Notification;->mTimeout:J

    iput-wide v6, p1, Landroid/app/Notification;->mTimeout:J

    iget-object v5, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    iput-object v5, p1, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    iget v5, p0, Landroid/app/Notification;->mBadgeIcon:I

    iput v5, p1, Landroid/app/Notification;->mBadgeIcon:I

    iget-object v5, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    iput-object v5, p1, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    iget v5, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    iput v5, p1, Landroid/app/Notification;->mGroupAlertBehavior:I

    if-nez p2, :cond_d

    invoke-virtual {p1}, Landroid/app/Notification;->lightenPayload()V

    :cond_d
    iget v5, p0, Landroid/app/Notification;->semMissedCount:I

    iput v5, p1, Landroid/app/Notification;->semMissedCount:I

    iget v5, p0, Landroid/app/Notification;->semFlags:I

    iput v5, p1, Landroid/app/Notification;->semFlags:I

    iget v5, p0, Landroid/app/Notification;->semPriority:I

    iput v5, p1, Landroid/app/Notification;->semPriority:I

    iget-object v5, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    if-eqz v5, :cond_e

    iget-object v5, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p1, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    :cond_e
    iget v5, p0, Landroid/app/Notification;->parcelDataSize:I

    iput v5, p1, Landroid/app/Notification;->parcelDataSize:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBadgeIconType()I
    .locals 1

    iget v0, p0, Landroid/app/Notification;->mBadgeIcon:I

    return v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupAlertBehavior()I
    .locals 1

    iget v0, p0, Landroid/app/Notification;->mGroupAlertBehavior:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getNotificationStyle()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSettingsText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mSettingsText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public getTimeoutAfter()J
    .locals 2

    iget-wide v0, p0, Landroid/app/Notification;->mTimeout:J

    return-wide v0
.end method

.method public hasCompletedProgress()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.progress"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.progressMax"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.progressMax"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.progress"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.progressMax"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public hasMediaSession()Z
    .locals 2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.mediaSession"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isColorized()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Notification;->isColorizedMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.colorized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isColorizedMedia()Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.colorized"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification;->hasMediaSession()Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_1
    const-class v2, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.colorized"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Notification;->hasMediaSession()Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public isGroupChild()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGroupSummary()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMediaNotification()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/app/Notification$MediaStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-class v1, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$-android_app_Notification_85928(Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .locals 2

    iget-object v1, p0, Landroid/app/Notification;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-ne p1, p3, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final lightenPayload()V
    .locals 7

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    iput-object v6, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v6, p0, Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, v3, v1

    const-string/jumbo v6, "android.tv.EXTENSIONS"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v6, v5, Landroid/os/Parcelable;

    if-nez v6, :cond_2

    instance-of v6, v5, [Landroid/os/Parcelable;

    if-nez v6, :cond_2

    instance-of v6, v5, Landroid/util/SparseArray;

    if-nez v6, :cond_2

    instance-of v6, v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    :cond_2
    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public semDisableEdgeLighting()V
    .locals 1

    iget v0, p0, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/app/Notification;->semFlags:I

    return-void
.end method

.method public setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_0

    const-string/jumbo v1, "Notification"

    const-string/jumbo v2, "setLatestEventInfo() is deprecated and you should feel deprecated."

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.showWhen"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_3
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    return-void
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public showsChronometer()Z
    .locals 4

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showsTime()Z
    .locals 4

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public suppressAlertingDueToGrouping()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification;->isGroupChild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notification(channel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " pri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " contentView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v3, " vibrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    const-string/jumbo v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v3, " sound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    const-string/jumbo v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    const-string/jumbo v3, " tick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v3, " defaults=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->defaults:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " color=0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/app/Notification;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string/jumbo v3, " category="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string/jumbo v3, " groupKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string/jumbo v3, " sortKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->mSortKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_4

    const-string/jumbo v3, " actions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v3, " number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->number:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " vis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v3, :cond_5

    const-string/jumbo v3, " publicVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v3, " semFlags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->semFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " semPriority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->semPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " semMissedCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/app/Notification;->semMissedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    if-eqz v3, :cond_6

    const-string/jumbo v3, " semBadgeTarget="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/app/Notification;->semBadgeTarget:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_7
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_9

    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v3, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, -0x1

    if-eq v0, v3, :cond_a

    iget-object v3, p0, Landroid/app/Notification;->vibrate:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_a
    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/-$Lambda$vZ1qb742P9hE4drBY-TrOZB_qKo;

    invoke-direct {v1, p0, p1}, Landroid/app/-$Lambda$vZ1qb742P9hE4drBY-TrOZB_qKo;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/app/Notification;->writeToParcelImpl(Landroid/os/Parcel;I)V

    iget-object v2, p0, Landroid/app/Notification;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v1, "Notification"

    const-string/jumbo v3, "allPendingIntents"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    invoke-static {v4}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    invoke-static {v4}, Landroid/app/PendingIntent;->setOnMarshaledListener(Landroid/app/PendingIntent$OnMarshaledListener;)V

    :cond_3
    throw v1
.end method
