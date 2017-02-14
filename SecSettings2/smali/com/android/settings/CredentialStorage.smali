.class public final Lcom/android/settings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/android/settings/CredentialStorage$ResetDialog;,
        Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings/CredentialStorage$UnlockDialog;
    }
.end annotation


# static fields
.field private static final synthetic -android-security-KeyStore$StateSwitchesValues:[I

.field private static final SYSTEM_CREDENTIAL_UIDS:[I


# instance fields
.field private mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

.field mConfigureKeyGuardDialog:Landroid/app/AlertDialog;

.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/settings/CredentialStorage;->SYSTEM_CREDENTIAL_UIDS:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/CredentialStorage;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/CredentialStorage;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method private static synthetic -getandroid-security-KeyStore$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/security/KeyStore$State;->values()[Landroid/security/KeyStore$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/settings/CredentialStorage;->-android-security-KeyStore$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/settings/CredentialStorage;Lcom/samsung/android/knox/keystore/IClientCertificateManager;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/CredentialStorage;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/CredentialStorage;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/CredentialStorage;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage;->isUserRemoveCertificatesAllowed(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/CredentialStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/CredentialStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x3f2

    const/16 v1, 0x3f8

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/CredentialStorage;->SYSTEM_CREDENTIAL_UIDS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return-void
.end method

.method private checkCallerIsCertInstallerOrSelfInProfile()Z
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    const-string/jumbo v5, "CredentialStorage"

    const-string/jumbo v7, "com.android.credentials.INSTALL must be started with startActivityForResult"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v0, v7}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v7

    if-nez v7, :cond_3

    return v6

    :cond_3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const-string/jumbo v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eq v7, v8, :cond_5

    :cond_4
    return v6

    :catch_0
    move-exception v3

    return v6

    :cond_5
    return v5
.end method

.method private checkKeyGuardQuality()Z
    .locals 4

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v3, 0x7f0b15dd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private doesCCMSupportKeyAlgorithm(Landroid/os/Bundle;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string/jumbo v2, "user_certificate_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v2, "user_private_key_data"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/generic/util/CCMKeyCertUtils;->doesCCMSupportKeyAlgorithm([B[B)Z

    move-result v2

    return v2
.end method

.method private ensureKeyGuard()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    return-void
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/CredentialStorage;->-getandroid-security-KeyStore$StateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    return-void

    :pswitch_1
    new-instance v0, Lcom/android/settings/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$UnlockDialog;)V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ConfigureKeyGuardDialog;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->installIfAvailable()V

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private installCertificateinCCM(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 19

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string/jumbo v2, "user_private_key_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "user_private_key_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v2, "user_private_key_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    :cond_0
    const/4 v11, 0x0

    const-string/jumbo v2, "user_certificate_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "user_certificate_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    :cond_1
    const/4 v9, 0x0

    const-string/jumbo v2, "ca_certificates_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ca_certificates_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    :cond_2
    if-eqz v11, :cond_9

    if-eqz v16, :cond_9

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    const/16 p2, 0x0

    :cond_3
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v3, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v2, "USRPKEY_"

    const-string/jumbo v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v4, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct {v4}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    const-string/jumbo v2, "install_as_uid"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x3f2

    if-ne v2, v5, :cond_6

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    iput-object v8, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "keystorekeychain"

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v13, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    if-eqz v17, :cond_7

    invoke-static/range {v17 .. v17}, Lcom/sec/generic/util/CCMKeyCertUtils;->getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;

    move-result-object v15

    invoke-static {v11}, Lcom/sec/generic/util/CCMKeyCertUtils;->getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v10

    const/16 v18, 0x0

    if-eqz p2, :cond_5

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-static {v15, v5}, Lcom/sec/generic/util/CCMKeyCertUtils;->getFormattedPrivateKey(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object v6

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->installObjectWithProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "CredentialStorage"

    const-string/jumbo v5, "Error installing private key into CCM, installObjectWithProfile returned false"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v14, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz v9, :cond_8

    invoke-virtual {v14, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_8
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "CredentialStorage"

    const-string/jumbo v5, "Error installing certificate into CCM, installCertificate returned false"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "CredentialStorage"

    const-string/jumbo v5, "Error installing certificate into CCM"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_9
    const/4 v2, 0x1

    return v2
.end method

.method private installIfAvailable()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/Bundle;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    const-string/jumbo v27, "install_as_uid"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    const-string/jumbo v27, "senderpackagename"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "PackageName from CredentialStorage : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, -0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v27

    move/from16 v0, v21

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v27

    if-eqz v27, :cond_4

    :cond_2
    const/4 v8, 0x0

    const/16 v17, 0x0

    :try_start_0
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v27

    move/from16 v0, v27

    invoke-direct {v11, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    sget-object v27, Lcom/samsung/android/knox/EnterpriseDeviceManager;->KNOX_CCM_POLICY_SERVICE:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/knox/keystore/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v8

    :goto_0
    const-string/jumbo v27, "3.0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    const-string/jumbo v27, "CredentialStorage"

    const-string/jumbo v28, "CCM is available on this device"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-interface {v0, v11, v1}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mCCMService:Lcom/samsung/android/knox/keystore/IClientCertificateManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v11}, Lcom/samsung/android/knox/keystore/IClientCertificateManager;->isAccessControlMethodPassword(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v27

    if-nez v27, :cond_7

    const/16 v17, 0x1

    const-string/jumbo v27, "CredentialStorage"

    const-string/jumbo v28, "CCM is available for KeyChain"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/CredentialStorage;->doesCCMSupportKeyAlgorithm(Landroid/os/Bundle;)Z

    move-result v16

    if-eqz v17, :cond_a

    if-eqz v16, :cond_a

    const-string/jumbo v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "CCM is enabled for this package : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/settings/CredentialStorage;->installCertificateinCCM(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_10

    const-string/jumbo v27, "CredentialStorage"

    const-string/jumbo v28, "installCertificateinCCM failed"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    const/16 v27, 0x3f2

    move/from16 v0, v21

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    const-string/jumbo v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to install credentials as uid "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ": cross-user installs"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " may only target wifi uids"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    new-instance v27, Landroid/content/Intent;

    const-string/jumbo v28, "com.android.credentials.INSTALL"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v28, 0x2000000

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v15

    new-instance v27, Landroid/os/UserHandle;

    move-object/from16 v0, v27

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v15, v1}, Lcom/android/settings/CredentialStorage;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string/jumbo v27, "CredentialStorage"

    const-string/jumbo v28, "CCM is not available for KeyChain"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v13

    const/4 v8, 0x0

    const/16 v17, 0x0

    const-string/jumbo v27, "CredentialStorage"

    const-string/jumbo v28, "Failed at ClientCertificateManager API isCCMPolicyEnabledForPackage-Exception "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_8
    const/16 v17, 0x0

    :try_start_2
    const-string/jumbo v27, "CredentialStorage"

    const-string/jumbo v28, "CCM Service is NOT available on this device"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v27, "CredentialStorage"

    const-string/jumbo v28, "CCM is NOT available on this device"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v27, "user_private_key_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    const-string/jumbo v27, "user_private_key_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v27, "user_private_key_data"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v22

    const/4 v14, 0x1

    const/16 v27, 0x3f2

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v27

    if-eqz v27, :cond_b

    const-string/jumbo v27, "CredentialStorage"

    const-string/jumbo v28, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v27

    if-nez v27, :cond_c

    const-string/jumbo v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to install "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " as uid "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-string/jumbo v27, "user_certificate_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    const-string/jumbo v27, "user_certificate_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v27, "user_certificate_data"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    const/16 v27, 0x3f2

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v10, v9, v1, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v27

    if-nez v27, :cond_e

    const-string/jumbo v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to install "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " as uid "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const/4 v14, 0x1

    goto :goto_2

    :cond_e
    sget-boolean v27, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v27, :cond_10

    const-string/jumbo v27, "wapi_as_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_f

    const-string/jumbo v27, "wapi_as_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v27, "wapi_as_certificates_data"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v27

    if-nez v27, :cond_f

    const-string/jumbo v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to install "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    const-string/jumbo v27, "wapi_user_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_10

    const-string/jumbo v27, "wapi_user_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, "wapi_user_certificates_data"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move/from16 v3, v21

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v27

    if-nez v27, :cond_10

    const-string/jumbo v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to install "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const-string/jumbo v27, "ca_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_12

    const-string/jumbo v27, "ca_certificates_name"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v27, "ca_certificates_data"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    const/16 v27, 0x3f2

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_11

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v7, v6, v1, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v27

    if-nez v27, :cond_12

    const-string/jumbo v27, "CredentialStorage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Failed to install "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " as uid "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const/4 v14, 0x1

    goto :goto_3

    :cond_12
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/CredentialStorage;->setResult(I)V

    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .locals 7

    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lsun/security/x509/AlgorithmId;

    new-instance v6, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v6, v1}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v5}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    :catch_0
    move-exception v3

    const-string/jumbo v5, "CredentialStorage"

    const-string/jumbo v6, "Failed to parse key data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return v5
.end method

.method private isKnoxUser()Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    const/16 v2, 0xc8

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isUserRemoveCertificatesAllowed(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v3, "content://com.sec.knox.provider/CertificatePolicy"

    const-string/jumbo v4, "isUserRemoveCertificatesAllowed"

    invoke-static {p0, v3, v4, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_1

    const-string/jumbo v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->isKnoxUser()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_4

    new-instance v1, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "CredentialStorage"

    const-string/jumbo v1, "onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_credentials"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "com.android.credentials.RESET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/settings/CredentialStorage$ResetDialog;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$ResetDialog;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "com.android.credentials.INSTALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkCallerIsCertInstallerOrSelfInProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.android.credentials.UNLOCK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method
