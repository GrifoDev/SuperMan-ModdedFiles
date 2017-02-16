.class public Landroid/sec/enterprise/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field public static final PWD_CHANGE_NOT_ENFORCED:I

.field private static TAG:Ljava/lang/String;

.field public static final enforcePwdExceptions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-string/jumbo v0, "PasswordPolicy"

    sput-object v0, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    .line 41
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "com.android.settings.SubSettings"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings.ChooseLockPassword"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "com.google.android.gsf.update.SystemUpdateInstallDialog"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "com.google.android.gsf.update.SystemUpdateDownloadDialog"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "com.android.phone.EmergencyDialer"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.phone.OutgoingCallBroadcaster"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "com.android.phone.EmergencyOutgoingCallBroadcaster"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.phone.InCallScreen"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "com.android.internal.policy.impl.LockScreen"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "com.android.internal.policy.impl.PatternUnlockScreen"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "com.android.internal.policy.impl.PasswordUnlockScreen"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.server.telecom.EmergencyCallActivity"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 41
    sput-object v0, Landroid/sec/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isChangeRequested()I
    .locals 4

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 60
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isChangeRequested()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 63
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isChangeRequested returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .locals 4

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 72
    .local v1, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isScreenLockPatternVisibilityEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 75
    .end local v1    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/PasswordPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "PXY-isScreenLockPatternVisibilityEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
