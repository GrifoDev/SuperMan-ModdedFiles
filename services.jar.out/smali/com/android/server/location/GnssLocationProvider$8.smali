.class Lcom/android/server/location/GnssLocationProvider$8;
.super Ljava/util/HashMap;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$8;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "SUPL_VER"

    new-instance v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;

    invoke-direct {v1}, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SUPL_MODE"

    new-instance v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$1;

    invoke-direct {v1}, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "SUPL_ES"

    new-instance v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$2;

    invoke-direct {v1}, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$2;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "LPP_PROFILE"

    new-instance v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$3;

    invoke-direct {v1}, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$3;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "A_GLONASS_POS_PROTOCOL_SELECT"

    new-instance v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$4;

    invoke-direct {v1}, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    new-instance v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$5;

    invoke-direct {v1}, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$5;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "GPS_LOCK"

    new-instance v1, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$6;

    invoke-direct {v1}, Lcom/android/server/location/-$Lambda$LbPzwzo3JyvLa845qcqGRfVQJq4$6;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$8;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_30797(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap14(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_30878(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap13(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_30954(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap12(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_31032(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap11(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_31132(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap9(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_31252(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap8(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_location_GnssLocationProvider$8_31338(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->-wrap10(I)Z

    move-result v0

    return v0
.end method
