.class public Lcom/android/incallui/service/SecCallPopupService;
.super Lcom/android/incallui/service/HeadUpNotificationService;
.source "SecCallPopupService.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/service/HeadUpNotificationService;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/CallList$Listener;",
        "Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;",
        "Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;"
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_MUTE_ITEM:Ljava/lang/String; = "com.samsung.accessory.intent.action.ACTION_CHECK_MUTE_ITEM"

.field private static final ACTION_HOME_PRESSED:Ljava/lang/String; = "com.samsung.android.action.START_DOCK_OR_HOME"

.field public static final ACTION_INCALL_FULL_SCREEN:Ljava/lang/String; = "com.android.incalllui.secservice.action.INCALL_FULL_SCREEN"

.field private static final ACTION_STK_TGROUPON_NOTIFY:Ljava/lang/String; = "com.skt.tgroupon.action.REQUEST_CALL_SCREEN"

.field private static final CALLCONTENT_LOADER:I = 0x1

.field protected static final CALL_END_TIME_BLINK_MSG:I = 0x69

.field public static final CATEGORY_ISH_NOTIFICATION:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

.field public static final CATEGORY_VSH_NOTIFICATION:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

.field private static final DCM_APP_URI:Landroid/net/Uri;

.field static final EVENT_ANIMATE_HIDE:I = 0x6b

.field static final EVENT_ANIMATE_HIDE_DELAY:I = 0x190

.field static final EVENT_ANSWER_TIMEOUT:I = 0x6c

.field static final EVENT_ANSWER_TIMEOUT_DELAY:I = 0x1388

.field static final EVENT_CHECK_KEYGUARD:I = 0x67

.field static final EVENT_DISCONNECTED_TIMEOUT:I = 0x65

.field static final EVENT_UPDATE_SMART_CALL_LAYOUT:I = 0x78

.field public static final EXTRA_SHARE_ID:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

.field public static final EXTRA_SHARE_TYPE:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

.field protected static final LOG_TAG:Ljava/lang/String; = "SecCallPopupService"

.field public static final RCS_CSH_ACCEPT:Ljava/lang/String; = "com.sec.rcs.mediatransfer.csh.action.SHARE_ACCEPT"

.field public static final RCS_POPUP_DIALOG:Ljava/lang/String; = "com.samsung.android.incalllui.secservice.action.ACTION_RCS_POP_UP"

.field public static final SHARE_ISH_INCOMING:Ljava/lang/String; = "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

.field public static final SHARE_VSH_INCOMING:Ljava/lang/String; = "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"


# instance fields
.field private cityInformation:Ljava/lang/String;

.field mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field mCursorLoader:Landroid/content/CursorLoader;

.field private mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

.field mHandler:Landroid/os/Handler;

.field private mHideStatusObserver:Landroid/database/ContentObserver;

.field private mIsFinishing:Z

.field private mIsLandScape:Z

.field public mPrevOrientation:I

.field public mPrevState:I

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

.field private mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

.field private mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

.field private mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://"

    const-string v1, "com.nttdocomo.android.phonemotion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "hide_name_status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/service/SecCallPopupService;->DCM_APP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/incallui/service/HeadUpNotificationService;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->cityInformation:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevState:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevOrientation:I

    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    new-instance v0, Lcom/android/incallui/service/SecCallPopupService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupService$1;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/incallui/service/SecCallPopupService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/service/SecCallPopupService$2;-><init>(Lcom/android/incallui/service/SecCallPopupService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mHideStatusObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    new-instance v0, Lcom/android/incallui/service/SecCallPopupService$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupService$7;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/SecCallPopupService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/SecCallPopupService;->handleEventScreenOff(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/service/SecCallPopupService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/service/SecCallPopupService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupService;->getHideStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupWaitingCall;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/service/SecCallPopupService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/incallui/service/SecCallPopupService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    return p1
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getHideStatus()Z
    .locals 10

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/service/SecCallPopupService;->DCM_APP_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    if-ne v0, v8, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTT DOCOMO : getHideStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v8

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v8

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return v0

    :cond_1
    move v0, v9

    goto :goto_0

    :cond_2
    move v0, v9

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    move v0, v9

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NTT DOCOMO : getHideStatus Exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private handleEventScreenOff(Landroid/content/Intent;)V
    .locals 3

    const-string v1, "why"

    sget v2, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_USER:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEventScreenOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/android/incallui/wrapper/WindowManagerPolicyWrapper;->OFF_BECAUSE_OF_PROX_SENSOR:I

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iput-boolean v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    :cond_0
    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevOrientation:I

    const-string v5, "ecid_enable"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/incallui/service/SecCallPopupService$3;

    invoke-direct {v5, p0}, Lcom/android/incallui/service/SecCallPopupService$3;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    iput-object v5, p0, Lcom/android/incallui/service/SecCallPopupService;->mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v5, v0, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupService;->mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

    invoke-static {v0, v3, v5, v6}, Lcom/android/incallui/service/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/service/EcidClient$Listener;)V

    :cond_3
    const-string v3, "feature_dcm"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupService;->getHideStatus()Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v3, :cond_4

    const-string v3, "NTT DOCOMO : registerContentObserver "

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/incallui/service/SecCallPopupService;->DCM_APP_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupService;->mHideStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SecCallPopupService"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "SecCallPopupService"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateCallPlusInfo()V
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v0, "updateCallPlusInfo: "

    invoke-static {p0, v0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v7

    :cond_0
    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/incallui/CallContentContractCrane;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/incallui/CallContentContractCrane;->COMPOSER_DATA:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, v9, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling CursorLoader number : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/android/incallui/CallContentContract;->CALLCONTENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/incallui/CallContentContract;->COMPOSER_DATA:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    goto :goto_0
.end method

.method private updateWakeLockState(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SecCallPopupService"

    const-string v1, "SCREEN_BRIGHT_WAKE_LOCK Acquire"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecCallPopupService"

    const-string v1, "SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method


# virtual methods
.method public animateForHide()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->isHideAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "animateForHide - isHideAnimationRunning"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->animateForHide()V

    goto :goto_0
.end method

.method public answeringMode()V
    .locals 2

    const-string v0, "answeringMode()..."

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->answeringMode()V

    :cond_0
    return-void
.end method

.method checkKeyguardLocked()V
    .locals 2

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isKeyguardLocked"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    :cond_0
    return-void
.end method

.method public clearAmViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->clearAmViews()V

    :cond_0
    return-void
.end method

.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    iget-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0317

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1
.end method

.method public dismissWaitingCallPopup()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->dismissWaitingCallPopup()V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/service/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/service/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNameForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/service/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mCallerNumberForTalkBack:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/service/SecCallPopupService;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method endCallClicked()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const-string v1, "popup service : endCallClicked()"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAnswerMemoRecorderManager()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->getAnswerMemoRecorderManager()Lcom/android/incallui/operator/dcm/AnswerMemoRecorderManager;

    move-result-object v0

    return-object v0
.end method

.method protected launchFullScreen()V
    .locals 1

    const-string v0, "launchFullScreen"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->popupIncomingCall_MaximizeToFullScreen()V

    new-instance v0, Lcom/android/incallui/service/SecCallPopupService$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/service/SecCallPopupService$6;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupService;->animateForHideNotStopSelf(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method messageClicked()V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x10000000

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/service/SecCallPopupUtils;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const-string v6, ""

    invoke-static {v5, v6, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/incallui/util/InCallUtils;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "support_twophone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*77"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v2}, Lcom/android/incallui/service/ui/JanskyPopupUI;->getLineMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "sms"

    invoke-static {v5, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1, v2}, Lcom/android/incallui/service/ui/JanskyPopupUI;->putJanskyExtra(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.android.app.popupuireceiver"

    const-string v5, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "app_package_name"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getMessagePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAnswerWithWaitingCheck()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SecCallPopupService"

    const-string v2, "onAnswerWithWaitingCheck : Answering machine mIsPopupShowing = true"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsPopupShowing:Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnswerWithWaitingCheck "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/incallui/service/SecCallPopupService$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/service/SecCallPopupService$5;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->animateForHideNotStopSelf(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 0

    return-void
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v2, 0x4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChange() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "call is null"

    invoke-direct {p0, v0}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    :cond_3
    const-string v0, "SecCallPopupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v2, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/SecCallPopupContainer;->updateRejectMsgContent(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    goto :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 0

    return-void
.end method

.method public onChildNumberChange()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->getWaitingDialg()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "onConfigurationChanged - waitingCallDialog showing... return"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_2
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_4

    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevOrientation:I

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1, p1}, Lcom/android/incallui/service/SecCallPopupContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/android/incallui/service/HeadUpNotificationService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_4
    iput-boolean v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsLandScape:Z

    goto :goto_1
.end method

.method public onCoverStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "onCreate "

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->onCreate()V

    iput-object p0, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    const v3, 0x7f0b001b

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/wrapper/TypefaceWrapper;->setAppTypeface(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupWaitingCall;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    new-instance v2, Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;-><init>(Lcom/android/incallui/service/SecCallPopupService;)V

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/InCallPresenter;->setCallPopupService(Lcom/android/incallui/service/SecCallPopupService;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/incallui/InCallPresenter;->forceCancelNotification(Z)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->addListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    invoke-virtual {v2}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->collapsePanels()V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "support_tgroupon"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.skt.tgroupon.action.REQUEST_CALL_SCREEN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.ish.notification.SHARE_INCOMING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.csh.action.SHARE_ACCEPT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_2
    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    const-string v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/smartcall/SmartCallController;->addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupService;->init()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_6

    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/incallui/service/SecCallPopupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/16 v2, 0xa

    const-string v3, "SecCallPopupService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "onCreate : InCallActivity isActivityStarted "

    invoke-direct {p0, v2, v4}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v2, :cond_7

    iput-boolean v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    :cond_7
    const-string v2, "mini"

    invoke-static {v2}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastToTGroupOn(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateCustomView(Landroid/view/ViewGroup;)V
    .locals 5

    const-string v3, "onCreateCustomView"

    invoke-direct {p0, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a0

    invoke-virtual {v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/service/SecCallPopupContainer;

    iput-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v3, p0}, Lcom/android/incallui/service/SecCallPopupContainer;->setSecCallPopupService(Lcom/android/incallui/service/SecCallPopupService;)V

    const-string v3, "roaming_enhancement"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, v4}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showCallRoamingGuardDialog(Landroid/content/Context;Lcom/android/incallui/Call;Z)V

    :cond_0
    return-void
.end method

.method protected onCustomCreate()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-super {p0, v1}, Lcom/android/incallui/service/HeadUpNotificationService;->onFocus(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "onDestroy "

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->knoxCustomStopAutoAnswerTimer()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v4, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    if-eqz v1, :cond_1

    const-string v1, "requestStatusBarOpen"

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    invoke-virtual {v1}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->requestStatusBarOpen()V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/InCallPresenter;->setCallPopupService(Lcom/android/incallui/service/SecCallPopupService;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/incallui/InCallPresenter;->setBlockToUpdateNotification(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->removeListener(Lcom/android/incallui/coreapps/CoreAppsContactManager$UpdateCoreAppsContactListener;)V

    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/smartcall/SmartCallController;->removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-object v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->stopGradientAnimation()V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->clearViews()V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->dismissWaitingCallPopup()V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "SecCallPopupService"

    const-string v2, "SCREEN_BRIGHT_WAKE_LOCK Release"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v1, v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->clear(Lcom/android/incallui/Call;)V

    :cond_6
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "onDestroy : isCoverClosed InCallActivity start"

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v1, :cond_7

    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    :cond_7
    const-string v1, "ims_callplus"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ims_crane"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/CursorLoader;->cancelLoad()Z

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v1}, Landroid/content/CursorLoader;->stopLoading()V

    :cond_9
    const-string v1, "smart_auto_answering"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy :  isSmartAnswered - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_a
    const-string v1, "hide"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->sendBroadcastToTGroupOn(Ljava/lang/String;)V

    const-string v1, "feature_dcm"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mHideStatusObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_b

    const-string v1, "NTT DOCOMO : unregisterContentObserver "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mHideStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_b
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->onDestroy()V

    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetailsChanged... call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v0, p1, v1, p0}, Lcom/android/incallui/util/SecCallerInfoUtils;->refreshContactInfoCache(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/util/SecCallerInfoUtils$NumberChangedListener;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getJanskyPopupUI()Lcom/android/incallui/service/ui/JanskyPopupUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/ui/JanskyPopupUI;->updateJanskyinfo()V

    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    if-lez v0, :cond_0

    sget v0, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    sget v0, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    sput v0, Lcom/android/incallui/service/SecCallPopupUtils;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/service/SecCallPopupUtils;->onAnswer(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mAnswerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/service/SecCallPopupService;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onLastForwardedNumberChange()V
    .locals 0

    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling onLoadComplete data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished CALLCONTENT_LOADER :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallPlusPopupUI()Lcom/android/incallui/service/ui/CallPlusPopupUI;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/incallui/service/ui/CallPlusPopupUI;->updateView(Landroid/database/Cursor;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/service/SecCallPopupService;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 0

    return-void
.end method

.method public onNumberChanged(Lcom/android/incallui/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNumberChanged... call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/service/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 0

    return-void
.end method

.method protected onShowPopup()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/incallui/service/SecCallPopupService;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->forceCancelNotification(Z)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->startGradientAnimation()V

    :cond_0
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSmartImageQueryComplete()V
    .locals 2

    const-string v0, "onSmartImageQueryComplete - popup!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSmartInfoQueryComplete()V
    .locals 2

    const-string v0, "onSmartInfoQueryComplete - popup!"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSmartInfoQueryStart()V
    .locals 0

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 10

    const/16 v7, 0x65

    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    invoke-static {p3, v3, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "call is null"

    invoke-direct {p0, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->animateForHide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v3, :cond_4

    iget-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    if-nez v3, :cond_3

    iput-boolean v4, p0, Lcom/android/incallui/service/SecCallPopupService;->mIsFinishing:Z

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6c

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    :cond_3
    const-string v3, "SecCallPopupService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->checkAndStartAnswerMemo()V

    :cond_5
    iput-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrimaryCall:Lcom/android/incallui/Call;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v3, :cond_15

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mCanSlideOut:Z

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v9, :cond_16

    move v2, v4

    :goto_2
    if-nez v2, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange - isDisconnected : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v8, :cond_17

    move v3, v4

    :goto_3
    invoke-static {v6, v0, v3}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/SecCallPopupService;->startContactInfoSearch(Lcom/android/incallui/Call;)V

    const-string v3, "ecid_enable"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v7, p0, Lcom/android/incallui/service/SecCallPopupService;->mEcidListener:Lcom/android/incallui/service/EcidClient$Listener;

    invoke-static {v0, v3, v6, v7}, Lcom/android/incallui/service/EcidClient;->startEcidLookupQuery(Lcom/android/incallui/Call;Landroid/content/Context;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/service/EcidClient$Listener;)V

    :cond_7
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v6, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v3, v0, v6}, Lcom/android/incallui/service/SecCallPopupContainer;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_8
    const-string v3, "ims_callplus"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "ims_crane"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    invoke-direct {p0}, Lcom/android/incallui/service/SecCallPopupService;->updateCallPlusInfo()V

    :cond_a
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->isAutoAnswered()Z

    move-result v1

    :cond_b
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_c

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_c

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupWaitingCall:Lcom/android/incallui/service/SecCallPopupWaitingCall;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->dismissWaitingCallPopup()V

    :cond_c
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_d

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_d

    if-eqz v1, :cond_0

    :cond_d
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v3, p2}, Lcom/android/incallui/service/SecCallPopupContainer;->updateCallButtons(Lcom/android/incallui/InCallPresenter$InCallState;)V

    :cond_e
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v3, p1, p2, p3, v0}, Lcom/android/incallui/service/SecCallPopupContainer;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V

    :cond_f
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/incallui/service/SecCallPopupService;->updateWakeLockState(I)V

    iget v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevState:I

    const/4 v6, 0x6

    if-eq v3, v6, :cond_10

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x6

    if-ne v3, v6, :cond_10

    invoke-static {v4}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0903d6

    invoke-static {v6}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getNetworkType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevState:I

    if-eq v3, v8, :cond_11

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v8, :cond_11

    invoke-static {v4}, Lcom/android/incallui/util/SALogging;->getScreenId(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f09039c

    invoke-static {v6}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/util/SALogging;->getNetworkType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-eq v3, v8, :cond_12

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_13

    :cond_12
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_13
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mPrevState:I

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v9, :cond_14

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->disconnected()V

    :cond_14
    const-string v3, "smart_auto_answering"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStateChange :  isSmartAnswered - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v9, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v5}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    goto/16 :goto_0

    :cond_15
    move v3, v5

    goto/16 :goto_1

    :cond_16
    move v2, v5

    goto/16 :goto_2

    :cond_17
    move v3, v5

    goto/16 :goto_3
.end method

.method public onSupportedAudioMode(I)V
    .locals 0

    return-void
.end method

.method public onUpdateCoreAppsContact()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "call is null"

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v1, v0, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method rejectCallClicked()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v2, "popup service : rejectCallClicked()"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6b

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/service/EcidClient;->clearAllCalls()V

    :cond_2
    return-void
.end method

.method protected removeHeadUpNotification()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->removeHeadUpNotification()V

    return-void
.end method

.method public setAMView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->setAMView(Z)V

    :cond_0
    return-void
.end method

.method showInCallUI()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ims_rcs"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.incalllui.secservice.action.INCALL_FULL_SCREEN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    if-eqz v2, :cond_3

    const-string v3, "fromPopup"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v3, v2}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->setElapsedAMTimetoIntent(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v3}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->resetAutoAnsTimer()V

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "startActivity with Bundle"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallActivityInfo()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/service/SecCallPopupService;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const-string v3, "SecCallPopupService"

    const-string v4, "showInCallUI"

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/service/SecCallPopupService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method startContactInfoSearch(Lcom/android/incallui/Call;)V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    new-instance v2, Lcom/android/incallui/service/SecCallPopupService$4;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/service/SecCallPopupService$4;-><init>(Lcom/android/incallui/service/SecCallPopupService;Lcom/android/incallui/Call;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->startRecord()V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupAnswerMemo:Lcom/android/incallui/service/SecCallPopupAnswerMemo;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupAnswerMemo;->stopRecord()V

    :cond_0
    return-void
.end method

.method toggleMute(Z)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup service : toggleMute() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleMute() sendMuteButtonStatus()..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.intent.action.ACTION_CHECK_MUTE_ITEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "BUTTON_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public toggleRejectMsgContent()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->isShowingRejectMsgContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->toggleRejectMsgContent()V

    :cond_0
    return-void
.end method

.method toggleSpeaker(Z)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFolerClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0901f9

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popup service : toggleSpeaker() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/service/SecCallPopupService;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1
.end method

.method public updateAnswerMemoRecordTime()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService;->mSecCallPopupContainer:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->updateAnswerMemoRecordTime()V

    :cond_0
    return-void
.end method

.method videoCallClicked()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupUtils;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "videocall"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "twophone"

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/android/incallui/service/ui/JanskyPopupUI;->putJanskyExtra(Landroid/os/Bundle;)V

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    const-string v3, "onephone"

    goto :goto_0
.end method

.method voiceCallClicked()V
    .locals 5

    const/16 v4, 0x65

    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/service/SecCallPopupUtils;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/SecCallPopupService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "support_twophone"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v4, "TwoPhoneDialOption"

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isActiveTwoPhone()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "twophone"

    :goto_0
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lcom/android/incallui/service/ui/JanskyPopupUI;->putJanskyExtra(Landroid/os/Bundle;)V

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    :cond_2
    return-void

    :cond_3
    const-string v3, "onephone"

    goto :goto_0
.end method
