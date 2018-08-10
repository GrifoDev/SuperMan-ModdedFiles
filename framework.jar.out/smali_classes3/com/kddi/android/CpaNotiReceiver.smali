.class public Lcom/kddi/android/CpaNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CpaNotiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    }
.end annotation


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field private static final APN_CPA_KEY:Ljava/lang/String; = "5"

.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static final APN_NAVI_KEY:Ljava/lang/String; = "6"

.field public static final AUTHENTICATION_ERROR:I = -0x3

.field public static final AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final BEARER:Ljava/lang/String; = "bearer"

.field public static final CARRIER_ENABLED:Ljava/lang/String; = "carrier_enabled"

.field private static final CARRIER_ENABLED_INDEX:I = 0x4

.field public static final CHANGE_MODE_CPA_REQUEST:Ljava/lang/String; = "com.kddi.android.cpa.CHANGE_MODE_CPA_REQUEST"

.field public static final CHANGE_MODE_REQUEST_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

.field public static final CPA_ENABLED:Ljava/lang/String; = "com.kddi.android.cpa.CPA_ENABLED"

.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final DISCONNECTED:I = 0x4

.field public static final DISCONNECTING:I = 0x3

.field public static final ID:Ljava/lang/String; = "_id"

.field private static final ID_INDEX:I = 0x0

.field public static final KDIAPN_URI:Ljava/lang/String; = "content://telephony/carriers"

.field private static final KDI_APN_KEY_URI:Landroid/net/Uri;

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MMSC:Ljava/lang/String; = "mmsc"

.field public static final MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final MOBILE_DATA_ERROR:Ljava/lang/String; = "com.kddi.android.cpa.MOBILE_DATA_ERROR"

.field public static MODE_CPA:Ljava/lang/String; = null

.field public static MODE_DEFAULT:Ljava/lang/String; = null

.field public static MODE_NAVI:Ljava/lang/String; = null

.field public static final NAME:Ljava/lang/String; = "name"

.field private static final NAME_INDEX:I = 0x1

.field public static final NAVI_APN_NAME:Ljava/lang/String; = "Manual_for_Navi"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field public static final PARAMETER_ERROR:I = -0x1

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PORT:Ljava/lang/String; = "port"

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final RADIO_NOT_AVAILABLE:I = -0x2

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field public static final ROAMING_PROTOCOL:Ljava/lang/String; = "roaming_protocol"

.field public static final SERVER:Ljava/lang/String; = "server"

.field static final STATUS_ALERT_AUTHENTICATION_FAILED:I = 0xa

.field static final STATUS_ALERT_CONNECTION_FAIL_OTHER:I = 0xc

.field static final STATUS_ALERT_OUT_OF_3G_NETWORK:I = 0xb

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CpaNotiReceiver"

.field public static final TYPE:Ljava/lang/String; = "type"

.field private static final TYPES_INDEX:I = 0x3

.field public static final UNKNOWN_ERROR:I = -0x4

.field public static final USER:Ljava/lang/String; = "user"

.field private static mNotiManager:Landroid/app/NotificationManager;

.field private static mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private DBG:Z

.field private final IS_CPA:Ljava/lang/String;

.field private isWifiTethered:Z

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mSelectedKey:Ljava/lang/String;

.field private mState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "NAVI"

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    const-string/jumbo v0, "DEFAULT"

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    const-string/jumbo v0, "DEFAULT_ON_CPA"

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_CPA:Ljava/lang/String;

    const-string/jumbo v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->DEFAULTAPN_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "apn"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "proxy"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "port"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "user"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "server"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "password"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "mmsc"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "mcc"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "mnc"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "numeric"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "mmsproxy"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "mmsport"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "authtype"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "type"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "protocol"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "carrier_enabled"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "bearer"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "roaming_protocol"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->sProjection:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/kddi/android/CpaNotiReceiver;->mNotiManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    iput v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mState:I

    const-string/jumbo v0, "isCPA"

    iput-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->IS_CPA:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->isWifiTethered:Z

    iput-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private changeStateToBtDunType(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .locals 4

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    const-string/jumbo v1, "CpaNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeStateToBtDunType() phoneState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> btDunState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    return-object p1
.end method

.method private getCurrentMode()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v2, "6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_CPA:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    :cond_0
    return-object v2
.end method

.method private getNaviState()I
    .locals 3

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kddi_cpa_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v8

    const-string/jumbo v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v7

    :cond_0
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "getSelectedApnKey() error!! selected key is nothing. return first apn\'s key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v7, "1"

    goto :goto_0
.end method

.method private getWifiTetherState()Z
    .locals 14

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    array-length v9, v0

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v2, v0, v8

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    array-length v10, v1

    move v6, v7

    :goto_1
    if-ge v6, v10, :cond_2

    aget-object v3, v1, v6

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "CpaNotiReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getWifiTetherState() regex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    :cond_3
    iget-boolean v6, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "CpaNotiReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiTetherState() wifiTethered = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5
.end method

.method private handleMobileDataErrorForCpa(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V
    .locals 3

    const-string/jumbo v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMobileDataErrorForCpa: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", exitCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->showAlertDialog(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->showAlertDialog(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->showAlertDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleMobileDataErrorForNavi(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V
    .locals 5

    const/4 v4, 0x4

    const-string/jumbo v1, "CpaNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMobileDataErrorForNavi: phoneState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", exitCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/kddi/android/CpaNotiReceiver;->changeStateToBtDunType(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v1

    if-eq v1, v4, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    invoke-virtual {p0, v4, p2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private loadPrevApnInfo()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevSelectedKey()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v11

    const-string/jumbo v4, "name"

    aput-object v4, v2, v12

    const-string/jumbo v4, "apn"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string/jumbo v4, "type"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const-string/jumbo v4, "carrier_enabled"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const-string/jumbo v5, "name ASC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "_id=?"

    new-array v4, v12, [Ljava/lang/String;

    aput-object v7, v4, v11

    invoke-virtual {v0, v1, v10, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "2"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "3"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "4"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "6"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "0"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-string/jumbo v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadPrevApnInfo() Selected key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevSelectedKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevSelectedKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setSelectedApnKey(Ljava/lang/String;)V

    return-void
.end method

.method private loadPrevSelectedKey()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "persist.radio.cpa_selected_key"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private naviAuthFailedProcess()V
    .locals 0

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevApnInfo()V

    return-void
.end method

.method private notifyCpaEnabled()V
    .locals 3

    iget-boolean v1, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CpaNotiReceiver"

    const-string/jumbo v2, "notifyCpaEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.kddi.android.cpa.CPA_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private savePrevSelectedKey(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "savePrevSelectedKey()key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "persist.radio.cpa_selected_key"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setApnCarrierEnabledStatus(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v10

    const-string/jumbo v4, "name"

    aput-object v4, v2, v11

    const-string/jumbo v4, "apn"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string/jumbo v4, "type"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const-string/jumbo v4, "carrier_enabled"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const-string/jumbo v5, "name ASC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "0"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "_id=?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object v7, v4, v10

    invoke-virtual {v0, v1, v9, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "2"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "0"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "3"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "4"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "0"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "5"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "1"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "6"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v1, "1"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private setApnListItem(Lcom/kddi/android/CpaNotiReceiver$NaviSettings;)V
    .locals 8

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CpaNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setApnListItem() start! settings = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "6"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/kddi/android/CpaNotiReceiver;->sProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_3

    :try_start_0
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CpaNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", APN_NAVI_KEY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "6"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-direct {p0, v1, v6}, Lcom/kddi/android/CpaNotiReceiver;->validateAndSave(Landroid/net/Uri;Landroid/database/Cursor;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :try_start_1
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v2, " cursor is null!! "

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v7

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private setNaviState(I)V
    .locals 2

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "kddi_cpa_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/kddi/android/CpaNotiReceiver;->mSelectedKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSelectedApnKey() Key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kddi/android/CpaNotiReceiver;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "apn_id"

    iget-object v3, p0, Lcom/kddi/android/CpaNotiReceiver;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/kddi/android/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private showApnListForDebug()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "gsm.sim.operator.numeric"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->KDI_APN_KEY_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "name"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "apn"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string/jumbo v4, "type"

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const-string/jumbo v4, "carrier_enabled"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const-string/jumbo v5, "name ASC"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "showApnListForDebug()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "--------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mSelectedKey:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSelectedKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "CpaNotiReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "APNinfo :key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " carrier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", apn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "--------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;)Z
    .locals 11

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    array-length v8, p1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v1, p1, v7

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    array-length v9, v0

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_1

    aget-object v2, v0, v5

    invoke-virtual {v3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "CpaNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTetherState() wifiTethered = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v4
.end method

.method private validateAndSave(Landroid/net/Uri;Landroid/database/Cursor;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validateAndSave() start! cursor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "Manual_for_Navi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "apn name is different with navi\'s apn. (name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "CpaNotiReceiver"

    const-string/jumbo v3, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    return v2

    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "apn"

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v3, v3, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v3, v3, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->userId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "password"

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v3, v3, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->password:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "proxy"

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v3, v3, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyHost:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "port"

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v3, v3, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyPort:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kddi/android/CpaNotiReceiver;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "authtype"

    sget-object v3, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget v3, v3, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->authType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kddi_cpa_static_dns1"

    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns1:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kddi_cpa_static_dns2"

    sget-object v4, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v4, v4, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns2:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "CpaNotiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validateAndSave() end! uri ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", values ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v6
.end method


# virtual methods
.method public broadcastState(II)V
    .locals 8

    const-string/jumbo v5, "CpaNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "broadcastState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", error = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v5

    if-ne v5, p1, :cond_1

    iget-boolean v5, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "CpaNotiReceiver"

    const-string/jumbo v6, "broadcastState : State not changed return"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getNaviState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    iget-boolean v5, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "CpaNotiReceiver"

    const-string/jumbo v6, "broadcastState : Discard broadcasting illegal states"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/kddi/android/CpaNotiReceiver;->setNaviState(I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.kddi.android.cpa.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "connStatus"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "errno"

    invoke-virtual {v3, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v5, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "CpaNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Display for broadcating "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v5, 0x4

    if-ne p1, v5, :cond_6

    const-string/jumbo v5, "true"

    const-string/jumbo v6, "ril.cpa.isPrevWifiTethered"

    const-string/jumbo v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string/jumbo v5, "ril.cpa.isPrevWifiTethered"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "CpaNotiReceiver"

    const-string/jumbo v6, "prev wifi tethered - tether trigger"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v5, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "CpaNotiReceiver"

    const-string/jumbo v6, "broadcastState : not found CONNECTIVITY_ACTION"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "wifi"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "changeMode : Mode is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "changeMode : Mode is NAVI, settings is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    if-nez v0, :cond_2

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "changeMode : Mode is DEFAULT, mSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    return v0

    :cond_2
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "changeMode - MODE_NAVI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->isWifiTethered:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getWifiTetherState()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "wifi tethered - untether trigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v0, "ril.cpa.isPrevWifiTethered"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_5
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "changeMode - current mode is NAVI : return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2

    :cond_7
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "changeMode - start change mode DEFAULT -> NAVI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_0
    sput-object p2, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setApnListItem(Lcom/kddi/android/CpaNotiReceiver$NaviSettings;)V

    const-string/jumbo v0, "6"

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    const-string/jumbo v0, "6"

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setSelectedApnKey(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return v2

    :cond_a
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->savePrevSelectedKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "changeMode - case MODE_DEFAULT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "changeMode - current mode is DEFAULT : return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v2

    :cond_d
    iget-boolean v0, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "CpaNotiReceiver"

    const-string/jumbo v1, "changeMode - start change mode NAVI -> DEFAULT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "5"

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    const-string/jumbo v0, "5"

    invoke-direct {p0, v0}, Lcom/kddi/android/CpaNotiReceiver;->setSelectedApnKey(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/kddi/android/CpaNotiReceiver;->broadcastState(II)V

    goto :goto_1

    :cond_f
    invoke-direct {p0}, Lcom/kddi/android/CpaNotiReceiver;->loadPrevApnInfo()V

    goto :goto_2
.end method

.method public createSettingFromIntent(Landroid/content/Intent;)Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    .locals 3

    new-instance v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;-><init>(Lcom/kddi/android/CpaNotiReceiver$NaviSettings;)V

    const-string/jumbo v1, "settings.apn"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    const-string/jumbo v1, "settings.userId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->userId:Ljava/lang/String;

    const-string/jumbo v1, "settings.password"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->password:Ljava/lang/String;

    const-string/jumbo v1, "settings.authType"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->authType:I

    const-string/jumbo v1, "settings.proxyHost"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyHost:Ljava/lang/String;

    const-string/jumbo v1, "settings.proxyPort"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyPort:Ljava/lang/String;

    const-string/jumbo v1, "settings.dns1"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns1:Ljava/lang/String;

    const-string/jumbo v1, "settings.dns2"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns2:Ljava/lang/String;

    return-object v0
.end method

.method public createTestNaviSetting()Lcom/kddi/android/CpaNotiReceiver$NaviSettings;
    .locals 2

    new-instance v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;-><init>(Lcom/kddi/android/CpaNotiReceiver$NaviSettings;)V

    const-string/jumbo v1, "unitrg.au-net.ne.jp"

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    const-string/jumbo v1, "X36yN3Dhe9UjPhzm@unitrg.au-net.ne.jp"

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->userId:Ljava/lang/String;

    const-string/jumbo v1, "KpyrR6BP"

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->password:Ljava/lang/String;

    const/4 v1, 0x2

    iput v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->authType:I

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyHost:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->proxyPort:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns1:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->dns2:Ljava/lang/String;

    return-object v0
.end method

.method public getExitCode()I
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v2, "ril.cpa_exit_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    return v1
.end method

.method public isCpaOn()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "kddi_cpa_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    const-string/jumbo v14, "KDI"

    const-string/jumbo v15, "ro.csc.sales_code"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v14, :cond_0

    const-string/jumbo v14, "CpaNotiReceiver"

    const-string/jumbo v15, "Intent will be ignored"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v14, :cond_2

    const-string/jumbo v14, "CpaNotiReceiver"

    const-string/jumbo v15, "received boot completed"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/kddi/android/CpaNotiReceiver;->setNaviState(I)V

    const-string/jumbo v14, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v14, :cond_3

    const-string/jumbo v14, "CpaNotiReceiver"

    const-string/jumbo v15, "received boot completed : MODE_NAVI"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->notifyCpaEnabled()V

    const-string/jumbo v14, "5"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/kddi/android/CpaNotiReceiver;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    const-string/jumbo v14, "5"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/kddi/android/CpaNotiReceiver;->setSelectedApnKey(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->naviAuthFailedProcess()V

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->notifyCpaEnabled()V

    :cond_6
    const-string/jumbo v14, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string/jumbo v14, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string/jumbo v14, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_7
    const-string/jumbo v14, "CpaNotiReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "received "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v14, "com.kddi.android.btdun"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string/jumbo v14, "com.kddi.android.btdun.oemtest"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string/jumbo v14, "com.kddi.android.btdun.oemtest2"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_8
    const/4 v14, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/kddi/android/CpaNotiReceiver;->setNaviState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->naviAuthFailedProcess()V

    :cond_9
    const-string/jumbo v14, "com.kddi.android.cpa.ANY_DATA_STATE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/kddi/android/CpaNotiReceiver;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v9

    const-string/jumbo v14, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v14, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->getExitCode()I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v14, :cond_a

    const-string/jumbo v14, "CpaNotiReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "ACTION_ANY_DATA_CONNECTION_STATE_CHANGED : apnKey["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] apnTypeKey:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "] exitCode["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string/jumbo v14, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "wifi"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/kddi/android/CpaNotiReceiver;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    const-string/jumbo v12, "default"

    const-string/jumbo v14, "CpaNotiReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "WifiConnected="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " / using="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_d

    const-string/jumbo v14, "sys.cpa_kdd_hipri"

    const-string/jumbo v15, "true"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/kddi/android/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->getCurrentMode()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_b
    sget-object v14, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    if-eqz v14, :cond_c

    sget-object v14, Lcom/kddi/android/CpaNotiReceiver;->mSettings:Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    iget-object v14, v14, Lcom/kddi/android/CpaNotiReceiver$NaviSettings;->apn:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lcom/kddi/android/CpaNotiReceiver;->handleMobileDataErrorForNavi(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V

    :cond_c
    :goto_1
    return-void

    :cond_d
    const-string/jumbo v14, "sys.cpa_kdd_hipri"

    const-string/jumbo v15, "false"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->isCpaOn()Z

    move-result v14

    if-eqz v14, :cond_c

    sget-object v14, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v9, v14, :cond_c

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6}, Lcom/kddi/android/CpaNotiReceiver;->handleMobileDataErrorForCpa(Lcom/android/internal/telephony/PhoneConstants$DataState;I)V

    goto :goto_1

    :cond_f
    const-string/jumbo v14, "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const-string/jumbo v14, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v14, :cond_10

    const-string/jumbo v14, "CpaNotiReceiver"

    const-string/jumbo v15, "CHANGE_MODE_REQUEST_ACTION received"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string/jumbo v14, "mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "sys.cpa_navi_state"

    invoke-static {v14, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/kddi/android/CpaNotiReceiver;->createSettingFromIntent(Landroid/content/Intent;)Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v14, v1}, Lcom/kddi/android/CpaNotiReceiver;->changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I

    goto :goto_1

    :cond_11
    const-string/jumbo v14, "com.kddi.android.cpa.CHANGE_MODE_CPA_REQUEST"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    const-string/jumbo v14, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v14, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v14, :cond_12

    const-string/jumbo v14, "CpaNotiReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "CHANGE_MODE_CPA_REQUEST received : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string/jumbo v14, "on"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    const-string/jumbo v14, "sys.cpa_navi_state"

    sget-object v15, Lcom/kddi/android/CpaNotiReceiver;->MODE_CPA:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "kddi_cpa_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v14, "sys.cpa_navi_state"

    sget-object v15, Lcom/kddi/android/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v14, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    const-string/jumbo v14, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v14, "tetherArray"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/kddi/android/CpaNotiReceiver;->updateTetherState([Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/kddi/android/CpaNotiReceiver;->isWifiTethered:Z

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v14, "com.kddi.android.cpa.testNAVI"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string/jumbo v14, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/kddi/android/CpaNotiReceiver;->mCm:Landroid/net/ConnectivityManager;

    const-string/jumbo v14, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v14, :cond_16

    const-string/jumbo v14, "CpaNotiReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "testNAVI received : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const-string/jumbo v14, "on"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    const-string/jumbo v14, "NAVI"

    invoke-virtual/range {p0 .. p0}, Lcom/kddi/android/CpaNotiReceiver;->createTestNaviSetting()Lcom/kddi/android/CpaNotiReceiver$NaviSettings;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v15, v1}, Lcom/kddi/android/CpaNotiReceiver;->changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v14, "DEFAULT"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v15, v1}, Lcom/kddi/android/CpaNotiReceiver;->changeMode(Ljava/lang/String;Lcom/kddi/android/CpaNotiReceiver$NaviSettings;Landroid/content/Context;)I

    goto/16 :goto_1
.end method

.method public showAlertDialog(I)V
    .locals 4

    iget-boolean v1, p0, Lcom/kddi/android/CpaNotiReceiver;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CpaNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showAlertDialog : status +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.kddi.android.cpa.MOBILE_DATA_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/kddi/android/CpaNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    const-string/jumbo v1, "content"

    const-string/jumbo v2, "STATUS_ALERT_AUTHENTICATION_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "content"

    const-string/jumbo v2, "STATUS_ALERT_OUT_OF_3G_NETWORK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "content"

    const-string/jumbo v2, "STATUS_ALERT_CONNECTION_FAIL_OTHER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
