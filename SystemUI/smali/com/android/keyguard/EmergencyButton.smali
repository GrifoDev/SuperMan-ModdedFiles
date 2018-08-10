.class public Lcom/android/keyguard/EmergencyButton;
.super Lcom/android/systemui/widget/SystemUIButton;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/EmergencyButton$1;,
        Lcom/android/keyguard/EmergencyButton$2;,
        Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;,
        Lcom/android/keyguard/EmergencyButton$Samsung321Task;
    }
.end annotation


# static fields
.field private static final INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

.field private static final INTENT_EMERGENCY_LIST:Landroid/content/Intent;


# instance fields
.field private mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mDownX:I

.field private mDownY:I

.field private final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field private mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

.field private final mEnableEmergencyCallWhileSimLocked:Z

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsSamsung321Enable:Z

.field private final mIsVoiceCapable:Z

.field private mKeyguardShowing:Z

.field mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressWasDragged:Z

.field private mPasswordEntry:Landroid/view/View;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mSubId:I


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/util/EmergencyAffordanceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/EmergencyButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/EmergencyButton;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/EmergencyButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButton;->mIsSamsung321Enable:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/EmergencyButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButton;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/EmergencyButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/EmergencyButton;->mSubId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/EmergencyButton;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isSamsung321Enabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/EmergencyButton;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->launchPhFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, 0x14800000

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.phone.EmergencyDialer.LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_LIST:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/keyguard/EmergencyButton;->mIsSamsung321Enable:Z

    iput-boolean v1, p0, Lcom/android/keyguard/EmergencyButton;->mKeyguardShowing:Z

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    new-instance v0, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/-$Lambda$YMa4wlUozCRdSwCjLdlGKZYjxxY;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$Lambda$YMa4wlUozCRdSwCjLdlGKZYjxxY;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v0, v1, [Landroid/net/Uri;

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    sget-object v0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    new-instance v0, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {v0, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    return-void
.end method

.method private callToEmergencyLine(Ljava/lang/String;)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x14800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string/jumbo v2, "EmergencyButton"

    const-string/jumbo v3, "callToEmergencyLine"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find the component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEmergencyNumber()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    instance-of v2, v2, Lcom/android/keyguard/PasswordTextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/PasswordTextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    sget-object v0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isButtonDisableBySimState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private isInCall()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method private isSamsung321Enabled()Z
    .locals 11

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-string/jumbo v0, "content://com.srph.emergency321.settings/settings/1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_ID"

    aput-object v4, v2, v10

    const-string/jumbo v4, "isEnabled"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_0
    const-string/jumbo v0, "isEnabled"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    :cond_0
    const-string/jumbo v0, "EmergencyButton"

    const-string/jumbo v2, "Samsung321 - Query successful"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    move v0, v9

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    move v0, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    return v10
.end method

.method private isVisibleKorEmergencyCallButton()Z
    .locals 22

    const-string/jumbo v10, "ril.simtype"

    const-string/jumbo v5, "Idle"

    const-string/jumbo v4, "CS"

    const-string/jumbo v6, "PS"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/16 v9, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    const-string/jumbo v19, "EmergencyButton"

    const-string/jumbo v20, "SIM_STATE_ABSENT"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    return v19

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    const-string/jumbo v19, "EmergencyButton"

    const-string/jumbo v20, "SIM_STATE_UNKNOWN"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v19

    if-nez v19, :cond_8

    const/16 v19, 0x1

    return v19

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    const-string/jumbo v19, "EmergencyButton"

    const-string/jumbo v20, "SIM_STATE_PERM_DISABLED"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    return v19

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3

    sget-boolean v19, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SKT_USIM_TEXT:Z

    if-eqz v19, :cond_3

    const-string/jumbo v19, "ril.simtype"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_3

    const-string/jumbo v19, "ril.simtype"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x13

    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    return v19

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v19, 0x1

    return v19

    :cond_4
    const/4 v13, 0x0

    sget-object v19, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/EmergencyButton;->mSubId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_7

    const-string/jumbo v19, "ril.skt.network_regist"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    const-string/jumbo v19, "Idle"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    const-string/jumbo v19, ";"

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v19, v18, v19

    const-string/jumbo v20, "CS"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/16 v19, 0x3

    aget-object v19, v18, v19

    const-string/jumbo v20, "PS"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v19, 0x1

    aget-object v19, v12, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v19, 0x1

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sget-object v19, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/EmergencyButton;->mSubId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/ServiceState;

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v19

    if-nez v19, :cond_5

    if-eqz v16, :cond_6

    if-eqz v17, :cond_6

    :cond_5
    const-string/jumbo v19, "EmergencyButton"

    const-string/jumbo v20, "LIMITED SERVICE"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    :cond_6
    :goto_0
    if-eqz v13, :cond_8

    const/16 v19, 0x1

    return v19

    :cond_7
    const-string/jumbo v19, "EmergencyButton"

    const-string/jumbo v20, "Can\'t find service states"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    const-string/jumbo v19, "EmergencyButton"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Can\'t match sim state, simState : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/EmergencyButton;->mCurrentSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19
.end method

.method private launchEmergencyCall()V
    .locals 5

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_MOVE_TO_EMERGENCY_CALL_LIST:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_LIST:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/EmergencyButton;->INTENT_EMERGENCY_DIAL:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private launchPhFeature()Z
    .locals 5

    :try_start_0
    iget-boolean v2, p0, Lcom/android/keyguard/EmergencyButton;->mIsSamsung321Enable:Z

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.srph.emergency321.START"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "EmergencyButton"

    const-string/jumbo v3, "PH Feature, Launching Samsung Emergency 321"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string/jumbo v2, "EmergencyButton"

    const-string/jumbo v3, "PH Feature, Samsung Emergency 321 not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x0

    return v2

    :cond_1
    const-string/jumbo v2, "EmergencyButton"

    const-string/jumbo v3, "PH Feature, Samsung Emergency 321 not enabled in settings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "EmergencyButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PH Feature, Cannot launch activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resumeCall()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    return-void
.end method

.method private updateEmergencyCallButton()V
    .locals 4

    iget-boolean v3, p0, Lcom/android/keyguard/EmergencyButton;->mKeyguardShowing:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOutOfService()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isAirplaneModeOn()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_8

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_7

    const v1, 0x10404ce

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/EmergencyButton;->setText(I)V

    :goto_2
    return-void

    :cond_2
    sget-boolean v3, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_HIDE_EMC_BUTTON_BY_SIMSTATE:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isButtonDisableBySimState()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/android/keyguard/EmergencyButton;->mIsVoiceCapable:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    sget-boolean v3, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_EMERGENCY_CALL_BUTTON:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isVisibleKorEmergencyCallButton()Z

    move-result v2

    goto :goto_0

    :cond_7
    const v1, 0x7f120578

    goto :goto_1

    :cond_8
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/keyguard/EmergencyButton;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method synthetic lambda$-com_android_keyguard_EmergencyButton_5503(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIButton;->onAttachedToWindow()V

    sget-object v0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_EMERGENCY_CALL_BUTTON:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/keyguard/EmergencyButton;->mDensityDpi:I

    iget v4, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701ec

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v5, v1, v5}, Lcom/android/keyguard/EmergencyButton;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/EmergencyButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIButton;->onDetachedFromWindow()V

    sget-object v0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_KOR_EMERGENCY_CALL_BUTTON:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIButton;->onFinishInflate()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v1, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/keyguard/EmergencyButton$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$3;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/keyguard/EmergencyButton$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$4;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    new-instance v0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/EmergencyButton$Samsung321Task;-><init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/keyguard/EmergencyButton$Samsung321Task;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v0, Lcom/android/keyguard/EmergencyButton$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$5;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_1

    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    iput v3, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    iput-boolean v6, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :cond_1
    iget v5, p0, Lcom/android/keyguard/EmergencyButton;->mDownX:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v5, p0, Lcom/android/keyguard/EmergencyButton;->mDownY:I

    sub-int v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sget-object v5, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v0, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v0, :cond_0

    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/keyguard/EmergencyButton;->mLongPressWasDragged:Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUIButton;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    return-void
.end method

.method public setPasswordEntryView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton;->mPasswordEntry:Landroid/view/View;

    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 7

    const/4 v6, 0x1

    sget-object v2, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->resumeCall()V

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;

    invoke-interface {v2}, Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "EmergencyButton"

    const-string/jumbo v3, "Failed to stop app pinning"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    sget-boolean v2, Lcom/android/systemui/Rune;->COMMON_SUPPORT_DIRECT_CALL_TO_ECC:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->getEmergencyNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/android/keyguard/EmergencyButton;->callToEmergencyLine(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->launchEmergencyCall()V

    const-string/jumbo v2, "102"

    const-string/jumbo v3, "1031"

    invoke-static {v2, v3}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
