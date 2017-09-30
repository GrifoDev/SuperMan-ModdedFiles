.class public Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final RAW_STRING_TIMEZONES_SEPARATOR:Ljava/lang/String; = "&"


# instance fields
.field private final phonePrefixMap:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    return-void
.end method

.method private lookupTimeZonesForNumber(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->tokenizeRawOutputString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private tokenizeRawOutputString(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public lookupCountryLevelTimeZonesForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
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

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupTimeZonesForNumber(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lookupTimeZonesForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupTimeZonesForNumber(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->readExternal(Ljava/io/ObjectInput;)V

    return-void
.end method

.method public readPrefixTimeZonesMap(Ljava/util/SortedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->readPhonePrefixMap(Ljava/util/SortedMap;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->phonePrefixMap:Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->writeExternal(Ljava/io/ObjectOutput;)V

    return-void
.end method
