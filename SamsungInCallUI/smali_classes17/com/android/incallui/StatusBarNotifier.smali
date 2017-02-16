.class public Lcom/android/incallui/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;,
        Lcom/android/incallui/StatusBarNotifier$NotificationTimer;
    }
.end annotation


# static fields
.field public static final EXTRA_AS_HEADS_UP:Ljava/lang/String; = "headsup"

.field public static final HEADS_UP_NEVER:I = 0x0

.field private static final IN_CALL_TIMEOUT:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "StatusBarNotifier"

.field public static final NOTIFICATION_INCOMING_CALL:I = 0x2

.field public static final NOTIFICATION_IN_CALL:I = 0x1

.field public static final NOTIFICATION_NONE:I = 0x0

.field public static final REJECT_CALL_NOTIFICATION:I = 0x3

.field private static final SHOW_GREEN_BAR:I = 0x65

.field private static final SHOW_GREEN_BAR_DELAY:I = 0x3e8

.field private static final SHOW_REJECTED_CALL_NOTIFICATION:I = 0x64

.field private static final SHOW_REJECTED_CALL_NOTIFICATION_DELAY:I = 0x3e8

.field private static final SUPPORT_SEC_WFC:Z

.field private static mSvcConn:Landroid/content/ServiceConnection;

.field private static mVolteService:Lcom/sec/ims/volte2/IVolteService;


# instance fields
.field private mBlockToUpdate:Z

.field private mCallId:Ljava/lang/String;

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private final mContext:Landroid/content/Context;

.field private mCurrentNotification:I

.field private mEmergencyNeedToChange:Z

.field private mFgCallState:I

.field private mHandler:Landroid/os/Handler;

.field private mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

.field private mInCallImsEventListener:Lcom/sec/ims/volte2/ImsCallEventListener;

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsE911OverVoLTE:Z

.field private mIsShowingNotification:Z

.field private mIsWFCListenerRegistered:Z

.field private mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private mRegiListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

.field private mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 184
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/StatusBarNotifier;->SUPPORT_SEC_WFC:Z

    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/StatusBarNotifier;->mSvcConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactInfoCache"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v1, Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/StatusBarNotifier$1;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    .line 170
    iput-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 172
    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    .line 173
    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    .line 174
    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mIsWFCListenerRegistered:Z

    .line 176
    iput-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    .line 178
    iput v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 179
    iput v3, p0, Lcom/android/incallui/StatusBarNotifier;->mFgCallState:I

    .line 181
    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    .line 196
    new-instance v1, Lcom/android/incallui/StatusBarNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/StatusBarNotifier$2;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    .line 218
    new-instance v1, Lcom/android/incallui/StatusBarNotifier$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/StatusBarNotifier$3;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mRegiListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 251
    new-instance v1, Lcom/android/incallui/StatusBarNotifier$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/StatusBarNotifier$4;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallImsEventListener:Lcom/sec/ims/volte2/ImsCallEventListener;

    .line 262
    new-instance v1, Lcom/android/incallui/StatusBarNotifier$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/StatusBarNotifier$5;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    .line 282
    new-instance v1, Lcom/android/incallui/StatusBarNotifier$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/StatusBarNotifier$6;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 298
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 299
    iput v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 301
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 302
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 303
    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    .line 306
    const-string v1, "StatusBarNotifier"

    const-string v2, "registerReceiver for ACTION_LOCALE_CHANGED"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "sem_statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 312
    sget-boolean v1, Lcom/android/incallui/StatusBarNotifier;->SUPPORT_SEC_WFC:Z

    if-eqz v1, :cond_0

    .line 313
    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mIsE911OverVoLTE:Z

    .line 314
    new-instance v1, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    .line 315
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerHandlerForWfcRegistrationStateChage(Landroid/os/Handler;)V

    .line 316
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v1}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->registerObserver()V

    .line 317
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    .line 318
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->registerImsRegistrationListener()V

    .line 319
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->registerImsCallStatusListener()V

    .line 321
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/StatusBarNotifier;)Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/StatusBarNotifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->updateNotificationForVoWifi()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/incallui/StatusBarNotifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/incallui/StatusBarNotifier;->mIsE911OverVoLTE:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/StatusBarNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->handleShowGreenBarMessage()V

    return-void
.end method

.method static synthetic access$600()Lcom/sec/ims/volte2/IVolteService;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;
    .locals 0
    .param p0, "x0"    # Lcom/sec/ims/volte2/IVolteService;

    .prologue
    .line 94
    sput-object p0, Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/incallui/StatusBarNotifier;)Lcom/sec/ims/volte2/ImsCallEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallImsEventListener:Lcom/sec/ims/volte2/ImsCallEventListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier;
    .param p1, "x1"    # Lcom/android/incallui/Call;
    .param p2, "x2"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "x3"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method private declared-synchronized buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 33
    .param p1, "originalCall"    # Lcom/android/incallui/Call;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "allowFullScreenIntent"    # Z

    .prologue
    .line 760
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v10, v14, v15}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 761
    .local v5, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/android/incallui/CallList;->getBgCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v6

    .line 762
    .local v6, "bgCall":Lcom/android/incallui/Call;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 932
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 765
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    if-eqz v10, :cond_2

    .line 766
    const-string v10, "StatusBarNotifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mBlockToUpdate : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 760
    .end local v5    # "call":Lcom/android/incallui/Call;
    .end local v6    # "bgCall":Lcom/android/incallui/Call;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 770
    .restart local v5    # "call":Lcom/android/incallui/Call;
    .restart local v6    # "bgCall":Lcom/android/incallui/Call;
    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->isWfcSupported()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v14, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v10, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "common_volte_in"

    .line 771
    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 772
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/incallui/StatusBarNotifier;->mIsWFCListenerRegistered:Z

    if-nez v10, :cond_3

    .line 773
    const-string v10, "StatusBarNotifier"

    const-string v14, "Registering wfc state listener "

    invoke-static {v10, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->registerImsRegistrationListener()V

    .line 777
    :cond_3
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v32

    .line 778
    .local v32, "state":I
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 779
    const/16 v32, 0x4

    .line 781
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->isConferenceCall()Z

    move-result v10

    if-nez v10, :cond_5

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_5
    const/16 v25, 0x1

    .line 782
    .local v25, "isConference":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplay(Lcom/android/incallui/Call;)I

    move-result v23

    .line 783
    .local v23, "iconResId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 784
    .local v27, "largeIcon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v27

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconTextToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/graphics/Bitmap;Z)Ljava/lang/String;

    move-result-object v28

    .line 785
    .local v28, "largeIconText":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/incallui/Call;)I

    move-result v20

    .line 786
    .local v20, "contentResId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;

    move-result-object v7

    .line 787
    .local v7, "contentTitle":Ljava/lang/String;
    const-wide/high16 v8, -0x8000000000000000L

    .line 788
    .local v8, "connectedTime":J
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 790
    .local v11, "showWorkIcon":J
    if-nez v25, :cond_7

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v10, :cond_7

    .line 791
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->showAll()V

    .line 793
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v31

    .line 795
    .local v31, "number":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v10

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v21

    .line 796
    .local v21, "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    if-eqz v21, :cond_7

    .line 797
    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 798
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->name:Ljava/lang/String;

    .line 800
    :cond_6
    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_7

    .line 801
    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v27

    .line 806
    .end local v21    # "coreContact":Lcom/android/incallui/coreapps/CoreAppsContact;
    .end local v31    # "number":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v26

    .line 807
    .local v26, "isGreenBar":Z
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->showGreenBar(ZI)V

    .line 809
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/StatusBarNotifier;->mFgCallState:I

    .line 811
    const-string v10, "support_tphone"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 812
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v10

    if-nez v10, :cond_9

    .line 813
    const-string v10, "StatusBarNotifier"

    const-string v14, "skip buildAndSendNotification when tphone mode"

    invoke-static {v10, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 781
    .end local v7    # "contentTitle":Ljava/lang/String;
    .end local v8    # "connectedTime":J
    .end local v11    # "showWorkIcon":J
    .end local v20    # "contentResId":I
    .end local v23    # "iconResId":I
    .end local v25    # "isConference":Z
    .end local v26    # "isGreenBar":Z
    .end local v27    # "largeIcon":Landroid/graphics/Bitmap;
    .end local v28    # "largeIconText":Ljava/lang/String;
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 819
    .restart local v7    # "contentTitle":Ljava/lang/String;
    .restart local v8    # "connectedTime":J
    .restart local v11    # "showWorkIcon":J
    .restart local v20    # "contentResId":I
    .restart local v23    # "iconResId":I
    .restart local v25    # "isConference":Z
    .restart local v26    # "isGreenBar":Z
    .restart local v27    # "largeIcon":Landroid/graphics/Bitmap;
    .restart local v28    # "largeIconText":Ljava/lang/String;
    :cond_9
    if-eqz p3, :cond_a

    .line 820
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 824
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v24

    .line 827
    .local v24, "inCallPendingIntent":Landroid/app/PendingIntent;
    new-instance v29, Landroid/app/Notification;

    invoke-direct/range {v29 .. v29}, Landroid/app/Notification;-><init>()V

    .line 828
    .local v29, "notification":Landroid/app/Notification;
    move-object/from16 v0, v29

    iget-object v10, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v14, "headsup"

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 829
    move/from16 v0, v23

    move-object/from16 v1, v29

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 830
    move-object/from16 v0, v29

    iget v10, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x2

    move-object/from16 v0, v29

    iput v10, v0, Landroid/app/Notification;->flags:I

    .line 831
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 833
    const/4 v10, 0x3

    move/from16 v0, v32

    if-eq v0, v10, :cond_b

    const/16 v10, 0x8

    move/from16 v0, v32

    if-ne v0, v10, :cond_10

    .line 834
    :cond_b
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v8

    .line 835
    const-string v10, "ctc_call_time_duration"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 836
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v13

    .line 837
    .local v13, "cdmaCall":Lcom/android/incallui/Call;
    if-eqz v13, :cond_c

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v10

    const/4 v14, 0x2

    if-ne v10, v14, :cond_c

    .line 838
    invoke-virtual {v13}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v8

    .line 846
    .end local v13    # "cdmaCall":Lcom/android/incallui/Call;
    :cond_c
    :goto_2
    new-instance v4, Lcom/android/incallui/widget/SecMiniController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v14, 0x7f0400e7

    invoke-direct {v4, v10, v14}, Lcom/android/incallui/widget/SecMiniController;-><init>(Ljava/lang/String;I)V

    .line 849
    .local v4, "secMiniController":Lcom/android/incallui/widget/SecMiniController;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Lcom/android/incallui/widget/SecMiniController;->initInCallQuickPanel(Landroid/content/Context;)V

    .line 850
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    invoke-virtual/range {v4 .. v12}, Lcom/android/incallui/widget/SecMiniController;->updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;JZJ)V

    .line 851
    move-object/from16 v0, v29

    iput-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 853
    const/4 v10, 0x2

    move-object/from16 v0, v29

    iput v10, v0, Landroid/app/Notification;->priority:I

    .line 854
    const/16 v10, 0xa

    move-object/from16 v0, v29

    iput v10, v0, Landroid/app/Notification;->semPriority:I

    move-object/from16 v14, p0

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-wide/from16 v18, v8

    .line 855
    invoke-direct/range {v14 .. v19}, Lcom/android/incallui/StatusBarNotifier;->setContentHiddenNotification(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)Landroid/app/Notification;

    move-result-object v10

    move-object/from16 v0, v29

    iput-object v10, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 858
    const/4 v10, 0x4

    move/from16 v0, v32

    if-eq v0, v10, :cond_d

    const/4 v10, 0x5

    move/from16 v0, v32

    if-ne v0, v10, :cond_11

    .line 859
    :cond_d
    const/16 v30, 0x2

    .line 865
    .local v30, "notificationType":I
    :goto_3
    const/4 v10, 0x2

    move/from16 v0, v30

    if-ne v0, v10, :cond_e

    .line 866
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v10

    if-nez v10, :cond_e

    if-eqz p3, :cond_e

    .line 867
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lcom/android/incallui/StatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V

    .line 871
    :cond_e
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v10, v14, v15}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v5

    .line 872
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 878
    sget-boolean v10, Lcom/android/incallui/StatusBarNotifier;->SUPPORT_SEC_WFC:Z

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    .line 879
    invoke-virtual {v10}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->isRegisteredOverWifi()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 880
    if-eqz v5, :cond_f

    invoke-static {v5}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v10

    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/incallui/StatusBarNotifier;->mIsE911OverVoLTE:Z

    if-nez v10, :cond_f

    .line 881
    const-string v10, "StatusBarNotifier"

    const-string v14, "SecWFC notification helper : set inCall notification minimum"

    invoke-static {v10, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const/4 v10, -0x2

    move-object/from16 v0, v29

    iput v10, v0, Landroid/app/Notification;->priority:I

    .line 883
    move-object/from16 v0, v29

    iget v10, v0, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v10, v10, 0x2

    move-object/from16 v0, v29

    iput v10, v0, Landroid/app/Notification;->semFlags:I

    .line 892
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    if-eqz v10, :cond_12

    .line 893
    const-string v10, "StatusBarNotifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mBlockToUpdate : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 842
    .end local v4    # "secMiniController":Lcom/android/incallui/widget/SecMiniController;
    .end local v30    # "notificationType":I
    :cond_10
    const-wide/16 v8, -0x1

    goto/16 :goto_2

    .line 861
    .restart local v4    # "secMiniController":Lcom/android/incallui/widget/SecMiniController;
    :cond_11
    const/16 v30, 0x1

    .restart local v30    # "notificationType":I
    goto/16 :goto_3

    .line 897
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    invoke-static {v10, v14}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    .line 898
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "check fullScreenIntent: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    iget-object v14, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    invoke-static {v10, v14}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    .line 899
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Displaying notification for "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    invoke-static {v10, v14}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    .line 901
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    move/from16 v0, v30

    if-eq v10, v0, :cond_13

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eqz v10, :cond_13

    .line 902
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Previous notification already showing - cancelling "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x1

    invoke-static {v10, v14}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    .line 903
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {v10, v14}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 905
    const/4 v10, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v14}, Lcom/android/incallui/StatusBarNotifier;->cancelAsUser(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 911
    :cond_13
    :goto_4
    :try_start_4
    const-string v10, "support_twophone"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTwoPhoneRegistered()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 912
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v14, 0x4

    if-eq v10, v14, :cond_14

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v10

    const/4 v14, 0x5

    if-ne v10, v14, :cond_16

    .line 913
    :cond_14
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->notifyAsMultiUser(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 920
    :goto_5
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 925
    :goto_6
    :try_start_5
    const-string v10, "support_tphone"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 926
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v10

    if-nez v10, :cond_15

    .line 927
    const-string v10, "StatusBarNotifier"

    const-string v14, "cancelInCall buildAndSendNotification when tphone mode"

    invoke-static {v10, v14}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 931
    :cond_15
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    goto/16 :goto_0

    .line 906
    :catch_0
    move-exception v22

    .line 907
    .local v22, "e":Ljava/lang/Exception;
    const-string v10, "StatusBarNotifier"

    const-string v14, "Error cancelAsUser Exception"

    move-object/from16 v0, v22

    invoke-static {v10, v14, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 915
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_16
    const/4 v10, 0x0

    :try_start_6
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 921
    :catch_1
    move-exception v22

    .line 922
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v10, "StatusBarNotifier"

    const-string v14, "Error notifyAsUser Exception"

    move-object/from16 v0, v22

    invoke-static {v10, v14, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 918
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_17
    const/4 v10, 0x0

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5
.end method

.method public static clearAllCallNotifications(Landroid/content/Context;)V
    .locals 3
    .param p0, "backupContext"    # Landroid/content/Context;

    .prologue
    .line 1486
    const-class v1, Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Something terrible happened. Clear all InCall notifications"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    const-string v1, "notification"

    .line 1490
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1491
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1492
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1493
    return-void
.end method

.method private configureFullScreenIntent(Landroid/app/Notification;Landroid/app/PendingIntent;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x1

    .line 1179
    const-string v2, "StatusBarNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- Setting fullScreenIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iput-object p2, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1206
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 1207
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1208
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 1210
    .local v0, "isCallWaiting":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1211
    const-string v2, "StatusBarNotifier"

    const-string v3, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1217
    :cond_1
    return-void

    .line 1208
    .end local v0    # "isCallWaiting":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createCallLogPendingIntent()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1452
    const-string v2, "StatusBarNotifier"

    const-string v3, "createCallLogPendingIntent"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1453
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1454
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1456
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 1457
    .local v1, "taskStackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 1458
    invoke-virtual {v1, v5, v5}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private createLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1221
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v2

    .line 1231
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1232
    .local v3, "options":Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1233
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallActivityInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 1235
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v2, v6, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1240
    :goto_0
    return-object v1

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v4, "StatusBarNotifier"

    const-string v5, "createLaunchPendingIntent() - NullPointerException"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createNotificationPendingIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 1466
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1467
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1468
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1469
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createPendingIntentForSReminder(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1473
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1474
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "com.android.incallui.operator.chn.SReminderDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1475
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1476
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    const-string v1, "personId"

    iget-wide v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1478
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getContentString(Lcom/android/incallui/Call;)I
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1153
    const v0, 0x7f090044

    .line 1155
    .local v0, "resId":I
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 1156
    :cond_0
    const v0, 0x7f090040

    .line 1166
    :cond_1
    :goto_0
    return v0

    .line 1157
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 1158
    const v0, 0x7f090043

    goto :goto_0

    .line 1159
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1160
    const v0, 0x7f09003f

    goto :goto_0

    .line 1161
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1163
    const v0, 0x7f090045

    goto :goto_0
.end method

.method private getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;
    .locals 2
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    .line 998
    if-eqz p2, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1006
    :goto_0
    return-object v0

    .line 1001
    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1002
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1003
    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 1006
    :cond_2
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    goto :goto_0
.end method

.method private getIconToDisplay(Lcom/android/incallui/Call;)I
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v2, 0x1

    .line 1091
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    .line 1100
    .local v0, "isShowingInCallUi":Z
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->isWfcSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "common_volte_in"

    .line 1101
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1102
    invoke-virtual {p0}, Lcom/android/incallui/StatusBarNotifier;->isAvailableVoWIFI()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1103
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1104
    const-string v2, "StatusBarNotifier"

    const-string v3, "Registered over Wi-Fi"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const v2, 0x7f02012f

    .line 1146
    :goto_0
    return v2

    .line 1107
    :cond_0
    const-string v3, "StatusBarNotifier"

    const-string v4, "Registered over Wi-Fi but call is normal"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    const/high16 v3, 0x1000000

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 1115
    .local v1, "voicePrivacy":Z
    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 1116
    if-eqz v1, :cond_4

    .line 1117
    const v2, 0x7f0202b1

    goto :goto_0

    .line 1110
    .end local v1    # "voicePrivacy":Z
    :cond_2
    const-string v3, "StatusBarNotifier"

    const-string v4, "Not-Registered over Wi-Fi"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1114
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 1119
    .restart local v1    # "voicePrivacy":Z
    :cond_4
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1129
    :cond_5
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    if-eqz p1, :cond_9

    .line 1130
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1131
    if-eqz v0, :cond_8

    const v2, 0x7f0202aa

    goto :goto_0

    .line 1122
    :cond_6
    if-eqz v0, :cond_7

    const v2, 0x7f0202ac

    goto :goto_0

    :cond_7
    const v2, 0x7f0202ad

    goto :goto_0

    .line 1131
    :cond_8
    const v2, 0x7f0202ab

    goto :goto_0

    .line 1135
    :cond_9
    if-eqz v1, :cond_a

    .line 1136
    const v2, 0x7f0202b0

    goto :goto_0

    .line 1138
    :cond_a
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "feature_ctc"

    .line 1139
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1140
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v3

    if-nez v3, :cond_b

    .line 1141
    const v2, 0x7f0202ae

    goto :goto_0

    .line 1142
    :cond_b
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v3

    if-ne v3, v2, :cond_c

    .line 1143
    const v2, 0x7f0202af

    goto/16 :goto_0

    .line 1146
    :cond_c
    if-eqz v0, :cond_d

    const v2, 0x7f0202a8

    goto/16 :goto_0

    :cond_d
    const v2, 0x7f0202a9

    goto/16 :goto_0
.end method

.method private getKnoxKeyguardShowState()Z
    .locals 2

    .prologue
    .line 1254
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v0

    .line 1256
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1258
    const/4 v1, 0x1

    .line 1261
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLargeIconForRejectedCall(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 1432
    const-string v3, "StatusBarNotifier"

    const-string v4, "getLargeIconForRejectedCall"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1434
    .local v0, "mIcon":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconTextToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/graphics/Bitmap;Z)Ljava/lang/String;

    move-result-object v1

    .line 1435
    .local v1, "mIconText":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1436
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->getImageIconForNotification(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1442
    :goto_0
    return-object v3

    .line 1437
    :cond_0
    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1438
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getTextIconForNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 1440
    :cond_1
    const v2, 0x7f0f0174

    .line 1441
    .local v2, "strokeColor":I
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f0200b3

    invoke-static {v3, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1442
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->getImageIconForNotification(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private getLargeIconTextToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/graphics/Bitmap;Z)Ljava/lang/String;
    .locals 4
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p3, "isConference"    # Z

    .prologue
    .line 1076
    const/4 v0, 0x0

    .line 1078
    .local v0, "largeIconText":Ljava/lang/String;
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1079
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1080
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1083
    :cond_0
    return-object v0
.end method

.method private getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 1013
    const/4 v4, 0x0

    .line 1014
    .local v4, "largeIcon":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-static {v10, v9, v11}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1015
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v8, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    .line 1016
    .local v8, "smartCallInfo":Lcom/android/incallui/smartcall/SmartCallInfo;
    invoke-static {v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v5

    .line 1018
    .local v5, "mSmartCallRegisterState":I
    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/util/ImsCommonUtils;->isIMSConferenceCall()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isMtConfCall(Lcom/android/incallui/Call;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1069
    :cond_0
    :goto_0
    return-object v9

    .line 1020
    :cond_1
    iget-boolean v10, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    if-eqz v10, :cond_5

    .line 1021
    iget-object v9, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1056
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isHideCallerInfo()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1057
    iget-object v9, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0203a7

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1059
    :cond_3
    if-eqz v4, :cond_4

    .line 1060
    iget-object v9, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0367

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    .line 1061
    .local v1, "diameter":I
    invoke-static {v4, v1}, Lcom/android/incallui/util/GraphicResourceUtils;->getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .end local v1    # "diameter":I
    :cond_4
    :goto_2
    move-object v9, v4

    .line 1069
    goto :goto_0

    .line 1023
    :cond_5
    iget-boolean v10, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v10, :cond_6

    iget-object v10, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 1024
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    const/4 v11, 0x0

    .line 1025
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1026
    const/4 v4, 0x0

    goto :goto_1

    .line 1028
    :cond_6
    const-string v10, "support_smart_call"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1029
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1030
    if-eqz v8, :cond_7

    iget-object v10, v8, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    if-eqz v10, :cond_7

    if-gt v5, v12, :cond_7

    .line 1032
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1033
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1034
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v9, 0x0

    iget-object v10, v8, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    .line 1035
    invoke-static {v10, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1036
    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1037
    goto :goto_1

    .end local v2    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_7
    if-eqz v5, :cond_0

    .line 1038
    if-ne v5, v12, :cond_8

    .line 1039
    iget-object v9, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v10, 0x7f020176

    invoke-static {v9, v10}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 1041
    :cond_8
    const/4 v9, 0x2

    if-ne v5, v9, :cond_9

    .line 1042
    iget-object v9, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v10, 0x7f020178

    invoke-static {v9, v10}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_1

    .line 1044
    :cond_9
    const/4 v9, 0x3

    if-ne v5, v9, :cond_2

    .line 1045
    iget-object v9, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v10, 0x7f020177

    invoke-static {v9, v10}, Lcom/android/incallui/util/GraphicResourceUtils;->getBitmapFromSprDrawable(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto/16 :goto_1

    .line 1063
    :catch_0
    move-exception v3

    .line 1064
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "StatusBarNotifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLargeIconToDisplay: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1065
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 1066
    .local v6, "oom":Ljava/lang/OutOfMemoryError;
    const-string v9, "StatusBarNotifier"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getLargeIconToDisplay: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method private handleShowGreenBarMessage()V
    .locals 4

    .prologue
    .line 1335
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1336
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1337
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1338
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1339
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1340
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 1341
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f013d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1340
    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    .line 1345
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-void

    .line 1341
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 1342
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f013c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method private isWfcSupported()Z
    .locals 4

    .prologue
    .line 1528
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1531
    .local v0, "isWifiCallingSupported":Z
    const-string v1, "StatusBarNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEpdgFeatureEnabled epdgFeatured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    return v0
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "always"    # Z

    .prologue
    .line 1295
    const-string v0, "StatusBarNotifier"

    invoke-static {v0, p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1296
    return-void
.end method

.method private registerImsCallStatusListener()V
    .locals 4

    .prologue
    .line 329
    const-string v1, "StatusBarNotifier"

    const-string v2, "registerCallStatusListener()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.VolteService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    new-instance v1, Lcom/android/incallui/StatusBarNotifier$7;

    invoke-direct {v1, p0}, Lcom/android/incallui/StatusBarNotifier$7;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    sput-object v1, Lcom/android/incallui/StatusBarNotifier;->mSvcConn:Landroid/content/ServiceConnection;

    .line 353
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/incallui/StatusBarNotifier;->mSvcConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 354
    return-void
.end method

.method private registerImsRegistrationListener()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mRegiListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 368
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsWFCListenerRegistered:Z

    .line 369
    return-void
.end method

.method private setContentHiddenNotification(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)Landroid/app/Notification;
    .locals 8
    .param p1, "fgCall"    # Lcom/android/incallui/Call;
    .param p2, "bgCall"    # Lcom/android/incallui/Call;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "connectedTime"    # J

    .prologue
    const/4 v7, 0x1

    .line 1267
    new-instance v0, Lcom/android/incallui/widget/SecMiniControllerHidden;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 1268
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0400e8

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/SecMiniControllerHidden;-><init>(Ljava/lang/String;I)V

    .line 1270
    .local v0, "secMiniControllerHidden":Lcom/android/incallui/widget/SecMiniControllerHidden;
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/SecMiniControllerHidden;->initInCallQuickPanel(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1271
    invoke-virtual/range {v0 .. v5}, Lcom/android/incallui/widget/SecMiniControllerHidden;->updateInCallQuickPanel(Lcom/android/incallui/Call;Lcom/android/incallui/Call;Ljava/lang/String;J)V

    .line 1273
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1274
    .local v6, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1275
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1276
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1278
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method private showGreenBar(ZI)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "state"    # I

    .prologue
    const/16 v4, 0x65

    .line 1348
    invoke-static {p2}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/StatusBarNotifier;->mFgCallState:I

    if-ne v0, p2, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v0, :cond_2

    .line 1352
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "sem_statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 1355
    :cond_2
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1356
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1357
    const/4 p1, 0x0

    .line 1359
    :cond_3
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    .line 1361
    :cond_4
    const-string v0, "StatusBarNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGreenBar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1362
    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1363
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1364
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1368
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1369
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1371
    :cond_6
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    goto/16 :goto_0
.end method

.method private showNotification(Lcom/android/incallui/Call;Z)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "allowFullScreenIntent"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 705
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 706
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    :cond_0
    move v0, v2

    .line 708
    .local v0, "isIncoming":Z
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 709
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 711
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    .line 712
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 720
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    if-nez v3, :cond_2

    .line 721
    new-instance v3, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-direct {v3, p0, v1}, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;-><init>(Lcom/android/incallui/StatusBarNotifier;Z)V

    iput-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    .line 724
    :cond_2
    if-eqz p2, :cond_4

    .line 725
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    new-instance v3, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-direct {v3, p0, v2}, Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;-><init>(Lcom/android/incallui/StatusBarNotifier;Z)V

    invoke-virtual {v1, p1, v0, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 729
    :goto_1
    return-void

    .end local v0    # "isIncoming":Z
    :cond_3
    move v0, v1

    .line 706
    goto :goto_0

    .line 727
    .restart local v0    # "isIncoming":Z
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mMakeNotificationCallback:Lcom/android/incallui/StatusBarNotifier$MakeNotificationCallback;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    goto :goto_1
.end method

.method private unregisterImsCallStatusListener()V
    .locals 3

    .prologue
    .line 358
    :try_start_0
    sget-object v1, Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    if-eqz v1, :cond_0

    .line 359
    sget-object v1, Lcom/android/incallui/StatusBarNotifier;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallImsEventListener:Lcom/sec/ims/volte2/ImsCallEventListener;

    invoke-interface {v1, v2}, Lcom/sec/ims/volte2/IVolteService;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterImsRegistrationListener()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsWFCListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIMSManagerWrapper:Lcom/android/incallui/service/ims/IMSManagerWrapper;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mRegiListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsWFCListenerRegistered:Z

    .line 376
    :cond_0
    return-void
.end method

.method private updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 6
    .param p1, "allowFullScreenIntent"    # Z
    .param p2, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 597
    const-string v4, "support_tphone"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 598
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneRelaxMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 600
    :cond_1
    const-string v3, "StatusBarNotifier"

    const-string v4, "do not updateInCallNotification when tphone mode"

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 601
    invoke-virtual {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 663
    :cond_2
    :goto_0
    return-void

    .line 606
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInCallNotification(allowFullScreenIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/incallui/StatusBarNotifier;->log(Ljava/lang/String;Z)V

    .line 609
    const/4 v4, 0x0

    invoke-static {p3, v4, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 616
    .local v0, "call":Lcom/android/incallui/Call;
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v4, :cond_4

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v4, :cond_9

    .line 618
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v4

    if-nez v4, :cond_9

    move v1, v2

    .line 621
    .local v1, "isOutgoingWithoutIncallUi":Z
    :goto_1
    if-eqz v0, :cond_a

    .line 628
    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez p1, :cond_5

    .line 631
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_5
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    .line 643
    invoke-interface {v4}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v4

    sget-object v5, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v4, v5, :cond_a

    .line 645
    .local v2, "showNotificationNow":Z
    :cond_6
    :goto_2
    if-eqz v2, :cond_b

    .line 646
    invoke-direct {p0, v0, p1}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/incallui/Call;Z)V

    .line 660
    :cond_7
    :goto_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v3

    if-nez v3, :cond_8

    if-nez v0, :cond_2

    .line 661
    :cond_8
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->clear()V

    goto :goto_0

    .end local v1    # "isOutgoingWithoutIncallUi":Z
    .end local v2    # "showNotificationNow":Z
    :cond_9
    move v1, v3

    .line 618
    goto :goto_1

    .restart local v1    # "isOutgoingWithoutIncallUi":Z
    :cond_a
    move v2, v3

    .line 643
    goto :goto_2

    .line 647
    .restart local v2    # "showNotificationNow":Z
    :cond_b
    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v3

    if-nez v3, :cond_c

    .line 648
    const-string v3, "StatusBarNotifier"

    const-string v4, "updateInCallNotification: skip"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 650
    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->isLocked()Z

    move-result v3

    if-nez v3, :cond_d

    .line 651
    invoke-virtual {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 653
    :cond_d
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    .line 654
    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v3, v4, :cond_7

    .line 655
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->schedule()V

    goto :goto_3
.end method

.method private updateNotificationForVoWifi()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1573
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->isWfcSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "common_volte_in"

    .line 1574
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1575
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1576
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1577
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1578
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1579
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 1580
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-direct {p0, v0, v1, v5}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 1583
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAsUser(Ljava/lang/String;I)V
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 519
    iget-object v7, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/UserManagerWrapper;

    move-result-object v5

    .line 520
    .local v5, "userManager":Lcom/android/incallui/wrapper/UserManagerWrapper;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 522
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/wrapper/UserInfoWrapper;>;"
    if-eqz v6, :cond_1

    .line 523
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/wrapper/UserInfoWrapper;

    .line 524
    .local v2, "user":Lcom/android/incallui/wrapper/UserInfoWrapper;
    if-eqz v2, :cond_0

    .line 525
    invoke-virtual {v2}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getId()I

    move-result v4

    .line 526
    .local v4, "userId":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 527
    invoke-virtual {v2}, Lcom/android/incallui/wrapper/UserInfoWrapper;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 530
    const-string v8, "StatusBarNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cancel user: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 531
    invoke-virtual {v2}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 532
    .local v3, "userHandle":Landroid/os/UserHandle;
    const-string v8, "android.app.NotificationManager"

    invoke-static {v8}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 533
    .local v1, "paclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "cancelAsUser"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Landroid/os/UserHandle;

    aput-object v11, v9, v10

    invoke-static {v1, v8, v9}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 539
    .local v0, "cancelAsUser":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v3, v9, v10

    invoke-static {v8, v0, v9}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 544
    .end local v0    # "cancelAsUser":Ljava/lang/reflect/Method;
    .end local v1    # "paclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "user":Lcom/android/incallui/wrapper/UserInfoWrapper;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    .end local v4    # "userId":I
    :cond_1
    return-void
.end method

.method public cancelInCall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 492
    const-string v1, "StatusBarNotifier"

    const-string v2, "cancelInCall()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 495
    iput-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    .line 498
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    if-eqz v1, :cond_1

    .line 499
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->cancelAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :cond_1
    :goto_0
    iput v3, p0, Lcom/android/incallui/StatusBarNotifier;->mCurrentNotification:I

    .line 505
    iput-boolean v3, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    .line 506
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->isWfcSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "common_volte_in"

    .line 507
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->unregisterImsRegistrationListener()V

    .line 510
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v1

    if-nez v1, :cond_4

    .line 511
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez v1, :cond_3

    .line 512
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v2, "sem_statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SemStatusBarManager;

    iput-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 514
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f013e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/SemStatusBarManager;->setIndicatorBgColor(I)V

    .line 516
    :cond_4
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StatusBarNotifier"

    const-string v2, "Error cancelAsUser Exception"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public clearRejectCallNotification()V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1377
    return-void
.end method

.method public isAvailableVoWIFI()Z
    .locals 2

    .prologue
    .line 1536
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->isWfcSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "common_volte_in"

    .line 1537
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    const-string v0, "mmtel"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->isServiceRegistered(Ljava/lang/String;Z)Z

    move-result v0

    .line 1540
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceRegistered(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "isCheckVoWifi"    # Z

    .prologue
    .line 1544
    const/4 v0, 0x0

    .line 1545
    .local v0, "isServiceRegistered":Z
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getIMSManagerWrapper()Lcom/android/incallui/service/ims/IMSManagerWrapper;

    move-result-object v2

    const-string v3, "volte"

    invoke-virtual {v2, v3}, Lcom/android/incallui/service/ims/IMSManagerWrapper;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1546
    .local v1, "regi":Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_1

    .line 1547
    if-eqz p2, :cond_3

    .line 1548
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1550
    if-eqz p1, :cond_2

    .line 1551
    invoke-virtual {v1, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    .line 1561
    :cond_0
    :goto_0
    const-string v2, "StatusBarNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isServiceRegistered Services : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1562
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EpdgStatus :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1563
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1561
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_1
    const-string v2, "StatusBarNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isServiceRegistered feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isCheckVoWifi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isServiceRegistered : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    return v0

    .line 1553
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1559
    :cond_3
    invoke-virtual {v1, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public makeNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "allowFullScreenIntent"    # Z

    .prologue
    .line 733
    if-eqz p3, :cond_0

    .line 734
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 749
    :goto_0
    return-void

    .line 736
    :cond_0
    new-instance v1, Lcom/android/incallui/StatusBarNotifier$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier$8;-><init>(Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 744
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :try_start_0
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v1, v3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "ree":Ljava/util/concurrent/RejectedExecutionException;
    const-string v2, "StatusBarNotifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeNotification : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public memoryFullAnswerMemoNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1304
    const-string v5, "StatusBarNotifier"

    const-string v6, "memoryFullAnswerMemoNotification"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    .line 1307
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1309
    .local v3, "notificationMgr":Landroid/app/NotificationManager;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.phone.Answermemo.SHOW_MEMO_LIST"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1311
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1314
    .local v4, "pIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1315
    .local v1, "noti":Landroid/app/Notification$Builder;
    const v5, 0x7f020181

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v7, 0x7f090527

    .line 1317
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1316
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v7, 0x7f090526

    .line 1319
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1318
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1320
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 1322
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 1324
    .local v2, "notification":Landroid/app/Notification;
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1325
    const/16 v5, 0x3eb

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1328
    return-void
.end method

.method public needToShowAsFullScreen(Lcom/android/incallui/CallList;)Z
    .locals 1
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 482
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowAsFullScreen()Z

    move-result v0

    .line 483
    .local v0, "value":Z
    return v0
.end method

.method public notifyAsMultiUser(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 964
    iget-object v7, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/UserManagerWrapper;

    move-result-object v5

    .line 965
    .local v5, "userManager":Lcom/android/incallui/wrapper/UserManagerWrapper;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 967
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/wrapper/UserInfoWrapper;>;"
    if-eqz v6, :cond_1

    .line 968
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/wrapper/UserInfoWrapper;

    .line 969
    .local v2, "user":Lcom/android/incallui/wrapper/UserInfoWrapper;
    if-eqz v2, :cond_0

    .line 970
    invoke-virtual {v2}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getId()I

    move-result v4

    .line 971
    .local v4, "userId":I
    const-string v8, "StatusBarNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notify Multiuser: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 972
    if-nez v4, :cond_0

    .line 973
    invoke-virtual {v2}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 974
    .local v3, "userHandle":Landroid/os/UserHandle;
    const-string v8, "android.app.NotificationManager"

    invoke-static {v8}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 975
    .local v1, "paclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "notifyAsUser"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Landroid/app/Notification;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-class v11, Landroid/os/UserHandle;

    aput-object v11, v9, v10

    invoke-static {v1, v8, v9}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 982
    .local v0, "notifyAsUser":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    invoke-static {v8, v0, v9}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 987
    .end local v0    # "notifyAsUser":Ljava/lang/reflect/Method;
    .end local v1    # "paclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "user":Lcom/android/incallui/wrapper/UserInfoWrapper;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    .end local v4    # "userId":I
    :cond_1
    return-void
.end method

.method public notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "notification"    # Landroid/app/Notification;

    .prologue
    .line 935
    iget-object v7, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/UserManagerWrapper;

    move-result-object v5

    .line 936
    .local v5, "userManager":Lcom/android/incallui/wrapper/UserManagerWrapper;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/incallui/wrapper/UserManagerWrapper;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 938
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/wrapper/UserInfoWrapper;>;"
    if-eqz v6, :cond_1

    .line 939
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/wrapper/UserInfoWrapper;

    .line 940
    .local v2, "user":Lcom/android/incallui/wrapper/UserInfoWrapper;
    if-eqz v2, :cond_0

    .line 941
    invoke-virtual {v2}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getId()I

    move-result v4

    .line 942
    .local v4, "userId":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 943
    invoke-virtual {v2}, Lcom/android/incallui/wrapper/UserInfoWrapper;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 946
    const-string v8, "StatusBarNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notify user: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 947
    invoke-virtual {v2}, Lcom/android/incallui/wrapper/UserInfoWrapper;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 948
    .local v3, "userHandle":Landroid/os/UserHandle;
    const-string v8, "android.app.NotificationManager"

    invoke-static {v8}, Lcom/android/incallui/wrapper/ReflectUtil;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 949
    .local v1, "paclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "notifyAsUser"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Landroid/app/Notification;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-class v11, Landroid/os/UserHandle;

    aput-object v11, v9, v10

    invoke-static {v1, v8, v9}, Lcom/android/incallui/wrapper/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 956
    .local v0, "notifyAsUser":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p3, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    invoke-static {v8, v0, v9}, Lcom/android/incallui/wrapper/ReflectUtil;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 961
    .end local v0    # "notifyAsUser":Ljava/lang/reflect/Method;
    .end local v1    # "paclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "user":Lcom/android/incallui/wrapper/UserInfoWrapper;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    .end local v4    # "userId":I
    :cond_1
    return-void
.end method

.method public notifyRejectCallNotification(Landroid/app/Notification;)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 1427
    const-string v0, "StatusBarNotifier"

    const-string v1, "notifyRejectCallNotification"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1429
    return-void
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1498
    return-void
.end method

.method public onChildNumberChange()V
    .locals 0

    .prologue
    .line 1525
    return-void
.end method

.method public onCoverStateChanged(Z)V
    .locals 0
    .param p1, "isClosed"    # Z

    .prologue
    .line 1283
    return-void
.end method

.method public onHmtStateChanged(Z)V
    .locals 0
    .param p1, "isDocked"    # Z

    .prologue
    .line 1292
    return-void
.end method

.method public onLastForwardedNumberChange()V
    .locals 0

    .prologue
    .line 1520
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 2
    .param p1, "sessionModificationState"    # I

    .prologue
    .line 1508
    if-nez p1, :cond_1

    .line 1509
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1510
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    .line 1515
    :cond_1
    return-void
.end method

.method public onSideSyncCallForwardStateChanged(Z)V
    .locals 2
    .param p1, "isStarted"    # Z

    .prologue
    .line 1287
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    .line 1288
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 395
    const-string v0, "onStateChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 397
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    .line 400
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    .line 401
    return-void
.end method

.method public registerRejectCallNotification(Z)V
    .locals 12
    .param p1, "hasMsg"    # Z

    .prologue
    .line 1380
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 1381
    .local v1, "call":Lcom/android/incallui/Call;
    if-nez v1, :cond_0

    .line 1424
    :goto_0
    return-void

    .line 1383
    :cond_0
    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    .line 1384
    .local v4, "mSavedContactInfo":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz p1, :cond_1

    const-string v8, "support_sassistant"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    .line 1386
    .local v7, "show":Z
    :goto_1
    if-nez v7, :cond_2

    .line 1387
    const-string v8, "StatusBarNotifier"

    const-string v9, "The rejected call notification was hide."

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    .end local v7    # "show":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 1392
    .restart local v7    # "show":Z
    :cond_2
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 1394
    .local v3, "mNumber":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1395
    .local v0, "builder":Landroid/app/Notification$Builder;
    const v8, 0x7f0202a5

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 1396
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0f017d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v10, 0x7f090236

    .line 1397
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 1398
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->createCallLogPendingIntent()Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1399
    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string v9, "com.samsung.android.incallui.ACTION_DELETE_REJECT_NOTIFICATION"

    .line 1400
    invoke-direct {p0, v9, v3}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x0

    .line 1401
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 1402
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1404
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v8

    invoke-direct {p0, v4, v8}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;

    move-result-object v2

    .line 1405
    .local v2, "mMessage":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/incallui/CallList;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v8

    invoke-direct {p0, v4, v8}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1406
    invoke-direct {p0, v1, v4}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconForRejectedCall(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1407
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v10, 0x7f090293

    .line 1408
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.samsung.android.incallui.ACTION_VOICE_CALL"

    .line 1409
    invoke-direct {p0, v10, v3}, Lcom/android/incallui/StatusBarNotifier;->createNotificationPendingIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1407
    invoke-virtual {v0, v8, v9, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1410
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v10, 0x7f090235

    .line 1411
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1412
    invoke-direct {p0, v3, v4}, Lcom/android/incallui/StatusBarNotifier;->createPendingIntentForSReminder(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1410
    invoke-virtual {v0, v8, v9, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1414
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 1416
    .local v6, "notification":Landroid/app/Notification;
    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1417
    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1420
    :cond_3
    const-string v8, "StatusBarNotifier"

    const-string v9, "registerRejectCallNotification"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1422
    .local v5, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/incallui/StatusBarNotifier;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public setBlockToUpdate(Z)V
    .locals 3
    .param p1, "mBlock"    # Z

    .prologue
    .line 990
    const-string v0, "StatusBarNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockToUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iput-boolean p1, p0, Lcom/android/incallui/StatusBarNotifier;->mBlockToUpdate:Z

    .line 992
    return-void
.end method

.method public tearDown()V
    .locals 3

    .prologue
    .line 379
    const-string v0, "StatusBarNotifier"

    const-string v1, "tearDown"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 380
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V

    .line 381
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 384
    :cond_0
    sget-boolean v0, Lcom/android/incallui/StatusBarNotifier;->SUPPORT_SEC_WFC:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    invoke-virtual {v0}, Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;->unregisterObserver()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mWfcRegistrationStateHelper:Lcom/samsung/tmowfc/wfcutils/WfcRegistrationStateHelper;

    .line 387
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->unregisterImsRegistrationListener()V

    .line 388
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->unregisterImsCallStatusListener()V

    .line 390
    :cond_1
    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 3
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v1, 0x0

    .line 573
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    .line 574
    .local v0, "controller":Lcom/android/incallui/bike/BikeModeController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->updateNotificationConsumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    :goto_0
    return v1

    .line 577
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 578
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)Z
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;
    .param p3, "mode"    # Z

    .prologue
    .line 568
    iput-boolean p3, p0, Lcom/android/incallui/StatusBarNotifier;->mEmergencyNeedToChange:Z

    .line 569
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v0

    return v0
.end method

.method public updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 7
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 436
    const-string v1, "support_tphone"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 437
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneRelaxMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    :cond_1
    const-string v1, "StatusBarNotifier"

    const-string v2, "do not updateNotificationAndLaunchIncomingCallUi when tphone mode"

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 478
    :cond_2
    :goto_0
    return v5

    .line 444
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getBikeModeController()Lcom/android/incallui/bike/BikeModeController;

    move-result-object v0

    .line 445
    .local v0, "controller":Lcom/android/incallui/bike/BikeModeController;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/bike/BikeModeController;->updateNotificationAndLaunchIncomingCallUiConsumed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 449
    :cond_4
    const-string v1, "game_no_interruption"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 450
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isGameNoInterruption()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 451
    invoke-static {v6}, Lcom/android/incallui/util/InCallUtils;->setFullScreenMode(Z)V

    .line 452
    invoke-direct {p0, v6, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 453
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/incallui/StatusBarNotifier;->needToShowAsFullScreen(Lcom/android/incallui/CallList;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 456
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->setFullScreenMode(Z)V

    .line 457
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-nez v1, :cond_6

    .line 458
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->lock()V

    .line 459
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->sendMsgCheckUILocked()V

    .line 461
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 462
    invoke-direct {p0, v5, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 464
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v3, "com.android.incallui"

    .line 466
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "IVDT"

    .line 469
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/AppLogging;->getCallTypeString()Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-static {v2, v3, v1, v4}, Lcom/android/incallui/util/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_7
    const-string v1, "IVCT"

    goto :goto_1

    .line 471
    :cond_8
    invoke-static {v6}, Lcom/android/incallui/util/InCallUtils;->setFullScreenMode(Z)V

    .line 472
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isInLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_9

    .line 473
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->boostCPU(Landroid/content/Context;)V

    .line 474
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 476
    :cond_9
    invoke-direct {p0, v6, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto/16 :goto_0
.end method
