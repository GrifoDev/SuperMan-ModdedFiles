.class public Lcom/absolute/android/persistence/AppInfoProperties;
.super Ljava/util/Properties;
.source "AppInfoProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String; = null

.field public static CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/AppInfoProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String; = null

.field public static DOWNLOAD_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String; = null

.field public static DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MONITOR_PROPERTY_NAME:Ljava/lang/String; = null

.field public static PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String; = null

.field public static PERSIST_PROPERTY_NAME:Ljava/lang/String; = null

.field public static RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String; = null

.field public static START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String; = null

.field public static START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_URL_PROPERTY_NAME:Ljava/lang/String; = null

.field public static VERSION_CODE_PROPERTY_NAME:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "PackageName"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "VersionCode"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "UpdateUrl"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_URL_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "UpdateIpAddress"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "UpdateHostSPKIHash"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "AccessKey"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "MaxUpdateAttempts"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "UpdateRetryMinutes"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "Persist"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->PERSIST_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "StartOnInstall"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "StartOnInstallIntent"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "RestartIntent"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "Monitor"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "MonitorIntents"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "CheckRunningSecs"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "MaxRestartAttempts"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "DownloadUrl"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "DownloadIpAddress"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "DownloadHostSPKIHash"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v0, "DigitalSignature"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String;

    new-instance v0, Lcom/absolute/android/persistence/AppInfoProperties$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppInfoProperties$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v6, Lcom/absolute/android/persistence/AppInfoProperties;->PERSIST_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eq v3, v5, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v6, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eq v3, v5, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eq v6, v5, :cond_3

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_0
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_1
    move v3, v5

    goto/16 :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_3
    array-length v3, v1

    if-ge v0, v3, :cond_0

    if-gtz v0, :cond_5

    :goto_4
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/AppInfoProperties$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/AppInfoProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppProfile(Lcom/absolute/android/persistence/AppProfile;)Lcom/absolute/android/persistence/AppProfile;
    .locals 23

    if-eqz p1, :cond_0

    :goto_0
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getAccessKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateIpAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateHostSPKIHash()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->PERSIST_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstall()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstallIntent()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getRestartIntent()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v16, 0x0

    if-nez v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getMonitorIntents()[Ljava/lang/String;

    move-result-object v16

    :goto_1
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getMaxRestartAttempts()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    new-instance v3, Lcom/absolute/android/persistence/AppProfile;

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/absolute/android/persistence/AppProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V

    if-nez v21, :cond_2

    :goto_2
    return-object v3

    :cond_0
    new-instance p1, Lcom/absolute/android/persistence/AppProfile;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v19, Ljava/lang/String;

    invoke-direct/range {v19 .. v19}, Ljava/lang/String;-><init>()V

    const/16 v22, 0x0

    aput-object v19, v16, v22

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v3 .. v19}, Lcom/absolute/android/persistence/AppProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v19, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistence/AppProfile;->setUpdateHostSPKIHash(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getAppVersion()I
    .locals 2

    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDigitalSignature()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadHostSPKIHash()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadIpAddress()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppProfile(Lcom/absolute/android/persistence/AppProfile;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstall()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstallIntent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getRestartIntent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMonitorIntents()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMaxRestartAttempts()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppInfoProperties;->getDigitalSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method
