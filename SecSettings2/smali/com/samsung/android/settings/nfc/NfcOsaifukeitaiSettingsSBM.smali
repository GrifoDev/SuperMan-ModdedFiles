.class public Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;
.super Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;
.source "NfcOsaifukeitaiSettingsSBM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;,
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;
    }
.end annotation


# static fields
.field private static isNfcTypeBF:Z


# instance fields
.field private mABeam:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mNfcRemotelock:Landroid/preference/PreferenceScreen;

.field private mNfclock:Landroid/preference/PreferenceScreen;

.field private mRWp2p:Landroid/preference/PreferenceScreen;

.field private mRetry_counter:I

.field private mfilter:Landroid/content/IntentFilter;

.field nfcBroadcast:Landroid/content/BroadcastReceiver;

.field private uimDetectAction:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->uimDetectAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->list_items_update(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->isNfcTypeBF:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->uimDetectAction:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;-><init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->uimDetectAction:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method private List_items_update_of_ABeam(II)V
    .locals 13

    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v3, "[S] List_items_update_of_ABeam"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isNFCStateChangeAllowed"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string/jumbo v0, "isNFCStateChangeAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    if-gt v12, p1, :cond_5

    const/16 v0, 0xf

    if-gt p1, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const v10, 0x7f0b19cb

    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_4
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v2, "[E] List_items_update_of_ABeam"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v6

    :try_start_1
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getABeamStatus()Z

    move-result v0

    if-eqz v0, :cond_6

    const v10, 0x7f0b19ca

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v9

    const/16 v0, 0xd

    if-ne v9, v0, :cond_9

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->isNfcTypeBF:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v2, "[*] List_items_update_of_ABeam : ABeam Grayed out"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    const v10, 0x7f0b19cb

    goto :goto_2

    :cond_7
    if-eqz v8, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_9
    const/16 v0, 0xb

    if-ne v9, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private List_items_update_of_TapAndPay(II)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v1, "[S] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gt v2, p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v1, "[E] List_items_update_of_TapAndPay"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private List_items_update_of_nfclock(II)V
    .locals 8

    const/16 v7, 0x81

    const/16 v6, 0x10

    const/16 v5, 0xf

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v2, "[S] List_items_update_of_nfclock "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x100

    if-ne p1, v1, :cond_2

    const/16 v1, 0x100

    if-ne p2, v1, :cond_2

    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v2, "[*] List_items_update_of_nfclock   :   Get CLF Status and UIM Status  is Error"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b1b7f

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_1
    const-string/jumbo v1, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v2, "[E] List_items_update_of_nfclock"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-gt v4, p2, :cond_4

    const/4 v1, 0x3

    if-gt p2, v1, :cond_4

    if-gt v4, p1, :cond_3

    if-gt p1, v5, :cond_3

    const v0, 0x7f0b1b8f

    goto :goto_0

    :cond_3
    const v0, 0x7f0b1b91

    goto :goto_0

    :cond_4
    if-gt v4, p1, :cond_5

    if-gt p1, v5, :cond_5

    const v0, 0x7f0b1b90

    goto :goto_0

    :cond_5
    if-ne p1, v3, :cond_9

    if-ne p2, v3, :cond_6

    const v0, 0x7f0b1b7c

    goto :goto_0

    :cond_6
    if-ne p2, v7, :cond_7

    const v0, 0x7f0b1ba5

    goto :goto_0

    :cond_7
    if-ne p2, v6, :cond_8

    const v0, 0x7f0b1ba6

    goto :goto_0

    :cond_8
    const v0, 0x7f0b1b7d

    goto :goto_0

    :cond_9
    if-ne p2, v3, :cond_a

    const v0, 0x7f0b1b7e

    goto :goto_0

    :cond_a
    if-ne p2, v7, :cond_b

    const v0, 0x7f0b1ba7

    goto :goto_0

    :cond_b
    if-ne p2, v6, :cond_c

    const v0, 0x7f0b1ba8

    goto :goto_0

    :cond_c
    const v0, 0x7f0b1b7f

    goto :goto_0
.end method

.method private List_items_update_of_nfrwp2p(II)V
    .locals 12

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v2, "[S] List_items_update_of_nfrwp2p"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isNFCEnabled"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string/jumbo v0, "isNFCEnabled"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isNFCStateChangeAllowed"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_1
    const-string/jumbo v0, "isNFCStateChangeAllowed"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    const/4 v0, 0x1

    if-gt v0, p1, :cond_7

    const/16 v0, 0xf

    if-gt p1, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const v11, 0x7f0b19cb

    :cond_5
    :goto_2
    if-eqz v11, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_6
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v2, "[E] List_items_update_of_nfrwp2p"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_1
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    if-nez v8, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v10

    const/16 v0, 0xb

    if-ne v10, v0, :cond_8

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f0b19cb

    goto :goto_2

    :cond_8
    const/16 v0, 0xd

    if-ne v10, v0, :cond_5

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f0b19ca

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getRWP2pStatus()I

    move-result v10

    const/16 v0, 0xd

    if-ne v10, v0, :cond_a

    const v11, 0x7f0b19ca

    goto :goto_2

    :cond_a
    const/16 v0, 0xb

    if-ne v10, v0, :cond_b

    const v11, 0x7f0b19cb

    goto :goto_2

    :cond_b
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v2, "[*] List_items_update_of_nfrwp2p not changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private list_items_update(II)V
    .locals 3

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v1, "[S] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[*] list_items_update  :  clfLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , uimLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->List_items_update_of_nfclock(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->List_items_update_of_nfrwp2p(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->List_items_update_of_ABeam(II)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->List_items_update_of_TapAndPay(II)V

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v1, "[E] list_items_update"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v1, "[S] onCreateSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNfclock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRWp2p = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRWp2p:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mABeam = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mABeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNfcPaymentSettings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNfcRemotelock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mRetry_counter:I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfclock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->uimDetectAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v1, "get UIMLock status T.O. timer start "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.felica.action.LOCKSTATUS_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.action.nfc.policychanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v1, "[E] onCreateSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v1, "[S] onPauseSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string/jumbo v0, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v1, "[E] onPauseSBM"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v3, "[S] resumeSBM"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->nfcBroadcast:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mfilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->list_items_update(II)V

    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v3, "[E] resumeSBM"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
