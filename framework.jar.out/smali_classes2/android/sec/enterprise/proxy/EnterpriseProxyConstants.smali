.class public Landroid/sec/enterprise/proxy/EnterpriseProxyConstants;
.super Ljava/lang/Object;
.source "EnterpriseProxyConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/proxy/EnterpriseProxyConstants$1;
    }
.end annotation


# static fields
.field public static final ANDROID_PROXY_CONFIG:I = 0x0

.field public static final BUNDLE_CREDENTIALS:Ljava/lang/String; = "credentials"

.field public static final BUNDLE_NEW_PROXY:Ljava/lang/String; = "newProxy"

.field public static final BUNDLE_OLD_PROXY:Ljava/lang/String; = "oldProxy"

.field public static final BUNDLE_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final BUNDLE_PROXY:Ljava/lang/String; = "proxy"

.field public static final BUNDLE_RESULT:Ljava/lang/String; = "result"

.field public static final ENTERPRISE_AUTH_DIALOG_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.mdm.EnterpriseProxyAuthDialog"

.field public static final ENTERPRISE_AUTH_DIALOG_PACKAGE:Ljava/lang/String; = "com.samsung.android.mdm"

.field public static final ENTERPRISE_PROXY_CONFIG:I = 0x2

.field public static final ERROR_BACK_CODE:I = -0x3

.field public static final ERROR_CANCEL_CODE:I = -0x2

.field public static final ERROR_INVALID_CRED_CODE:I = -0x4

.field public static final ERROR_RETURN_CODE:I = -0x1

.field public static final KNOX_VPN_PROXY_CONFIG:I = 0x1

.field public static final LOCAL_ENTERPRISE_PROXY_WHITELIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_ERROR:I = 0x0

.field public static final PERMISSION_KNOX_SET_PROXY_CREDENTIAL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SET_PROXY_CREDENTIAL_INTERNAL"

.field public static final PROXY_REFRESH_CREDENTIALS_DIALOG:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PROXY_REFRESH_CREDENTIALS_DIALOG_INTERNAL"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/sec/enterprise/proxy/EnterpriseProxyConstants$1;

    invoke-direct {v0}, Landroid/sec/enterprise/proxy/EnterpriseProxyConstants$1;-><init>()V

    sput-object v0, Landroid/sec/enterprise/proxy/EnterpriseProxyConstants;->LOCAL_ENTERPRISE_PROXY_WHITELIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
