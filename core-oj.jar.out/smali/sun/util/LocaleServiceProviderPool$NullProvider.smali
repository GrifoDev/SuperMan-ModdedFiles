.class Lsun/util/LocaleServiceProviderPool$NullProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "LocaleServiceProviderPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/LocaleServiceProviderPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullProvider"
.end annotation


# static fields
.field private static final INSTANCE:Lsun/util/LocaleServiceProviderPool$NullProvider;


# direct methods
.method static synthetic -get0()Lsun/util/LocaleServiceProviderPool$NullProvider;
    .locals 1

    sget-object v0, Lsun/util/LocaleServiceProviderPool$NullProvider;->INSTANCE:Lsun/util/LocaleServiceProviderPool$NullProvider;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/util/LocaleServiceProviderPool$NullProvider;

    invoke-direct {v0}, Lsun/util/LocaleServiceProviderPool$NullProvider;-><init>()V

    sput-object v0, Lsun/util/LocaleServiceProviderPool$NullProvider;->INSTANCE:Lsun/util/LocaleServiceProviderPool$NullProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Should not get called."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
