.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATION:I = 0x1

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider2"

.field private static final CLIENTCERTIFICATEMANAGER:I = 0x2

.field private static final DATETIME:I = 0x4

.field private static final DEVICEACCOUNT:I = 0x3

.field private static final DUALSIM:I = 0x5

.field private static final EMAIL:I = 0x6

.field private static final EMAILACCOUNT:I = 0x7

.field private static final ENTERPRISECERTENROLL:I = 0x8

.field private static final ENTERPRISECONTAINER:I = 0x9

.field private static final ENTERPRISECONTAINERSERVICE:I = 0xa

.field private static final ENTERPRISEDEVICEMANAGER:I = 0xb

.field private static final EXCHANGEACCOUNT:I = 0xc

.field private static final KIOSKMODESEC:I = 0xd

.field private static final KNOXCUSTOMMANAGERSERVICE1:I = 0xe

.field private static final KNOXCUSTOMMANAGERSERVICE2:I = 0xf

.field private static final MISC:I = 0x10

.field private static final MULTIUSERMANAGER:I = 0x11

.field private static final PHONERESTRICTION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SecContentProvider2"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VPN:I = 0x13

.field private static final WIFI:I = 0x14


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "ApplicationPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "ClientCertificateManager"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "DeviceAccountPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "DualSimPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EmailPolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EmailAccountPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EnterpriseContainerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EnterpriseContainerService"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "EnterpriseDeviceManager"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "ExchangeAccountPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "KioskMode"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "KnoxCustomManagerService1"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "KnoxCustomManagerService2"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "MiscPolicy"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "MultiUserManager"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "PhoneRestrictionPolicy"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "vpnPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sec.knox.provider2"

    const-string/jumbo v2, "WifiPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "fail to get caller name."

    :cond_1
    return-object v0
.end method

.method private getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "knoxcustom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    sget-object v3, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v5

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "eas_account_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz v2, :cond_0

    const-string/jumbo v3, "API"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "setAccountEmailPassword"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v4, "password"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string/jumbo v3, "SecContentProvider2"

    const-string/jumbo v4, "do notifyChange() for knoxCustomManagerService1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string/jumbo v3, "SecContentProvider2"

    const-string/jumbo v4, "do notifyChange() for knoxCustomManagerService2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 91

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v85

    const/16 v38, 0x0

    const/16 v53, 0x0

    const/16 v16, 0x0

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query(), uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " selection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "called from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider2;->getCallerName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/4 v5, 0x0

    return-object v5

    :pswitch_1
    const-string/jumbo v5, "phone_restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    if-eqz v49, :cond_0

    const-string/jumbo v5, "isCopyContactToSimAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isCopyContactToSimAllowed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v73

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isCopyContactToSimAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_0
    return-object v53

    :cond_1
    const-string/jumbo v5, "isBlockSmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isBlockSmsWithStorageEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "checkEnableUseOfPacketData"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v13, 0x0

    if-eqz p4, :cond_3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    :cond_3
    move-object/from16 v0, v49

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "checkEnableUseOfPacketData"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "isBlockMmsWithStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isBlockMmsWithStorageEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v5, "canIncomingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz p4, :cond_6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1a

    :cond_6
    const/4 v5, 0x0

    return-object v5

    :cond_7
    const-string/jumbo v5, "isLimitNumberOfSmsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isLimitNumberOfSmsEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v5, "isOutgoingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isOutgoingSmsAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v5, "canOutgoingSms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz p4, :cond_a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1b

    :cond_a
    const/4 v5, 0x0

    return-object v5

    :cond_b
    const-string/jumbo v5, "isIncomingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isIncomingMmsAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v5, "isIncomingSmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isIncomingSmsAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v5, "isOutgoingMmsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isOutgoingMmsAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v5, "getEmergencyCallOnly"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v49

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getEmergencyCallOnly"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v5, "isCallerIDDisplayAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isCallerIDDisplayAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v5, "isWapPushAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isWapPushAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v5, "canIncomingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    if-eqz p4, :cond_12

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1c

    :cond_12
    const/4 v5, 0x0

    return-object v5

    :cond_13
    const-string/jumbo v5, "canOutgoingCall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz p4, :cond_14

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1d

    :cond_14
    const/4 v5, 0x0

    return-object v5

    :cond_15
    const-string/jumbo v5, "isSimLockedByAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-eqz p4, :cond_16

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1e

    :cond_16
    const/4 v5, 0x0

    return-object v5

    :cond_17
    const-string/jumbo v5, "getDisclaimerText"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v81, 0x0

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v81

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getDisclaimerText"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v81, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v5, "isRCSEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v13, 0x0

    if-eqz p4, :cond_19

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1f

    :cond_19
    const/4 v5, 0x0

    return-object v5

    :cond_1a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "canIncomingSms"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1b
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v73

    goto/16 :goto_0

    :cond_1c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "canIncomingCall"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1d
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "canOutgoingCall"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isSimLockedByAdmin"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1f
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_20

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    :cond_20
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5, v6, v13}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isRCSEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v38

    if-eqz v38, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "setSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-eqz p4, :cond_22

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_41

    :cond_22
    const/4 v5, 0x0

    return-object v5

    :cond_23
    const-string/jumbo v5, "getSealedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/16 v70, 0x0

    :try_start_0
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v70

    :goto_1
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_24
    :goto_2
    return-object v53

    :cond_25
    const-string/jumbo v5, "getSealedPowerDialogOptionMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/16 v79, 0x2

    :try_start_1
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v79

    :goto_3
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedPowerDialogOptionMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    :cond_26
    const-string/jumbo v5, "getSealedModeString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    if-eqz p4, :cond_27

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_42

    :cond_27
    const/4 v5, 0x0

    return-object v5

    :cond_28
    const-string/jumbo v5, "getSealedExitUI"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    if-eqz p4, :cond_29

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_43

    :cond_29
    const/4 v5, 0x0

    return-object v5

    :cond_2a
    const-string/jumbo v5, "getSealedHomeActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v81, 0x0

    :try_start_2
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v81

    :goto_4
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedHomeActivity"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v81, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2b
    const-string/jumbo v5, "getSealedStatusBarMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v79, 0x2

    :try_start_3
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v79

    :goto_5
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedStatusBarMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2c
    const-string/jumbo v5, "getSealedStatusBarClockState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/16 v80, 0x1

    :try_start_4
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v80

    :goto_6
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedStatusBarClockState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2d
    const-string/jumbo v5, "getSealedStatusBarIconsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v80, 0x1

    :try_start_5
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_8

    move-result v80

    :goto_7
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedStatusBarIconsState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2e
    const-string/jumbo v5, "getSealedUsbMassStorageState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/16 v80, 0x1

    :try_start_6
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_9

    move-result v80

    :goto_8
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedUsbMassStorageState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2f
    const-string/jumbo v5, "getSealedUsbNetState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const/16 v80, 0x0

    :try_start_7
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetState()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_a

    move-result v80

    :goto_9
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedUsbNetState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_30
    const-string/jumbo v5, "getSealedUsbNetAddress"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    if-eqz p4, :cond_31

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_44

    :cond_31
    const/4 v5, 0x0

    return-object v5

    :cond_32
    const-string/jumbo v5, "getPowerSavingMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    const/16 v79, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "ultra_powersaving_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v84

    if-eqz v84, :cond_45

    const/16 v79, 0x2

    :goto_a
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getPowerSavingMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_33
    const-string/jumbo v5, "getChargingLEDState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_47

    const/16 v80, 0x1

    :goto_b
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getChargingLEDState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_34
    const-string/jumbo v5, "getScreenWakeupOnPowerState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    const/16 v80, 0x1

    :try_start_8
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_c

    move-result v80

    :goto_c
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getScreenWakeupOnPowerState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_35
    const-string/jumbo v5, "getLTESettingState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    const/16 v80, 0x0

    :try_start_9
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_d

    move-result v80

    :goto_d
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getLTESettingState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_36
    const-string/jumbo v5, "getCallScreenDisabledItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    const/16 v79, 0x0

    :try_start_a
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_e

    move-result v79

    :goto_e
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getCallScreenDisabledItems"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_37
    const-string/jumbo v5, "getInfraredState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    const/16 v80, 0x1

    :try_start_b
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_f

    move-result v80

    :goto_f
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getInfraredState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_38
    const-string/jumbo v5, "getSensorDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    const/16 v79, 0x0

    :try_start_c
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_10

    move-result v79

    :goto_10
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSensorDisabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_39
    const-string/jumbo v5, "getVolumePanelEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v80, 0x1

    :try_start_d
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_11

    move-result v80

    :goto_11
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getVolumePanelEnabledState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3a
    const-string/jumbo v5, "getVolumeControlStream"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/16 v79, 0x0

    :try_start_e
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_12

    move-result v79

    :goto_12
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getVolumeControlStream"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3b
    const-string/jumbo v5, "getStatusBarText"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const/16 v81, 0x0

    :try_start_f
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_13

    move-result-object v81

    :goto_13
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getStatusBarText"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v81, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3c
    const-string/jumbo v5, "getStatusBarTextStyle"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/16 v79, 0x0

    :try_start_10
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_14

    move-result v79

    :goto_14
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getStatusBarTextStyle"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3d
    const-string/jumbo v5, "getStatusBarTextSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v79, 0x0

    :try_start_11
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_15

    move-result v79

    :goto_15
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getStatusBarTextSize"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3e
    const-string/jumbo v5, "getTorchOnVolumeButtonsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "torchlight_enable"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_48

    const/16 v80, 0x1

    :goto_16
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getTorchOnVolumeButtonsState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3f
    const-string/jumbo v5, "getPowerMenuLockedState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    const/16 v80, 0x1

    :try_start_12
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_16

    move-result v80

    :goto_17
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getPowerMenuLockedState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_40
    const-string/jumbo v5, "getUltraPowerSavingPackages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    const/16 v78, 0x0

    :try_start_13
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_17

    move-result-object v78

    :goto_18
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getUltraPowerSavingPackages"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v78, :cond_24

    invoke-interface/range {v78 .. v78}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_24

    invoke-interface/range {v78 .. v78}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_19
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_19

    :cond_41
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v65

    const/4 v5, 0x1

    aget-object v64, p4, v5

    const/16 v79, -0x1

    :try_start_14
    move-object/from16 v0, v38

    move/from16 v1, v65

    move-object/from16 v2, v64

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_0

    move-result v79

    :goto_1a
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "setSealedState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_0
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catch_1
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with knoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_2
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_42
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v66

    const/16 v81, 0x0

    :try_start_15
    move-object/from16 v0, v38

    move/from16 v1, v66

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_3

    move-result-object v81

    :goto_1b
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedModeString"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v81, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_3
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    :cond_43
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v66

    const/16 v81, 0x0

    :try_start_16
    move-object/from16 v0, v38

    move/from16 v1, v66

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_4

    move-result-object v81

    :goto_1c
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedExitUI"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v81, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_4
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_5
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_6
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_7
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :catch_8
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catch_9
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :catch_a
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :cond_44
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v63

    const/16 v81, 0x0

    :try_start_17
    move-object/from16 v0, v38

    move/from16 v1, v63

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_b

    move-result-object v81

    :goto_1d
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedUsbNetAddress"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v81, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_b
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    :cond_45
    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "psm_switch"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    if-nez v32, :cond_46

    const/16 v79, 0x0

    goto/16 :goto_a

    :cond_46
    const/16 v79, 0x1

    goto/16 :goto_a

    :cond_47
    const/16 v80, 0x0

    goto/16 :goto_b

    :catch_c
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    :catch_d
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :catch_e
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    :catch_f
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    :catch_10
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    :catch_11
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    :catch_12
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    :catch_13
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    :catch_14
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    :catch_15
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    :cond_48
    const/16 v80, 0x0

    goto/16 :goto_16

    :catch_16
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    :catch_17
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    :cond_49
    const/4 v5, 0x0

    return-object v5

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v38

    if-eqz v38, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "getSealedNotificationMessagesState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    const/16 v80, 0x1

    :try_start_18
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskNotificationMessagesState()Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    move-result v80

    :goto_1e
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedNotificationMessagesState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_4a
    :goto_1f
    return-object v53

    :cond_4b
    const-string/jumbo v5, "getSealedPowerDialogItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    const/16 v79, -0x1

    :try_start_19
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    move-result v79

    :goto_20
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedPowerDialogItems"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f

    :cond_4c
    const-string/jumbo v5, "getSealedPowerDialogCustomItemsState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/16 v80, 0x0

    :try_start_1a
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    move-result v80

    :goto_21
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedPowerDialogCustomItemsState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f

    :cond_4d
    const-string/jumbo v5, "getSealedPowerDialogCustomItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    const/16 v77, 0x0

    :try_start_1b
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    move-result-object v77

    :goto_22
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedPowerDialogCustomItems"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v77, :cond_4a

    invoke-interface/range {v77 .. v77}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4a

    invoke-interface/range {v77 .. v77}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_23
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Lcom/samsung/android/knox/custom/PowerItem;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual/range {v87 .. v87}, Lcom/samsung/android/knox/custom/PowerItem;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_23

    :cond_4e
    const-string/jumbo v5, "getExtendedCallInfoState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    const/16 v80, 0x0

    :try_start_1c
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_1c

    move-result v80

    :goto_24
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getExtendedCallInfoState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_4f
    const-string/jumbo v5, "getSettingsHiddenState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/16 v79, 0x0

    :try_start_1d
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1d

    move-result v79

    :goto_25
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSettingsHiddenState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_50
    const-string/jumbo v5, "getSealedHideNotificationMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    const/16 v79, -0x1

    :try_start_1e
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1e

    move-result v79

    :goto_26
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedHideNotificationMessages"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_51
    const-string/jumbo v5, "getRecentLongPressActivity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    const/16 v81, 0x0

    :try_start_1f
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1f

    move-result-object v81

    :goto_27
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getRecentLongPressActivity"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v81, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_52
    const-string/jumbo v5, "getRecentLongPressMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    const/16 v79, -0x1

    :try_start_20
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_20

    move-result v79

    :goto_28
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getRecentLongPressMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_53
    const-string/jumbo v5, "getVolumeButtonRotationState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    const/16 v80, 0x0

    :try_start_21
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_21

    move-result v80

    :goto_29
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getVolumeButtonRotationState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_54
    const-string/jumbo v5, "getGearNotificationState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    const/16 v80, 0x1

    :try_start_22
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_22

    move-result v80

    :goto_2a
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getGearNotificationState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_55
    const-string/jumbo v5, "getScreenOffOnHomeLongPressState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    const/16 v80, 0x0

    :try_start_23
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_23

    move-result v80

    :goto_2b
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getScreenOffOnHomeLongPressState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_56
    const-string/jumbo v5, "getScreenOffOnStatusBarDoubleTapState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    const/16 v80, 0x0

    :try_start_24
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_24

    move-result v80

    :goto_2c
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getScreenOffOnStatusBarDoubleTapState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_57
    const-string/jumbo v5, "getWifiAutoSwitchState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    const/16 v80, 0x0

    :try_start_25
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchState()Z
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_25

    move-result v80

    :goto_2d
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getWifiAutoSwitchState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_58
    const-string/jumbo v5, "getWifiAutoSwitchThreshold"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    const/16 v79, -0xc8

    :try_start_26
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchThreshold()I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_26

    move-result v79

    :goto_2e
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getWifiAutoSwitchThreshold"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_59
    const-string/jumbo v5, "getWifiAutoSwitchDelay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    const/16 v79, 0x14

    :try_start_27
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getWifiAutoSwitchDelay()I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_27

    move-result v79

    :goto_2f
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getWifiAutoSwitchDelay"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_5a
    const-string/jumbo v5, "getLockScreenHiddenItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    const/16 v79, 0x0

    :try_start_28
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_28

    move-result v79

    :goto_30
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getLockScreenHiddenItems"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_5b
    const-string/jumbo v5, "getToastEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    const/16 v80, 0x1

    :try_start_29
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_29

    move-result v80

    :goto_31
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getToastEnabledState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_5c
    const-string/jumbo v5, "getToastShowPackageNameState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    const/16 v80, 0x0

    :try_start_2a
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_2a

    move-result v80

    :goto_32
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getToastShowPackageNameState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_5d
    const-string/jumbo v5, "getToastGravityEnabledState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    const/16 v80, 0x0

    :try_start_2b
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_2b

    move-result v80

    :goto_33
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getToastGravityEnabledState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_5e
    const-string/jumbo v5, "getToastGravity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    const/16 v79, 0x0

    :try_start_2c
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_2c

    move-result v79

    :goto_34
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getToastGravity"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_5f
    const-string/jumbo v5, "getToastGravityXOffset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    const/16 v79, 0x0

    :try_start_2d
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_2d

    move-result v79

    :goto_35
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getToastGravityXOffset"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_60
    const-string/jumbo v5, "getToastGravityYOffset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    const/16 v79, 0x0

    :try_start_2e
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_2e

    move-result v79

    :goto_36
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getToastGravityYOffset"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_61
    const-string/jumbo v5, "getAppBlockDownloadState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    const/16 v80, 0x0

    :try_start_2f
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_2f

    move-result v80

    :goto_37
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAppBlockDownloadState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_62
    const-string/jumbo v5, "getAppBlockDownloadNamespaces"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    const/16 v78, 0x0

    :try_start_30
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_30

    move-result-object v78

    :goto_38
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAppBlockDownloadNamespaces"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v78, :cond_4a

    invoke-interface/range {v78 .. v78}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4a

    invoke-interface/range {v78 .. v78}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_39
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_39

    :cond_63
    const-string/jumbo v5, "getEthernetState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    const/16 v80, 0x1

    :try_start_31
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_31

    move-result v80

    :goto_3a
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getEthernetState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_64
    const-string/jumbo v5, "getEthernetConfigurationType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_65

    const/16 v79, 0x0

    :try_start_32
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_32} :catch_32

    move-result v79

    :goto_3b
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getEthernetConfigurationType"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_65
    const-string/jumbo v5, "getSealedHardKeyIntentState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    const/16 v80, 0x0

    :try_start_33
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_33

    move-result v80

    :goto_3c
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedHardKeyIntentState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_66
    const-string/jumbo v5, "getSealedVolumeKeyAppState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    const/16 v80, 0x0

    :try_start_34
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_34} :catch_34

    move-result v80

    :goto_3d
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedVolumeKeyAppState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_67
    const-string/jumbo v5, "getSettingsEnabledItems"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    const/16 v79, 0x0

    :try_start_35
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_35

    move-result v79

    :goto_3e
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSettingsEnabledItems"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_68
    const-string/jumbo v5, "getSealedVolumeKeyAppsList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v78, 0x0

    :try_start_36
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_36} :catch_36

    move-result-object v78

    :goto_3f
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSealedVolumeKeyAppsList"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v78, :cond_4a

    invoke-interface/range {v78 .. v78}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4a

    invoke-interface/range {v78 .. v78}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_40
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_40

    :cond_69
    const-string/jumbo v5, "getUsbConnectionType"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    const/16 v79, 0x0

    :try_start_37
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_37

    move-result v79

    :goto_41
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getUsbConnectionType"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_6a
    const-string/jumbo v5, "getAutoCallPickupState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    const/16 v79, -0x1

    :try_start_38
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_38

    move-result v79

    :goto_42
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAutoCallPickupState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_6b
    const-string/jumbo v5, "getAutoCallNumberList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    const/16 v78, 0x0

    :try_start_39
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_39} :catch_39

    move-result-object v78

    :goto_43
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAutoCallNumberList"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v78, :cond_4a

    invoke-interface/range {v78 .. v78}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4a

    invoke-interface/range {v78 .. v78}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_44
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_44

    :cond_6c
    const-string/jumbo v5, "getAutoCallNumberDelay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    if-eqz p4, :cond_6d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_73

    :cond_6d
    const/4 v5, 0x0

    return-object v5

    :cond_6e
    const-string/jumbo v5, "getAutoCallNumberAnswerMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    if-eqz p4, :cond_6f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_74

    :cond_6f
    const/4 v5, 0x0

    return-object v5

    :cond_70
    const-string/jumbo v5, "getUltraPowerSavingPackages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    const/16 v78, 0x0

    :try_start_3a
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3a} :catch_3c

    move-result-object v78

    :goto_45
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getUltraPowerSavingPackages"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v78, :cond_4a

    invoke-interface/range {v78 .. v78}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4a

    invoke-interface/range {v78 .. v78}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_46
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_46

    :cond_71
    const-string/jumbo v5, "getLoadingLogoPath"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    const/16 v81, 0x0

    :try_start_3b
    invoke-interface/range {v38 .. v38}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3b} :catch_3d

    move-result-object v81

    :goto_47
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getLoadingLogoPath"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v81, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_72
    const-string/jumbo v5, "getAirGestureOptionState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    const/16 v80, 0x1

    const/4 v5, 0x0

    :try_start_3c
    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3c} :catch_3e

    move-result v80

    :goto_48
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAirGestureOptionState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v80 .. v80}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :catch_18
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    :catch_19
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    :catch_1a
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    :catch_1b
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    :catch_1c
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    :catch_1d
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    :catch_1e
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    :catch_1f
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    :catch_20
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    :catch_21
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_29

    :catch_22
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    :catch_23
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    :catch_24
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    :catch_25
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    :catch_26
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    :catch_27
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f

    :catch_28
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    :catch_29
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    :catch_2a
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    :catch_2b
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    :catch_2c
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    :catch_2d
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    :catch_2e
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    :catch_2f
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    :catch_30
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    :catch_31
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    :catch_32
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3b

    :catch_33
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    :catch_34
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3d

    :catch_35
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3e

    :catch_36
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    :catch_37
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    :catch_38
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    :catch_39
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_43

    :cond_73
    const/16 v79, -0x1

    const/4 v5, 0x0

    :try_start_3d
    aget-object v5, p4, v5

    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_3a

    move-result v79

    :goto_49
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAutoCallNumberDelay"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :catch_3a
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    :cond_74
    const/16 v79, -0x1

    const/4 v5, 0x0

    :try_start_3e
    aget-object v5, p4, v5

    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3e} :catch_3b

    move-result v79

    :goto_4a
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAutoCallNumberAnswerMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v79 .. v79}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1f

    :catch_3b
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    :catch_3c
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45

    :catch_3d
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    :catch_3e
    move-exception v27

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "Failed talking with KnoxCustomManager service"

    move-object/from16 v0, v27

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_48

    :cond_75
    const/4 v5, 0x0

    return-object v5

    :pswitch_4
    const-string/jumbo v5, "application_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v4, :cond_0

    const-string/jumbo v5, "getApplicationUninstallationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    if-eqz p4, :cond_76

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a3

    :cond_76
    const/4 v5, 0x0

    return-object v5

    :cond_77
    const-string/jumbo v5, "isApplicationInstalled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    if-eqz p4, :cond_78

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a4

    :cond_78
    const/4 v5, 0x0

    return-object v5

    :cond_79
    const-string/jumbo v5, "isIntentDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    if-eqz p4, :cond_7a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a5

    :cond_7a
    const/4 v5, 0x0

    return-object v5

    :cond_7b
    const-string/jumbo v5, "getApplicationNotificationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    if-eqz p4, :cond_7c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a6

    :cond_7c
    const/4 v5, 0x0

    return-object v5

    :cond_7d
    const-string/jumbo v5, "getAppInstallToSdCard"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    const/16 v73, 0x1

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAppInstallToSdCard"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_7e
    :goto_4b
    return-object v53

    :cond_7f
    const-string/jumbo v5, "isApplicationForceStopDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    if-eqz p4, :cond_80

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_a7

    :cond_80
    const/4 v5, 0x0

    return-object v5

    :cond_81
    const-string/jumbo v5, "isApplicationClearDataDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    if-eqz p4, :cond_82

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_a8

    :cond_82
    const/4 v5, 0x0

    return-object v5

    :cond_83
    const-string/jumbo v5, "isApplicationClearCacheDisabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    if-eqz p4, :cond_84

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_a9

    :cond_84
    const/4 v5, 0x0

    return-object v5

    :cond_85
    const-string/jumbo v5, "getApplicationNameFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_87

    if-eqz p4, :cond_86

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_aa

    :cond_86
    const/4 v5, 0x0

    return-object v5

    :cond_87
    const-string/jumbo v5, "isPackageUpdateAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    if-eqz p4, :cond_88

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_ab

    :cond_88
    const/4 v5, 0x0

    return-object v5

    :cond_89
    const-string/jumbo v5, "getApplicationComponentState"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    if-eqz p4, :cond_8a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_ac

    :cond_8a
    const/4 v5, 0x0

    return-object v5

    :cond_8b
    const-string/jumbo v5, "getApplicationStateEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8d

    if-eqz p4, :cond_8c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_ad

    :cond_8c
    const/4 v5, 0x0

    return-object v5

    :cond_8d
    const-string/jumbo v5, "isUsbDevicePermittedForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    if-eqz p4, :cond_8e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_ae

    :cond_8e
    const/4 v5, 0x0

    return-object v5

    :cond_8f
    const-string/jumbo v5, "getApplicationIconFromDb"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    if-eqz p4, :cond_90

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_af

    :cond_90
    const/4 v5, 0x0

    return-object v5

    :cond_91
    const-string/jumbo v5, "isChangeSmsDefaultAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_93

    if-eqz p4, :cond_92

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_b0

    :cond_92
    const/4 v5, 0x0

    return-object v5

    :cond_93
    const-string/jumbo v5, "isChangeAssistDefaultAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_95

    if-eqz p4, :cond_94

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_b1

    :cond_94
    const/4 v5, 0x0

    return-object v5

    :cond_95
    const-string/jumbo v5, "isApplicationSetToDefault"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97

    if-eqz p4, :cond_96

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_b2

    :cond_96
    const/4 v5, 0x0

    return-object v5

    :cond_97
    const-string/jumbo v5, "getDefaultApplicationInternal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    if-eqz p4, :cond_98

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_b3

    :cond_98
    const/4 v5, 0x0

    return-object v5

    :cond_99
    const-string/jumbo v5, "getApplicationStateDisabledList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_b4

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b4

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_4c
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationStateDisabledList value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4c

    :cond_9a
    const-string/jumbo v5, "getApplicationInstallUninstallList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    if-eqz p4, :cond_9b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_b5

    :cond_9b
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList selectionArgs is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_9c
    const-string/jumbo v5, "getAppInstallationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9d

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v30

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_9d
    const-string/jumbo v5, "getApplicationUninstallationMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v31

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_9e
    const-string/jumbo v5, "getAllPackagesFromBatteryOptimizationWhiteList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-virtual {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    move-result-object v74

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v74, :cond_7e

    invoke-interface/range {v74 .. v74}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7e

    invoke-interface/range {v74 .. v74}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v69

    :goto_4d
    invoke-interface/range {v69 .. v69}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface/range {v69 .. v69}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v68, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4d

    :cond_9f
    const-string/jumbo v5, "getPackagesFromDisableClipboardBlackList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    const/16 v72, 0x0

    const/16 v20, 0x0

    if-eqz p4, :cond_b7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_b7

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move/from16 v0, v72

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v20

    :goto_4e
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v20, :cond_b8

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b8

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_4f
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4f

    :cond_a0
    const-string/jumbo v5, "getPackagesFromDisableClipboardWhiteList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    const/16 v72, 0x0

    const/16 v22, 0x0

    if-eqz p4, :cond_b9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_b9

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move/from16 v0, v72

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v22

    :goto_50
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v22, :cond_ba

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ba

    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_51
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_51

    :cond_a1
    const-string/jumbo v5, "getPackagesFromDisableClipboardBlackListPerUidInternal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a2

    const/16 v72, 0x0

    const/16 v21, 0x0

    if-eqz p4, :cond_bb

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_bb

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    move/from16 v0, v72

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "clipboard_blacklist_perUid"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_4b

    :cond_a2
    const-string/jumbo v5, "getPackagesFromDisableClipboardWhiteListPerUidInternal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bd

    const/16 v72, 0x0

    const/16 v23, 0x0

    if-eqz p4, :cond_bc

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_bc

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    move/from16 v0, v72

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v23

    check-cast v23, Ljava/util/HashMap;

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "clipboard_whitelist_perUid"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_4b

    :cond_a3
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getApplicationUninstallationEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_a4
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isApplicationInstalled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_a5
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isIntentDisabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_a6
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v72

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getApplicationNotificationMode"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_a7
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    const/4 v8, 0x3

    aget-object v8, p4, v8

    const/4 v9, 0x4

    aget-object v9, p4, v9

    const/4 v10, 0x5

    aget-object v10, p4, v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isApplicationForceStopDisabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_a8
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isApplicationClearDataDisabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_a9
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isApplicationClearCacheDisabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_aa
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v76

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getApplicationNameFromDb"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v76, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_ab
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isPackageUpdateAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_ac
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getApplicationComponentState"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_ad
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getApplicationStateEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_ae
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbDevice;

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isUsbDevicePermittedForPackage"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_af
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    move-result-object v71

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getApplicationIconFromDb"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v71, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_b0
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(Ljava/lang/String;I)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isChangeSmsDefaultAppAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_b1
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isChangeAssistDefaultAppAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_b2
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isApplicationSetToDefault"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :cond_b3
    const/16 v37, 0x0

    const/4 v5, 0x0

    :try_start_3f
    aget-object v5, p4, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3f
    .catch Ljava/net/URISyntaxException; {:try_start_3f .. :try_end_3f} :catch_3f

    move-result-object v37

    :goto_52
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v37

    invoke-virtual {v4, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v24

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getDefaultApplicationInternal"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v24, :cond_7e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4b

    :catch_3f
    move-exception v29

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "URISyntaxException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_b4
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationStateDisabledList null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_b5
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    aget-object v5, p4, v5

    move/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v36

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v36, :cond_b6

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b6

    invoke-interface/range {v36 .. v36}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_53
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getApplicationInstallUninstallList value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_53

    :cond_b6
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "getApplicationInstallUninstallList null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :cond_b7
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v20

    goto/16 :goto_4e

    :cond_b8
    const/4 v5, 0x0

    return-object v5

    :cond_b9
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v20

    goto/16 :goto_50

    :cond_ba
    const/4 v5, 0x0

    return-object v5

    :cond_bb
    const/4 v5, 0x0

    return-object v5

    :cond_bc
    const/4 v5, 0x0

    return-object v5

    :cond_bd
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :pswitch_5
    const-string/jumbo v5, "eas_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz v42, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "getRequiredSignedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    if-eqz p4, :cond_be

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_d9

    :cond_be
    const/4 v5, 0x0

    return-object v5

    :cond_bf
    const-string/jumbo v5, "getRequiredEncryptedMIMEMessages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    if-eqz p4, :cond_c0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_da

    :cond_c0
    const/4 v5, 0x0

    return-object v5

    :cond_c1
    const-string/jumbo v5, "getForceSMIMECertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    if-eqz p4, :cond_c2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_db

    :cond_c2
    const/4 v5, 0x0

    return-object v5

    :cond_c3
    const-string/jumbo v5, "isIncomingAttachmentsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    if-eqz p4, :cond_c4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_dc

    :cond_c4
    const/4 v5, 0x0

    return-object v5

    :cond_c5
    const-string/jumbo v5, "getIncomingAttachmentSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c7

    if-eqz p4, :cond_c6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_dd

    :cond_c6
    const/4 v5, 0x0

    return-object v5

    :cond_c7
    const-string/jumbo v5, "getMaxCalendarAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c9

    if-eqz p4, :cond_c8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_de

    :cond_c8
    const/4 v5, 0x0

    return-object v5

    :cond_c9
    const-string/jumbo v5, "getMaxEmailBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cb

    if-eqz p4, :cond_ca

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_df

    :cond_ca
    const/4 v5, 0x0

    return-object v5

    :cond_cb
    const-string/jumbo v5, "getMaxEmailHTMLBodyTruncationSize"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cd

    if-eqz p4, :cond_cc

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e0

    :cond_cc
    const/4 v5, 0x0

    return-object v5

    :cond_cd
    const-string/jumbo v5, "getForceSMIMECertificateForSigning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    if-eqz p4, :cond_ce

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e1

    :cond_ce
    const/4 v5, 0x0

    return-object v5

    :cond_cf
    const-string/jumbo v5, "getForceSMIMECertificateForEncryption"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    if-eqz p4, :cond_d0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e2

    :cond_d0
    const/4 v5, 0x0

    return-object v5

    :cond_d1
    const-string/jumbo v5, "getAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    if-eqz p4, :cond_d2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e3

    :cond_d2
    const/4 v5, 0x0

    return-object v5

    :cond_d3
    const-string/jumbo v5, "getAccountCertificatePassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d5

    if-eqz p4, :cond_d4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e4

    :cond_d4
    const/4 v5, 0x0

    return-object v5

    :cond_d5
    const-string/jumbo v5, "getMaxEmailAgeFilter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7

    if-eqz p4, :cond_d6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e5

    :cond_d6
    const/4 v5, 0x0

    return-object v5

    :cond_d7
    const-string/jumbo v5, "setAccountEmailPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e7

    if-eqz p4, :cond_d8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_e6

    :cond_d8
    const/4 v5, 0x0

    return-object v5

    :cond_d9
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getRequiredSignedMIMEMessages"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_54
    return-object v53

    :cond_da
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getRequiredEncryptedMIMEMessages"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_54

    :cond_db
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getForceSMIMECertificate"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_54

    :cond_dc
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isIncomingAttachmentsAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_dd
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v72

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getIncomingAttachmentSize"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_de
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v72

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getMaxCalendarAgeFilter"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_df
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v72

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getMaxEmailBodyTruncationSize"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_e0
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v72

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getMaxEmailHTMLBodyTruncationSize"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_e1
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getForceSMIMECertificateForSigning"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_e2
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getForceSMIMECertificateForEncryption"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_e3
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v67

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAccountEmailPassword"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v67, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_e4
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v19

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAccountCertificatePassword"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_e5
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v72

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getMaxEmailAgeFilter"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_e6
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v54

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "setAccountEmailPassword"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    :cond_e7
    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    return-object v5

    :pswitch_6
    const-string/jumbo v5, "wifi_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v51, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "getAllowUserPolicyChanges"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e9

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAllowUserPolicyChanges"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_e8
    :goto_55
    return-object v53

    :cond_e9
    const-string/jumbo v5, "getAllowUserProfiles"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_eb

    if-eqz p4, :cond_ea

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_f6

    :cond_ea
    const/4 v5, 0x0

    return-object v5

    :cond_eb
    const-string/jumbo v5, "getAutomaticConnectionToWifi"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ec

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAutomaticConnectionToWifi"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_55

    :cond_ec
    const-string/jumbo v5, "getPasswordHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ed

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getPasswordHidden"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_ed
    const-string/jumbo v5, "getPromptCredentialsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getPromptCredentialsEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_ee
    const-string/jumbo v5, "isEnterpriseNetwork"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f0

    if-eqz p4, :cond_ef

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_f7

    :cond_ef
    const/4 v5, 0x0

    return-object v5

    :cond_f0
    const-string/jumbo v5, "isWifiApSettingUserModificationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f1

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isWifiApSettingUserModificationAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_f1
    const-string/jumbo v5, "isWifiStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f2

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isWifiStateChangeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_f2
    const-string/jumbo v5, "isOpenWifiApAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f3

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isOpenWifiApAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_f3
    const-string/jumbo v5, "getAllSsidBlacklist"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f4

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidBlacklist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v15

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAllSsidBlacklist"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v15, :cond_f8

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_f8

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_56
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e8

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WIFIPOLICY_ALLSSIDBLACKLIST_METHOD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_56

    :cond_f4
    const-string/jumbo v5, "getAllSsidWhitelist"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllSsidWhitelist(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v90

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAllSsidWhitelist"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v90, :cond_f9

    invoke-interface/range {v90 .. v90}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_f9

    invoke-interface/range {v90 .. v90}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_57
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e8

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Ljava/lang/String;

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WIFIPOLICY_ALLSSIDWHITELIST_METHOD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v88

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v88, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_57

    :cond_f5
    const-string/jumbo v5, "isWifiSsidRestrictionActive"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fa

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isWifiSsidRestrictionActive"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_f6
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v51

    move/from16 v1, v85

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAllowUserProfiles"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_f7
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isEnterpriseNetwork"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_f8
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_f9
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_fa
    const/4 v5, 0x0

    return-object v5

    :pswitch_7
    const-string/jumbo v5, "kioskmode"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    if-eqz v46, :cond_0

    const-string/jumbo v5, "isNavigationBarHidden"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fc

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isNavigationBarHidden"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_fb
    :goto_58
    return-object v53

    :cond_fc
    const-string/jumbo v5, "isMultiWindowModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    if-eqz p4, :cond_fd

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_10d

    :cond_fd
    const/4 v5, 0x0

    return-object v5

    :cond_fe
    const-string/jumbo v5, "isMultiWindowModeAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    if-eqz p4, :cond_ff

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_10e

    :cond_ff
    const/4 v5, 0x0

    return-object v5

    :cond_100
    const-string/jumbo v5, "isAirCommandModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_101

    if-nez p4, :cond_10f

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    :goto_59
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirCommandModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v73

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isAirCommandModeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_101
    const-string/jumbo v5, "isAirViewModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_102

    if-nez p4, :cond_110

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    :goto_5a
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirViewModeAllowed return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v73

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isAirViewModeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_102
    const-string/jumbo v5, "getBlockedHwKeysCache"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    invoke-virtual/range {v46 .. v46}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v75

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getBlockedHwKeysCache"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v75, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_103
    const-string/jumbo v5, "isTaskManagerAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_105

    if-eqz p4, :cond_104

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_111

    :cond_104
    const/4 v5, 0x0

    return-object v5

    :cond_105
    const-string/jumbo v5, "isKioskModeEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_106

    if-nez p4, :cond_112

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    :goto_5b
    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKioskModeEnabled return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v73

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isKioskModeEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_106
    const-string/jumbo v5, "getKioskHomePackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_107

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v33

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getKioskHomePackage"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v33, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_107
    const-string/jumbo v5, "isNightClockAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_108

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isNightClockAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_108
    const-string/jumbo v5, "isPeopleEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_109

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isPeopleEdgeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_109
    const-string/jumbo v5, "isEdgeLightingAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10a

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isEdgeLightingAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_10a
    const-string/jumbo v5, "isInformationStreamAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10b

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isInformationStreamAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_10b
    const-string/jumbo v5, "isAppsEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10c

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isAppsEdgeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_10c
    const-string/jumbo v5, "isEdgeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fb

    const/4 v5, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isEdgeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_10d
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isMultiWindowModeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_10e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v73

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v73

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isMultiWindowModeAllowedAsUser"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_10f
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirCommandModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    :cond_110
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isAirViewModeAllowed uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    :cond_111
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v46

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isTaskManagerAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_58

    :cond_112
    const/4 v5, 0x0

    aget-object v62, p4, v5

    move-object/from16 v0, p4

    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_113

    const/4 v5, 0x1

    aget-object v5, p4, v5

    const-string/jumbo v6, "emergency"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_113

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeProcessingOrEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    const-string/jumbo v5, "SecContentProvider2"

    const-string/jumbo v6, "isKioskModeEnabled param EMERGENCY"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    :cond_113
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    const-string/jumbo v5, "SecContentProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKioskModeEnabled param UID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v62

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    :pswitch_8
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v45

    if-eqz v45, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "getAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_115

    if-eqz p4, :cond_114

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_126

    :cond_114
    const/4 v5, 0x0

    return-object v5

    :cond_115
    const-string/jumbo v5, "getActiveAdmins"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_117

    if-eqz p4, :cond_116

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_127

    :cond_116
    const/4 v5, 0x0

    return-object v5

    :cond_117
    const-string/jumbo v5, "getRemoveWarning"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_119

    if-eqz p4, :cond_118

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_128

    :cond_118
    const/4 v5, 0x0

    return-object v5

    :cond_119
    const-string/jumbo v5, "isAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11b

    if-eqz p4, :cond_11a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_129

    :cond_11a
    const/4 v5, 0x0

    return-object v5

    :cond_11b
    const-string/jumbo v5, "setActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11d

    if-eqz p4, :cond_11c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_12a

    :cond_11c
    const/4 v5, 0x0

    return-object v5

    :cond_11d
    const-string/jumbo v5, "removeActiveAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11f

    if-eqz p4, :cond_11e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_12b

    :cond_11e
    const/4 v5, 0x0

    return-object v5

    :cond_11f
    const-string/jumbo v5, "setAdminRemovable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_121

    if-eqz p4, :cond_120

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_12c

    :cond_120
    const/4 v5, 0x0

    return-object v5

    :cond_121
    const-string/jumbo v5, "updateAdminPermissions"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_123

    :cond_122
    :goto_5c
    return-object v53

    :cond_123
    const-string/jumbo v5, "getMyKnoxAdmin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getMyKnoxAdmin(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v11

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getMyKnoxAdmin"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5c

    :cond_124
    const-string/jumbo v5, "isMdmAdminPresent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_125

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v82

    :try_start_40
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v73

    new-instance v56, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v56

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_0

    const/4 v5, 0x1

    :try_start_41
    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_1

    invoke-static/range {v82 .. v83}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v53, v56

    goto :goto_5c

    :cond_125
    const-string/jumbo v5, "getEnterpriseSdkVer"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_122

    const-string/jumbo v5, "22"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getEnterpriseSdkVer"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_126
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAdminRemovable"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_127
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v52

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getActiveAdmins"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v52, :cond_122

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_122

    invoke-interface/range {v52 .. v52}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v89

    :goto_5d
    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_122

    invoke-interface/range {v89 .. v89}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/ComponentName;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual/range {v86 .. v86}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5d

    :cond_128
    const/4 v5, 0x0

    :try_start_42
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    move-object/from16 v0, v45

    invoke-virtual {v0, v6, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_42} :catch_40

    goto/16 :goto_5c

    :catch_40
    move-exception v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5c

    :cond_129
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isAdminRemovable"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_12a
    const/4 v5, 0x0

    :try_start_43
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_43} :catch_41

    goto/16 :goto_5c

    :catch_41
    move-exception v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5c

    :cond_12b
    const/4 v5, 0x0

    :try_start_44
    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_44} :catch_42

    goto/16 :goto_5c

    :catch_42
    move-exception v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5c

    :cond_12c
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    aget-object v7, p4, v7

    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "setAdminRemovable"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :catchall_0
    move-exception v5

    :goto_5e
    invoke-static/range {v82 .. v83}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :pswitch_9
    const-string/jumbo v5, "email_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/enterprise/email/EmailPolicy;

    if-eqz v44, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12d

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isAccountAdditionAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_5f
    return-object v53

    :cond_12d
    const-string/jumbo v5, "getAllowEmailForwarding"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12f

    if-eqz p4, :cond_12e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_139

    :cond_12e
    const/4 v5, 0x0

    return-object v5

    :cond_12f
    const-string/jumbo v5, "isEmailSettingsChangesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_131

    if-eqz p4, :cond_130

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13a

    :cond_130
    const/4 v5, 0x0

    return-object v5

    :cond_131
    const-string/jumbo v5, "isEmailNotificationsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    if-eqz p4, :cond_132

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13b

    :cond_132
    const/4 v5, 0x0

    return-object v5

    :cond_133
    const-string/jumbo v5, "getAllowHtmlEmail"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_135

    if-eqz p4, :cond_134

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13c

    :cond_134
    const/4 v5, 0x0

    return-object v5

    :cond_135
    const-string/jumbo v5, "getEnterpriseExchangeAccountObject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_137

    if-eqz p4, :cond_136

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13d

    :cond_136
    const/4 v5, 0x0

    return-object v5

    :cond_137
    const-string/jumbo v5, "getEnterpriseEmailAccountObject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13f

    if-eqz p4, :cond_138

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_13e

    :cond_138
    const/4 v5, 0x0

    return-object v5

    :cond_139
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAllowEmailForwarding"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5f

    :cond_13a
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isEmailSettingsChangesAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5f

    :cond_13b
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isEmailNotificationsEnabled"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5f

    :cond_13c
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getAllowHtmlEmail"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5f

    :cond_13d
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v58

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getEnterpriseExchangeAccountObject"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "eas.account"

    move-object/from16 v0, v16

    move-object/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_5f

    :cond_13e
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v59

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getEnterpriseEmailAccountObject"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "email.account"

    move-object/from16 v0, v16

    move-object/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->setBundle(Landroid/os/Bundle;)V

    goto/16 :goto_5f

    :cond_13f
    const/4 v5, 0x0

    return-object v5

    :pswitch_a
    const-string/jumbo v5, "vpn_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    if-eqz v50, :cond_0

    const-string/jumbo v5, "checkRacoonSecurity"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_141

    if-eqz p4, :cond_140

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_147

    :cond_140
    const/4 v5, 0x0

    return-object v5

    :cond_141
    const-string/jumbo v5, "isUserAddProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_143

    const/4 v13, 0x0

    if-eqz p4, :cond_142

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_142

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    :cond_142
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v50

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isUserAddProfilesAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_60
    return-object v53

    :cond_143
    const-string/jumbo v5, "isUserChangeProfilesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_145

    const/4 v13, 0x0

    if-eqz p4, :cond_144

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_144

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    :cond_144
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v50

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isUserChangeProfilesAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_60

    :cond_145
    const-string/jumbo v5, "isUserSetAlwaysOnAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_148

    const/4 v13, 0x0

    if-eqz p4, :cond_146

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_146

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    :cond_146
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v50

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isUserSetAlwaysOnAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_60

    :cond_147
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v50

    move-object/from16 v1, p4

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "checkRacoonSecurity"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_60

    :cond_148
    const/4 v5, 0x0

    return-object v5

    :pswitch_b
    const-string/jumbo v5, "knox_ccm_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    if-eqz v39, :cond_0

    const-string/jumbo v5, "installCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14a

    if-eqz p4, :cond_149

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_14f

    :cond_149
    const/4 v5, 0x0

    return-object v5

    :cond_14a
    const-string/jumbo v5, "deleteCertificate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14c

    if-eqz p4, :cond_14b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_151

    :cond_14b
    const/4 v5, 0x0

    return-object v5

    :cond_14c
    const-string/jumbo v5, "isCCMPolicyEnabledForPackage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14e

    if-eqz p4, :cond_14d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_152

    :cond_14d
    const/4 v5, 0x0

    return-object v5

    :cond_14e
    const-string/jumbo v5, "getCCMVersion"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_153

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v18

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getCCMVersion"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v18, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_61
    return-object v53

    :cond_14f
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Lcom/samsung/android/knox/keystore/CertificateProfile;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/knox/keystore/CertificateProfile;-><init>()V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->isCSRResponse:Z

    const/4 v5, 0x1

    aget-object v5, p4, v5

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowWiFi:Z

    const/4 v5, 0x3

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lcom/samsung/android/knox/keystore/CertificateProfile;->allowAllPackages:Z

    const/16 v34, 0x4

    :goto_62
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    move/from16 v0, v34

    if-ge v0, v5, :cond_150

    aget-object v5, p4, v34

    move-object/from16 v0, v61

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v34, v34, 0x1

    goto :goto_62

    :cond_150
    move-object/from16 v0, v61

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/samsung/android/knox/keystore/CertificateProfile;->packageList:Ljava/util/List;

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    add-int/lit8 v6, v14, -0x2

    aget-object v6, p4, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    add-int/lit8 v7, v14, -0x1

    aget-object v7, p4, v7

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/CertificateProfile;[BLjava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "installCertificate"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    :cond_151
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "deleteCertificate"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    :cond_152
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v39

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isCCMPolicyEnabledForPackage"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    :cond_153
    const/4 v5, 0x0

    return-object v5

    :pswitch_c
    const-string/jumbo v5, "multi_user_manager_service"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    if-eqz v48, :cond_0

    const-string/jumbo v5, "multipleUsersAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_155

    const/4 v13, 0x0

    if-eqz p4, :cond_154

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_154

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    :cond_154
    :try_start_45
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_45} :catch_43

    move-result v72

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "multipleUsersAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_63
    return-object v53

    :cond_155
    const-string/jumbo v5, "isUserCreationAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_157

    const/4 v13, 0x0

    if-eqz p4, :cond_156

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_156

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    :cond_156
    :try_start_46
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_44

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isUserCreationAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_63

    :cond_157
    const-string/jumbo v5, "isUserRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_159

    const/4 v13, 0x0

    if-eqz p4, :cond_158

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_158

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    :cond_158
    :try_start_47
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v13}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_47} :catch_45

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isUserRemovalAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_63

    :cond_159
    const-string/jumbo v5, "multipleUsersSupported"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15a

    :try_start_48
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_48} :catch_46

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_63

    :catch_43
    move-exception v27

    const/4 v5, 0x0

    return-object v5

    :catch_44
    move-exception v28

    const/4 v5, 0x0

    return-object v5

    :catch_45
    move-exception v27

    const/4 v5, 0x0

    return-object v5

    :catch_46
    move-exception v27

    const/4 v5, 0x0

    return-object v5

    :cond_15a
    const/4 v5, 0x0

    return-object v5

    :pswitch_d
    const-string/jumbo v5, "device_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    if-eqz v40, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "isAccountRemovalAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15c

    if-eqz p4, :cond_15b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_15e

    :cond_15b
    const/4 v5, 0x0

    return-object v5

    :cond_15c
    const-string/jumbo v5, "isAccountAdditionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_160

    if-eqz p4, :cond_15d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_15f

    :cond_15d
    const/4 v5, 0x0

    return-object v5

    :cond_15e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isAccountRemovalAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_64
    return-object v53

    :cond_15f
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/4 v7, 0x2

    aget-object v7, p4, v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isAccountAdditionAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_64

    :cond_160
    const/4 v5, 0x0

    return-object v5

    :pswitch_e
    const-string/jumbo v5, "misc_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v47, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "getCurrentLockScreenString"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_161

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v26

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getCurrentLockScreenString"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v26, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_65
    return-object v53

    :cond_161
    const-string/jumbo v5, "isNFCStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_162

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v73

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "isNFCStateChangeAllowed"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static/range {v73 .. v73}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_65

    :cond_162
    const/4 v5, 0x0

    return-object v5

    :pswitch_f
    const-string/jumbo v5, "email_account_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    if-eqz v43, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "getSecurityIncomingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_164

    if-eqz p4, :cond_163

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_16a

    :cond_163
    const/4 v5, 0x0

    return-object v5

    :cond_164
    const-string/jumbo v5, "getSecurityOutgoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_166

    if-eqz p4, :cond_165

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_16b

    :cond_165
    const/4 v5, 0x0

    return-object v5

    :cond_166
    const-string/jumbo v5, "setSecurityInComingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_168

    if-eqz p4, :cond_167

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_16c

    :cond_167
    const/4 v5, 0x0

    return-object v5

    :cond_168
    const-string/jumbo v5, "setSecurityOutGoingServerPassword"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16e

    if-eqz p4, :cond_169

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_16d

    :cond_169
    const/4 v5, 0x0

    return-object v5

    :cond_16a
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v35

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSecurityIncomingServerPassword"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v35, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_66
    return-object v53

    :cond_16b
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v60

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getSecurityOutgoingServerPassword"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v60, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_66

    :cond_16c
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v54

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_66

    :cond_16d
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v54

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static/range {v54 .. v55}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_66

    :cond_16e
    const/4 v5, 0x0

    return-object v5

    :pswitch_10
    const-string/jumbo v5, "dualsim_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    if-eqz v41, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v5, "getpreferredsimslot"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    move/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getPreferredSimSlot(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v72

    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "getpreferredsimslot"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v53

    :catchall_1
    move-exception v5

    move-object/from16 v53, v56

    goto/16 :goto_5e

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_10
        :pswitch_9
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_e
        :pswitch_c
        :pswitch_1
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
