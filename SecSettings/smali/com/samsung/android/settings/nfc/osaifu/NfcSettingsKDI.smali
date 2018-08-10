.class public Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;
.super Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.source "NfcSettingsKDI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$1;
    }
.end annotation


# instance fields
.field private mABeam:Landroid/support/v7/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

.field private mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

.field private mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

.field private mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

.field private mUimNfcSupport:Z


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->refresh()V

    return-void
.end method

.method constructor <init>(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$1;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    iput-object p6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method private refresh()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getUIMLockState()I

    move-result v1

    const-string/jumbo v2, "[NfcSettingsKDI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh - clfLockState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uimLockState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->checkUIMSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateNfcLock(II)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateRwP2p(II)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateABeam(II)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateLockNumChange(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateLockNumInit(I)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateTapAndPay(II)V

    return-void
.end method

.method private updateABeam(II)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider2/MiscPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isNFCStateChangeAllowed"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

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
    const/4 v0, 0x1

    if-gt v0, p1, :cond_7

    const/4 v0, 0x3

    if-gt p1, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v10, 0x7f121b3d

    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getKDIRemoteLockState()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    if-gt v0, p2, :cond_6

    const/4 v0, 0x3

    if-gt p2, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_6
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

    :cond_7
    const/16 v0, 0x40

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v10, 0x7f1212da

    goto :goto_1

    :cond_8
    if-nez p1, :cond_c

    if-nez p2, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v9

    const/16 v0, 0xd

    if-ne v9, v0, :cond_b

    if-eqz v8, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getABeamStatus()Z

    move-result v0

    if-eqz v0, :cond_a

    const v10, 0x7f121b3e

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_a
    const v10, 0x7f121b3d

    goto :goto_1

    :cond_b
    const/16 v0, 0xb

    if-ne v9, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v10, 0x7f121b3d

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v10, 0x7f121b3d

    goto/16 :goto_1
.end method

.method private updateLockNumChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getKDIRemoteLockState()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-gt v0, p1, :cond_3

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateLockNumInit(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getKDIRemoteLockState()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-gt v0, p1, :cond_3

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateNfcLock(II)V
    .locals 7

    const/16 v6, 0x100

    const/16 v5, 0x40

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-ne p2, v5, :cond_3

    const v0, 0x7f1212da

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_1
    if-eq p2, v5, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getKDIRemoteLockState()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->checkSimMno()Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_4

    const v0, 0x7f1212dd

    goto :goto_0

    :cond_4
    const v0, 0x7f1212de

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    const v0, 0x7f1212db

    goto :goto_0

    :cond_6
    const v0, 0x7f1212dc

    goto :goto_0

    :cond_7
    if-ne p1, v6, :cond_8

    if-ne p2, v6, :cond_8

    const v0, 0x7f121b3d

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    const v0, 0x7f121b3d

    goto :goto_0

    :cond_9
    const v0, 0x7f121b3e

    goto :goto_0

    :cond_a
    if-gt v3, p2, :cond_b

    if-le p2, v4, :cond_2

    :cond_b
    if-gt v3, p1, :cond_c

    if-gt p1, v4, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateRwP2p(II)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x0

    const/4 v8, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

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

    if-gt v0, p1, :cond_9

    const/4 v0, 0x3

    if-gt p1, v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v11, 0x7f121b3d

    :cond_5
    :goto_2
    if-eqz v11, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getKDIRemoteLockState()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x2

    if-gt v0, p2, :cond_8

    const/4 v0, 0x3

    if-gt p2, v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_8
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

    :cond_9
    if-nez v8, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v10

    const/16 v0, 0xb

    if-ne v10, v0, :cond_a

    const-string/jumbo v0, "[NfcSettingsKDI]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f121b3d

    goto :goto_2

    :cond_a
    const/16 v0, 0xd

    if-ne v10, v0, :cond_5

    const-string/jumbo v0, "[NfcSettingsKDI]"

    const-string/jumbo v2, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f121b3e

    goto :goto_2

    :cond_b
    const/16 v0, 0x40

    if-ne p2, v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v11, 0x7f1212da

    goto :goto_2

    :cond_c
    if-nez p1, :cond_e

    if-nez p2, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v10

    const/16 v0, 0xd

    if-ne v10, v0, :cond_d

    const v11, 0x7f121b3e

    goto/16 :goto_2

    :cond_d
    const/16 v0, 0xb

    if-ne v10, v0, :cond_5

    const v11, 0x7f121b3d

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    const v11, 0x7f121b3d

    goto/16 :goto_2
.end method

.method private updateTapAndPay(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x40

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "[NfcSettingsKDI]"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.intent.action.NFC_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "[NfcSettingsKDI]"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "[NfcSettingsKDI]"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->refresh()V

    return-void
.end method
