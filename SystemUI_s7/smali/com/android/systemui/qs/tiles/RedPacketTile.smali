.class public Lcom/android/systemui/qs/tiles/RedPacketTile;
.super Lcom/android/systemui/qs/QSTile;
.source "RedPacketTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/RedPacketTile$1;,
        Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final HONGBAO_ASSISTANT_ON_ACTION:Ljava/lang/String; = "com.sec.systemui.HONGBAO_ASSISTANT_ON_ACTION"

.field private static final HONGBAO_NOTIFICATION_SERVICE_ACTION:Ljava/lang/String; = "com.samsung.settings.HONGBAO_NOTIFICATION_SERVICE"

.field private static final REDPACKET_ASSISTANT_STATE:Ljava/lang/String; = "hongbao_assistant"

.field private static final REDPACKET_DO_NOT_SHOW:Ljava/lang/String; = "red_packet_do_not_show"

.field private static final REDPACKET_MODE_NOTIFICATION_COUNT:Ljava/lang/String; = "red_packet_notification_count"

.field private static final REDPACKET_MODE_STATE:Ljava/lang/String; = "red_packet_mode"

.field private static final REDPACKET_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.ACTION_HONGBAO_RECEIVED"

.field private static final REDPACKET_SETTINGS:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "RedPacketTile"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;

.field private mDoNotShowSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mListening:Z

.field private mNoMan:Landroid/app/NotificationManager;

.field private mNotificationCountSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mRedPacketEnableAlertDialog:Landroid/app/AlertDialog;

.field private final mRedPacketSettings:Lcom/android/systemui/qs/SystemSetting;

.field private mSummary:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/RedPacketTile;->REDPACKET_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/RedPacketTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/RedPacketTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mDoNotShowSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/RedPacketTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mRedPacketEnableAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/RedPacketTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/RedPacketTile;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/RedPacketTile;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mSummary:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/RedPacketTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->isFunctionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/RedPacketTile;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/RedPacketTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/RedPacketTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->showConfirmCheckboxPopup()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/RedPacketTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->showHongbaoNotification()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.settings.HONGBAO_ASSISTANT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/RedPacketTile;->REDPACKET_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mListening:Z

    new-instance v0, Lcom/android/systemui/qs/tiles/RedPacketTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/RedPacketTile$1;-><init>(Lcom/android/systemui/qs/tiles/RedPacketTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/qs/tiles/RedPacketTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "hongbao_assistant"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/RedPacketTile$2;-><init>(Lcom/android/systemui/qs/tiles/RedPacketTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mRedPacketSettings:Lcom/android/systemui/qs/SystemSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/RedPacketTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "red_packet_do_not_show"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/RedPacketTile$3;-><init>(Lcom/android/systemui/qs/tiles/RedPacketTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mDoNotShowSetting:Lcom/android/systemui/qs/SystemSetting;

    new-instance v0, Lcom/android/systemui/qs/tiles/RedPacketTile$4;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "red_packet_notification_count"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/RedPacketTile$4;-><init>(Lcom/android/systemui/qs/tiles/RedPacketTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mNotificationCountSetting:Lcom/android/systemui/qs/SystemSetting;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mNoMan:Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_HONGBAO_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.systemui.HONGBAO_ASSISTANT_ON_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/RedPacketTile;Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;

    return-void
.end method

.method private getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0660

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isFunctionEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mRedPacketSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private setEnabled(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "RedPacketTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEnabled enable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mRedPacketSettings:Lcom/android/systemui/qs/SystemSetting;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.hongbaoassistant"

    const-string/jumbo v4, "com.samsung.hongbaoassistant.HongbaoNotificationService"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "red_packet_mode"

    if-eqz p1, :cond_2

    :goto_2
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private showConfirmCheckboxPopup()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "RedPacketTile"

    const-string/jumbo v4, "showConfirmCheckboxPopup"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mRedPacketEnableAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mRedPacketEnableAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "RedPacketTile"

    const-string/jumbo v4, "RedPacketEnableAlertDialog isShowing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    const v4, 0x7f04016f

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f130406

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0f0660

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f130407

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/RedPacketTile$5;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/qs/tiles/RedPacketTile$5;-><init>(Lcom/android/systemui/qs/tiles/RedPacketTile;Landroid/widget/CheckBox;)V

    const v5, 0x104062b

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/RedPacketTile$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/RedPacketTile$6;-><init>(Lcom/android/systemui/qs/tiles/RedPacketTile;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/tiles/RedPacketTile$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/tiles/RedPacketTile$7;-><init>(Lcom/android/systemui/qs/tiles/RedPacketTile;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mRedPacketEnableAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mRedPacketEnableAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/RedPacketTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mRedPacketEnableAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showHongbaoNotification()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mNotificationCountSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mNotificationCountSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f020329

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0661

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0f0662

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string/jumbo v3, "com.sec.systemui.HONGBAO_ASSISTANT_ON_ACTION"

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/RedPacketTile;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v3, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/RedPacketTile$RedPacketDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/RedPacketTile;->REDPACKET_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f065f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->isFunctionEnabled()Z

    move-result v0

    const-string/jumbo v2, "RedPacketTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mDoNotShowSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->showConfirmCheckboxPopup()V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/RedPacketTile;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/RedPacketTile;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected handleSecondaryClick()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "RedPacketTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUpdateState value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->isFunctionEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->isFunctionEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    const v0, 0x7f02039a

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f065f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/RedPacketTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setDetailListening(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->setDetailListening(Z)V

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mRedPacketSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
