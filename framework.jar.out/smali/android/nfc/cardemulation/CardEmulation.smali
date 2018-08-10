.class public final Landroid/nfc/cardemulation/CardEmulation;
.super Ljava/lang/Object;
.source "CardEmulation.java"


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT"

.field public static final CATEGORY_OTHER:Ljava/lang/String; = "other"

.field public static final CATEGORY_PAYMENT:Ljava/lang/String; = "payment"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRA_SERVICE_COMPONENT:Ljava/lang/String; = "component"

.field public static final SELECTION_MODE_ALWAYS_ASK:I = 0x1

.field public static final SELECTION_MODE_ASK_IF_CONFLICT:I = 0x2

.field public static final SELECTION_MODE_PREFER_DEFAULT:I = 0x0

.field public static final SEM_ACTION_FOREGROUND:Ljava/lang/String; = "com.samsung.android.nfc.cardemulation.action.SEM_ACTION_FOREGROUND"

.field public static final SEM_ROUTE_POLICY_BATTERY_OFF:I = 0x4

.field public static final SEM_ROUTE_POLICY_SCREEN_OFF:I = 0x8

.field public static final SEM_ROUTE_POLICY_SCREEN_ON_LOCKED:I = 0x10

.field public static final SEM_ROUTE_POLICY_SCREEN_ON_UNLOCKED:I = 0x20

.field public static final SEM_ROUTE_POLICY_SWITCHED_OFF:I = 0x2

.field public static final SEM_ROUTE_POLICY_SWITCHED_ON:I = 0x1

.field static final TAG:Ljava/lang/String; = "CardEmulation"

.field static sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/CardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static sIsInitialized:Z

.field static sService:Landroid/nfc/INfcCardEmulation;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    sput-object p2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;
    .locals 8

    const-class v6, Landroid/nfc/cardemulation/CardEmulation;

    monitor-enter v6

    if-nez p0, :cond_0

    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "NfcAdapter is null"

    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v5, "CardEmulation"

    const-string/jumbo v7, "NfcAdapter context is null."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    :cond_1
    sget-boolean v5, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    if-nez v5, :cond_4

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v5, "CardEmulation"

    const-string/jumbo v7, "Cannot get PackageManager"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    const-string/jumbo v5, "android.hardware.nfc.hce"

    const/4 v7, 0x0

    invoke-interface {v3, v5, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "CardEmulation"

    const-string/jumbo v7, "This device does not support card emulation"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v5, "CardEmulation"

    const-string/jumbo v7, "PackageManager query failed."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Landroid/nfc/cardemulation/CardEmulation;->sIsInitialized:Z

    :cond_4
    sget-object v5, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/CardEmulation;

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v4

    if-nez v4, :cond_5

    const-string/jumbo v5, "CardEmulation"

    const-string/jumbo v7, "This device does not implement the INfcCardEmulation interface."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    :cond_5
    new-instance v2, Landroid/nfc/cardemulation/CardEmulation;

    invoke-direct {v2, v0, v4}, Landroid/nfc/cardemulation/CardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcCardEmulation;)V

    sget-object v5, Landroid/nfc/cardemulation/CardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit v6

    return-object v2
.end method

.method public static isValidAid(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return v3

    :cond_0
    const-string/jumbo v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const-string/jumbo v0, "CardEmulation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid AID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string/jumbo v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const-string/jumbo v0, "CardEmulation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid AID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string/jumbo v0, "[0-9A-Fa-f]{10,32}\\*?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "CardEmulation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid AID."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public categoryAllowsForegroundPreference(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v2, "payment"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "nfc_payment_foreground"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disableAutoRouting()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->disableAutoRouting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->disableAutoRouting()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public enableAutoRouting()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->enableAutoRouting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->enableAutoRouting()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getAidSizeForServiceInPercent(Landroid/content/ComponentName;)I
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->getAidSizeForServiceInPercent(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->getAidSizeForServiceInPercent(ILandroid/content/ComponentName;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v4, :cond_1

    const-string/jumbo v4, "CardEmulation"

    const-string/jumbo v5, "Failed to recover CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    :try_start_1
    sget-object v4, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, v5, p1, p2}, Landroid/nfc/INfcCardEmulation;->getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->getAids()Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :cond_2
    return-object v3

    :catch_1
    move-exception v1

    const-string/jumbo v4, "CardEmulation"

    const-string/jumbo v5, "Failed to recover CardEmulationService."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public getPaymentDefaultServiceInfo()Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcCardEmulation;->getPaymentDefaultServiceInfo(I)Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcCardEmulation;->getPaymentDefaultServiceInfo(I)Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getPaymentPriority()Landroid/content/ComponentName;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcCardEmulation;->getPaymentPriority(I)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcCardEmulation;->getPaymentPriority(I)Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getSelectionModeForCategory(Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v1, "payment"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "nfc_payment_default_component"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x2

    return v1
.end method

.method public getServices(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->getServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getUsedAidTableSizeInPercent(Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->getUsedAidTableSizeInPercent(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->getUsedAidTableSizeInPercent(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public initializePaymentDefault(I)V
    .locals 4

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->initializePaymentDefault(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->initializePaymentDefault(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isDefaultServiceForAid(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public isDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method recoverService()V
    .locals 2

    iget-object v1, p0, Landroid/nfc/cardemulation/CardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getCardEmulationService()Landroid/nfc/INfcCardEmulation;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    return-void
.end method

.method public registerAidsForService(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v0, p3, p2}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :try_start_0
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v3, :cond_0

    const-string/jumbo v3, "CardEmulation"

    const-string/jumbo v4, "Failed to recover CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    :try_start_1
    sget-object v3, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v3, v4, p1, v0}, Landroid/nfc/INfcCardEmulation;->registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    return v3

    :catch_1
    move-exception v2

    const-string/jumbo v3, "CardEmulation"

    const-string/jumbo v4, "Failed to reach CardEmulationService."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public registerService(Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 6

    const/16 v5, 0x2397

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service or category is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, p2, v4}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, p2, v4}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public registerService(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 4

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/nfc/INfcCardEmulation;->registerService(ILandroid/content/ComponentName;Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeAidsForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public semDisableAutoRouting()Z
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->disableAutoRouting()Z

    move-result v0

    return v0
.end method

.method public semEnableAutoRouting()Z
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->enableAutoRouting()Z

    move-result v0

    return v0
.end method

.method public semGetServices(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/SemApduServiceInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public semIsAutoRoutingSupported()Z
    .locals 1

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->supportsAutoRouting()Z

    move-result v0

    return v0
.end method

.method public semIsRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/nfc/cardemulation/CardEmulation;->isRegisteredService(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public semSetAidsPolicyForService(Landroid/content/ComponentName;Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/nfc/INfcCardEmulation;->setAidsPolicyForService(ILandroid/content/ComponentName;Ljava/util/List;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2, p3}, Landroid/nfc/INfcCardEmulation;->setAidsPolicyForService(ILandroid/content/ComponentName;Ljava/util/List;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public semSetOtherService(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/CardEmulation;->setOtherService(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public semUnsetOtherService(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/CardEmulation;->unsetOtherService(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public setDefaultForNextTap(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public setDefaultServiceForCategory(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcCardEmulation;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public setLockPassword(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "data is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2, p1}, Landroid/nfc/INfcCardEmulation;->setLockPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2, p1}, Landroid/nfc/INfcCardEmulation;->setLockPassword(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public setOtherService(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity or service or category is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->setOtherService(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->setOtherService(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public setPreferredService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity or service or category is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Activity must be resumed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2, p2}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_3

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2, p2}, Landroid/nfc/INfcCardEmulation;->setPreferredService(Landroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->supportsAidPrefixRegistration()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public supportsAutoRouting()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->supportsAutoRouting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_0

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->supportsAutoRouting()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public unregisterOtherService(Landroid/content/ComponentName;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service or category is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->unregisterOtherService(ILandroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_1

    return-void

    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->unregisterOtherService(ILandroid/content/ComponentName;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unsetOtherService(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity or service or category is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->unsetOtherService(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcCardEmulation;->unsetOtherService(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public unsetPreferredService(Landroid/app/Activity;)Z
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Activity must be resumed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/CardEmulation;->recoverService()V

    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    if-nez v2, :cond_2

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/CardEmulation;->sService:Landroid/nfc/INfcCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcCardEmulation;->unsetPreferredService()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "CardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
