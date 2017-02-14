.class public Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
.super Ljava/lang/Object;
.source "PhoneNumberToTimeZonesMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;
    }
.end annotation


# static fields
.field private static final MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/google/i18n/phonenumbers/timezones/data/"

.field private static final MAPPING_DATA_FILE_NAME:Ljava/lang/String; = "map_data"

.field private static final UNKNOWN_TIMEZONE:Ljava/lang/String; = "Etc/Unknown"

.field static final UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    const-string v1, "Etc/Unknown"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;-><init>(Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "map_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    .locals 1

    invoke-static {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    move-result-object v0

    return-object v0
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCountryLevelTimeZonesforNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupCountryLevelTimeZonesForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
    .locals 2

    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    monitor-enter v0

    :try_start_0
    # getter for: Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->INSTANCE:Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->access$200()Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getTimeZonesForGeocodableNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupTimeZonesForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getUnknownTimeZone()Ljava/lang/String;
    .locals 1

    const-string v0, "Etc/Unknown"

    return-object v0
.end method

.method private static loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    .locals 8

    const-class v5, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    invoke-virtual {v5, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v1, 0x0

    new-instance v3, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    invoke-direct {v3}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3, v2}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->close(Ljava/io/InputStream;)V

    move-object v1, v2

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->close(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->close(Ljava/io/InputStream;)V

    throw v5

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public getTimeZonesForGeographicalNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getTimeZonesForGeocodableNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZonesForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getCountryLevelTimeZonesforNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getTimeZonesForGeographicalNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
