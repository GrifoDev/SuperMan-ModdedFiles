.class public Lcom/sec/ims/extensions/ConnectivityManagerExt;
.super Ljava/lang/Object;
.source "ConnectivityManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final SEM_TYPE_MOBILE_MMS2:I

.field public static final TYPE_MOBILE_BIP:I

.field public static final TYPE_MOBILE_CBS:I

.field public static final TYPE_MOBILE_EMERGENCY:I = 0xf

.field public static final TYPE_MOBILE_FOTA:I

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_XCAP:I

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_WIFI_P2P:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "TYPE_MOBILE_FOTA"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_FOTA:I

    const-string/jumbo v0, "TYPE_MOBILE_CBS"

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_CBS:I

    const-string/jumbo v0, "TYPE_WIFI_P2P"

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_WIFI_P2P:I

    const-string/jumbo v0, "TYPE_MOBILE_BIP"

    const/16 v1, 0x17

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_BIP:I

    const-string/jumbo v0, "SEM_TYPE_MOBILE_MMS2"

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->SEM_TYPE_MOBILE_MMS2:I

    const-string/jumbo v0, "TYPE_MOBILE_XCAP"

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_XCAP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectivityEnumType(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 1

    invoke-static {p0}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->-wrap0(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    move-result-object v0

    return-object v0
.end method

.method static final getIntField(Ljava/lang/String;I)I
    .locals 4

    :try_start_0
    const-class v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return p1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;)Z
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "removeRouteToHostAddress"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/net/InetAddress;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v7
.end method

.method public static requestRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;)Z
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "requestRouteToHostAddress"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/net/InetAddress;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, p0, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return v7
.end method
