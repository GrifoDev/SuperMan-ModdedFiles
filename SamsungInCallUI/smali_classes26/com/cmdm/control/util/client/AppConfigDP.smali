.class public Lcom/cmdm/control/util/client/AppConfigDP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final F:Ljava/lang/String; = "0000"

.field public static MAC:Ljava/lang/String; = null

.field public static final P:Ljava/lang/String; = "android"

.field public static V:Ljava/lang/String;

.field public static api:Ljava/lang/String;

.field public static clientKey:Ljava/lang/String;

.field public static clientid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "1.0.0"

    sput-object v0, Lcom/cmdm/control/util/client/AppConfigDP;->V:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/cmdm/control/util/client/AppConfigDP;->MAC:Ljava/lang/String;

    .line 49
    const-string v0, "18"

    sput-object v0, Lcom/cmdm/control/util/client/AppConfigDP;->api:Ljava/lang/String;

    .line 54
    const-string v0, "caiyin"

    sput-object v0, Lcom/cmdm/control/util/client/AppConfigDP;->clientid:Ljava/lang/String;

    .line 59
    const-string v0, "TQcMR]5.j"

    sput-object v0, Lcom/cmdm/control/util/client/AppConfigDP;->clientKey:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "w-android-480x450"

    return-object v0
.end method
