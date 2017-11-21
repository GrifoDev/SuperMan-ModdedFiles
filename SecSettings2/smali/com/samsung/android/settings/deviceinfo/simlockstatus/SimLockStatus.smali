.class public Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "SimLockStatus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$1;,
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$2;,
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$3;,
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$4;,
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;,
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$6;,
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mChangeUserName1:Landroid/widget/LinearLayout;

.field mChangeUserName1Listener:Landroid/view/View$OnClickListener;

.field private mChangeUserName2:Landroid/widget/LinearLayout;

.field mChangeUserName2Listener:Landroid/view/View$OnClickListener;

.field private mChangeUserName3:Landroid/widget/LinearLayout;

.field mChangeUserName3Listener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNormalTest:Landroid/widget/LinearLayout;

.field mNormalTestListener:Landroid/view/View$OnClickListener;

.field private mRebootDialog:Landroid/app/AlertDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

.field private mSimCode:Ljava/lang/String;

.field private mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

.field private mSimState:Ljava/lang/String;

.field private mTestDialog:Landroid/app/AlertDialog;

.field private mUpdateBtn:Landroid/widget/Button;

.field private mUpdateDialog:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mTestDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimLockPolicyBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->rebootDevice()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->removeDialog(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->startMainSIMLock()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->updateSimStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$1;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$2;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mNormalTestListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$3;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName1Listener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$4;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName2Listener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$5;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName3Listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getSimStateString()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b0506

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ABSENT"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "-"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "READY"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b1a10

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "UNKNOWN"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b1034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isUpdateAvailable()Z
    .locals 6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const-string/jumbo v3, "SimLockStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sim state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v2, :cond_0

    const-string/jumbo v3, "READY"

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method private rebootDevice()V
    .locals 4

    const-string/jumbo v1, "SimLockStatus"

    const-string/jumbo v2, "Device reboot!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$7;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startMainSIMLock()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$SimLockUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    goto :goto_0
.end method

.method private updateSimStatus()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->getSimLockStatus()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->getOperationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    const-string/jumbo v0, "SimLockStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSimStatus() => mSimState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSimCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ABSENT"

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "-"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "sim_state_status"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->getSimStateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "sim_state_code"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSimCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->isUpdateAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SimLockStatus"

    const-string/jumbo v1, "SimCardStatus onClick eng"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SimLockStatus"

    const-string/jumbo v1, "SimCardStatus onClick user"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->startMainSIMLock()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SimLockStatus"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->finish()V

    :cond_0
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->setOnRilJobListener(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector$IOnRilJobListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->connect()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    const v9, 0x7f0b04ff

    const v8, 0x7f0b01cb

    const v6, 0x104000a

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v7

    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0370

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_1
    new-instance v4, Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0b0500

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateDialog:Landroid/app/ProgressDialog;

    return-object v4

    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0501

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$8;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    const v6, 0x7f0b0502

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0337

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0503

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0504

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b0505

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$9;-><init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    invoke-virtual {v2, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRebootDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRebootDialog:Landroid/app/AlertDialog;

    return-object v4

    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f040149

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f11040f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mNormalTest:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mNormalTest:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mNormalTestListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f110410

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName1:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName1:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName1Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f110411

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName2:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName2Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f110412

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName3:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName3:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mChangeUserName3Listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b18f8

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mTestDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mTestDialog:Landroid/app/AlertDialog;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040294

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f11064b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mUpdateBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mSamsungRilConnector:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SamsungRilConnector;->disconnect()V

    :cond_0
    return-void
.end method

.method public onGetBlobFinished(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "SimLockStatus"

    const-string/jumbo v1, "onGetBlobRequestFinished()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const-string/jumbo v0, "SimLockStatus"

    const-string/jumbo v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->finish()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "SimLockStatus"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRebootDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->mRebootDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->rebootDevice()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "SimLockStatus"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->updateSimStatus()V

    return-void
.end method

.method public onSetBlobFinished(Z)V
    .locals 3

    const-string/jumbo v0, "SimLockStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetBlobRequestFinished() => bSucceed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->showDialog(I)V

    goto :goto_0
.end method
