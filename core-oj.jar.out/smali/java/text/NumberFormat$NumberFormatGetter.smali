.class Ljava/text/NumberFormat$NumberFormatGetter;
.super Ljava/lang/Object;
.source "NumberFormat.java"

# interfaces
.implements Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberFormatGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
        "<",
        "Ljava/text/spi/NumberFormatProvider;",
        "Ljava/text/NumberFormat;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INSTANCE:Ljava/text/NumberFormat$NumberFormatGetter;


# direct methods
.method static synthetic -get0()Ljava/text/NumberFormat$NumberFormatGetter;
    .locals 1

    sget-object v0, Ljava/text/NumberFormat$NumberFormatGetter;->INSTANCE:Ljava/text/NumberFormat$NumberFormatGetter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/text/NumberFormat$NumberFormatGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/text/NumberFormat$NumberFormatGetter;->-assertionsDisabled:Z

    new-instance v0, Ljava/text/NumberFormat$NumberFormatGetter;

    invoke-direct {v0}, Ljava/text/NumberFormat$NumberFormatGetter;-><init>()V

    sput-object v0, Ljava/text/NumberFormat$NumberFormatGetter;->INSTANCE:Ljava/text/NumberFormat$NumberFormatGetter;

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

    check-cast p1, Ljava/text/spi/NumberFormatProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/text/NumberFormat$NumberFormatGetter;->getObject(Ljava/text/spi/NumberFormatProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public varargs getObject(Ljava/text/spi/NumberFormatProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/NumberFormat;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Ljava/text/NumberFormat$NumberFormatGetter;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    array-length v3, p4

    if-ne v3, v1, :cond_0

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    aget-object v1, p4, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-boolean v1, Ljava/text/NumberFormat$NumberFormatGetter;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/text/spi/NumberFormatProvider;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    return-object v1

    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/text/spi/NumberFormatProvider;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-virtual {p1, p2}, Ljava/text/spi/NumberFormatProvider;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/text/spi/NumberFormatProvider;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
