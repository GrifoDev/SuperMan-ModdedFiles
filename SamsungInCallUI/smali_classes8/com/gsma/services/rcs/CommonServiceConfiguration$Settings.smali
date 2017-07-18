.class public Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;
.super Ljava/lang/Object;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/CommonServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field public static final CONFIGURATION_VALIDITY:Ljava/lang/String; = "ConfigurationValidity"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_MESSAGING_METHOD:Ljava/lang/String; = "DefaultMessagingMethod"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final MESSAGING_MODE:Ljava/lang/String; = "MessagingMode"

.field public static final MIN_BATTERY_LEVEL:Ljava/lang/String; = "MinimumBatteryLevel"

.field public static final MODE_CHANGEABLE:Ljava/lang/String; = "ModeChangeable"

.field public static final MY_CONTACT_ID:Ljava/lang/String; = "MyContactId"

.field public static final MY_COUNTRY_AREA_CODE:Ljava/lang/String; = "CountryAreaCode"

.field public static final MY_COUNTRY_CODE:Ljava/lang/String; = "MyCountryCode"

.field public static final MY_DISPLAY_NAME:Ljava/lang/String; = "MyDisplayName"

.field public static final SERVICE_ACTIVATED:Ljava/lang/String; = "ServiceActivated"

.field public static final SERVICE_AVAILABLE:Ljava/lang/String; = "ServiceAvailable"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.gsma.services.rcs.provider.settings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
