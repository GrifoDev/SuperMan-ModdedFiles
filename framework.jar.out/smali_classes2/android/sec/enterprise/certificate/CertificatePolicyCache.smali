.class public Landroid/sec/enterprise/certificate/CertificatePolicyCache;
.super Ljava/lang/Object;
.source "CertificatePolicyCache.java"


# static fields
.field public static final ACTION_CERTIFICATE_POLICY_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CERTIFICATE_POLICY_CHANGED_INTERNAL"

.field public static final EXTRA_CERTIFICATE_POLICY_TYPE_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.CERTIFICATE_POLICY_TYPE_CHANGED_INTERNAL"

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_CERTIFICATE_TRUSTED_UNTRUSTED:Ljava/lang/String; = "CERTIFICATE_TRUSTED_UNTRUSTED"

.field public static final TYPE_CERTIFICATE_VALIDATION:Ljava/lang/String; = "CERTIFICATE_VALIDATION"

.field private static final mSync:Ljava/lang/Object;

.field private static sInstance:Landroid/sec/enterprise/certificate/CertificatePolicyCache;


# instance fields
.field private mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field private mCertificateValidationEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mTrustedUntrustedEnabled:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/sec/enterprise/certificate/CertificatePolicyCache;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->readVariables(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "CertificatePolicyCache"

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->sInstance:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    iput-object p1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.CERTIFICATE_POLICY_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;-><init>(Landroid/sec/enterprise/certificate/CertificatePolicyCache;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating new instance of CertificatePolicyCache myUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " callingUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->readVariables(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/enterprise/certificate/CertificatePolicyCache;
    .locals 2

    sget-object v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->sInstance:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    invoke-direct {v0, p0}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->sInstance:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    :cond_0
    sget-object v0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->sInstance:Landroid/sec/enterprise/certificate/CertificatePolicyCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized readVariables(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sget-object v1, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readVariables type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-object v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mTrustedUntrustedEnabled:Z

    iget-object v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificateValidationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v1, "CERTIFICATE_TRUSTED_UNTRUSTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateTrustedUntrustedEnabledAsUser(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mTrustedUntrustedEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    const-string/jumbo v1, "CERTIFICATE_VALIDATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificateValidationEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public isCertificateTrustedUntrustedEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mTrustedUntrustedEnabled:Z

    return v0
.end method

.method public isCertificateValidationAtInstallEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->mCertificateValidationEnabled:Z

    return v0
.end method
