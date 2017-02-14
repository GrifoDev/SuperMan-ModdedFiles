.class Lsun/util/calendar/TzIDOldMapping;
.super Ljava/lang/Object;
.source "TzIDOldMapping.java"


# static fields
.field static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lsun/util/calendar/TzIDOldMapping;->MAP:Ljava/util/Map;

    const/16 v2, 0x1c

    new-array v0, v2, [[Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "ACT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Australia/Darwin"

    aput-object v4, v2, v8

    aput-object v2, v0, v3

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "AET"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Australia/Sydney"

    aput-object v4, v2, v8

    aput-object v2, v0, v8

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "AGT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/Argentina/Buenos_Aires"

    aput-object v4, v2, v8

    aput-object v2, v0, v5

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "ART"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Africa/Cairo"

    aput-object v4, v2, v8

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "AST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/Anchorage"

    aput-object v4, v2, v8

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "BET"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/Sao_Paulo"

    aput-object v4, v2, v8

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "BST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Asia/Dhaka"

    aput-object v4, v2, v8

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "CAT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Africa/Harare"

    aput-object v4, v2, v8

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "CNT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/St_Johns"

    aput-object v4, v2, v8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "CST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/Chicago"

    aput-object v4, v2, v8

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "CTT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Asia/Shanghai"

    aput-object v4, v2, v8

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "EAT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Africa/Addis_Ababa"

    aput-object v4, v2, v8

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "ECT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Europe/Paris"

    aput-object v4, v2, v8

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "EST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/New_York"

    aput-object v4, v2, v8

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "HST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Pacific/Honolulu"

    aput-object v4, v2, v8

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "IET"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/Indianapolis"

    aput-object v4, v2, v8

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "IST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Asia/Calcutta"

    aput-object v4, v2, v8

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "JST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Asia/Tokyo"

    aput-object v4, v2, v8

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "MIT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Pacific/Apia"

    aput-object v4, v2, v8

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "MST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/Denver"

    aput-object v4, v2, v8

    const/16 v4, 0x13

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "NET"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Asia/Yerevan"

    aput-object v4, v2, v8

    const/16 v4, 0x14

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "NST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Pacific/Auckland"

    aput-object v4, v2, v8

    const/16 v4, 0x15

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "PLT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Asia/Karachi"

    aput-object v4, v2, v8

    const/16 v4, 0x16

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "PNT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/Phoenix"

    aput-object v4, v2, v8

    const/16 v4, 0x17

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "PRT"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/Puerto_Rico"

    aput-object v4, v2, v8

    const/16 v4, 0x18

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "PST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "America/Los_Angeles"

    aput-object v4, v2, v8

    const/16 v4, 0x19

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "SST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Pacific/Guadalcanal"

    aput-object v4, v2, v8

    const/16 v4, 0x1a

    aput-object v2, v0, v4

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v4, "VST"

    aput-object v4, v2, v3

    const-string/jumbo v4, "Asia/Saigon"

    aput-object v4, v2, v8

    const/16 v4, 0x1b

    aput-object v2, v0, v4

    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    sget-object v5, Lsun/util/calendar/TzIDOldMapping;->MAP:Ljava/util/Map;

    aget-object v6, v1, v3

    aget-object v7, v1, v8

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
