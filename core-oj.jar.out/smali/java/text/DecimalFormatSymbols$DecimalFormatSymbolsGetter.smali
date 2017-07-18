.class Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecimalFormatSymbolsGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
        "<",
        "Ljava/text/spi/DecimalFormatSymbolsProvider;",
        "Ljava/text/DecimalFormatSymbols;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INSTANCE:Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;


# direct methods
.method static synthetic -get0()Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;
    .locals 1

    sget-object v0, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;->INSTANCE:Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;->-assertionsDisabled:Z

    new-instance v0, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;-><init>()V

    sput-object v0, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;->INSTANCE:Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/text/spi/DecimalFormatSymbolsProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;->getObject(Ljava/text/spi/DecimalFormatSymbolsProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public varargs getObject(Ljava/text/spi/DecimalFormatSymbolsProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/DecimalFormatSymbols;
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Ljava/text/DecimalFormatSymbols$DecimalFormatSymbolsGetter;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, p4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/text/spi/DecimalFormatSymbolsProvider;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method
