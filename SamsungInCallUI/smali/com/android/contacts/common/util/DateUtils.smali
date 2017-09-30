.class public Lcom/android/contacts/common/util/DateUtils;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/TimeZone;

.field private static final b:[Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lcom/android/contacts/common/util/DateUtils;->a:Ljava/util/TimeZone;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/android/contacts/common/util/CommonDateUtils;->b:Ljava/text/SimpleDateFormat;

    aput-object v2, v1, v0

    sget-object v2, Lcom/android/contacts/common/util/CommonDateUtils;->c:Ljava/text/SimpleDateFormat;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd\'T\'HHmm\'Z\'"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/contacts/common/util/DateUtils;->b:[Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/contacts/common/util/DateUtils;->b:[Ljava/text/SimpleDateFormat;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->setLenient(Z)V

    sget-object v4, Lcom/android/contacts/common/util/DateUtils;->a:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/contacts/common/util/CommonDateUtils;->a:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/contacts/common/util/DateUtils;->a:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
