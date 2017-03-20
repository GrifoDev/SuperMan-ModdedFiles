.class Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;
.super Ljava/lang/Object;
.source "PhoneNumberToTimeZonesMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const-string v1, "/com/google/i18n/phonenumbers/timezones/data/map_data"

    .line 96
    # invokes: Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->access$000(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    move-result-object v0

    .line 97
    .local v0, "map":Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    new-instance v1, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;-><init>(Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$1;)V

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->INSTANCE:Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    .line 98
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->INSTANCE:Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    return-object v0
.end method
