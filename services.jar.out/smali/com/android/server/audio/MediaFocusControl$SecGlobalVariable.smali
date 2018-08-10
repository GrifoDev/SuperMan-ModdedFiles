.class Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecGlobalVariable"
.end annotation


# static fields
.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.server.telecom"


# instance fields
.field private final MULTISOUND_ENABLED:Z

.field private mAudioService:Lcom/android/server/audio/AudioService;

.field private mCallClientId:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDevice:I

.field private mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

.field private mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

.field private mIs2GTDMANetwork:Z

.field private mIsMySpaceEffectFocus:Z

.field private mIsRinging:Z

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

.field private final mMySpaceManager:Landroid/media/MySpaceManager;

.field private mRilState:I

.field private mRingingLock:Ljava/lang/Object;

.field private mSimCount:I

.field private mSplitSoundCb:Landroid/os/IBinder;

.field private mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

.field private mSplitSoundService:Z

.field private mTmgr:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->MULTISOUND_ENABLED:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/AudioService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/media/MySpaceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mMySpaceManager:Landroid/media/MySpaceManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mRilState:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSimCount:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSplitSoundCb:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSplitSoundService:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mTmgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mCallClientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mDevice:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Lcom/android/server/audio/FocusRequester;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIs2GTDMANetwork:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIsMySpaceEffectFocus:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;)[Landroid/telephony/PhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mAudioService:Lcom/android/server/audio/AudioService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mCallClientId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mRilState:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSimCount:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSplitSoundCb:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSplitSoundService:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mTmgr:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mDevice:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;)Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Lcom/android/server/audio/FocusRequester;)Lcom/android/server/audio/FocusRequester;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIs2GTDMANetwork:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIsMySpaceEffectFocus:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIsRinging:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;[Landroid/telephony/PhoneStateListener;)[Landroid/telephony/PhoneStateListener;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIsMySpaceEffectFocus:Z

    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSplitSoundService:Z

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSplitSoundCb:Landroid/os/IBinder;

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mCallClientId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mTmgr:Landroid/telephony/TelephonyManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mRilState:I

    iput v1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mSimCount:I

    new-instance v0, Landroid/media/MySpaceManager;

    invoke-direct {v0}, Landroid/media/MySpaceManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mMySpaceManager:Landroid/media/MySpaceManager;

    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIsRinging:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mRingingLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIs2GTDMANetwork:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MULTI_DEVICE_SOUND"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->MULTISOUND_ENABLED:Z

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl$SecGlobalVariable;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    return-void
.end method
