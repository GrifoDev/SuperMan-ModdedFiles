.class public final enum Landroid/net/wifi/WifiConfiguration$SemOperationMode;
.super Ljava/lang/Enum;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SemOperationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/WifiConfiguration$SemOperationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/WifiConfiguration$SemOperationMode;

.field public static final enum ADHOC:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

.field public static final enum INFRA:Landroid/net/wifi/WifiConfiguration$SemOperationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    const-string/jumbo v1, "INFRA"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiConfiguration$SemOperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$SemOperationMode;->INFRA:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    new-instance v0, Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    const-string/jumbo v1, "ADHOC"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/WifiConfiguration$SemOperationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$SemOperationMode;->ADHOC:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    sget-object v1, Landroid/net/wifi/WifiConfiguration$SemOperationMode;->INFRA:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/WifiConfiguration$SemOperationMode;->ADHOC:Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiConfiguration$SemOperationMode;->$VALUES:[Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration$SemOperationMode;
    .locals 1

    const-class v0, Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/WifiConfiguration$SemOperationMode;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiConfiguration$SemOperationMode;->$VALUES:[Landroid/net/wifi/WifiConfiguration$SemOperationMode;

    return-object v0
.end method
