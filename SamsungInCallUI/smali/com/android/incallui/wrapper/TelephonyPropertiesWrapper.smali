.class public Lcom/android/incallui/wrapper/TelephonyPropertiesWrapper;
.super Ljava/lang/Object;


# static fields
.field public static final PROPERTY_MULTI_SIM_CONFIG:Ljava/lang/String; = "persist.radio.multisim.config"

.field public static PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String;

.field public static PROPERTY_SIM_STATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "gsm.sim.state"

    sput-object v0, Lcom/android/incallui/wrapper/TelephonyPropertiesWrapper;->PROPERTY_SIM_STATE:Ljava/lang/String;

    const-string v0, "gsm.operator.isroaming"

    sput-object v0, Lcom/android/incallui/wrapper/TelephonyPropertiesWrapper;->PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
