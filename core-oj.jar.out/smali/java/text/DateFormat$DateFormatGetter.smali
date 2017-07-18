.class Ljava/text/DateFormat$DateFormatGetter;
.super Ljava/lang/Object;
.source "DateFormat.java"

# interfaces
.implements Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateFormatGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter",
        "<",
        "Ljava/text/spi/DateFormatProvider;",
        "Ljava/text/DateFormat;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INSTANCE:Ljava/text/DateFormat$DateFormatGetter;


# direct methods
.method static synthetic -get0()Ljava/text/DateFormat$DateFormatGetter;
    .locals 1

    sget-object v0, Ljava/text/DateFormat$DateFormatGetter;->INSTANCE:Ljava/text/DateFormat$DateFormatGetter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/text/DateFormat$DateFormatGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/text/DateFormat$DateFormatGetter;->-assertionsDisabled:Z

    new-instance v0, Ljava/text/DateFormat$DateFormatGetter;

    invoke-direct {v0}, Ljava/text/DateFormat$DateFormatGetter;-><init>()V

    sput-object v0, Ljava/text/DateFormat$DateFormatGetter;->INSTANCE:Ljava/text/DateFormat$DateFormatGetter;

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

    check-cast p1, Ljava/text/spi/DateFormatProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/text/DateFormat$DateFormatGetter;->getObject(Ljava/text/spi/DateFormatProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public varargs getObject(Ljava/text/spi/DateFormatProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/DateFormat;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-boolean v3, Ljava/text/DateFormat$DateFormatGetter;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    array-length v3, p4

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    aget-object v3, p4, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v3, p4, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    aget-object v3, p4, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-boolean v3, Ljava/text/DateFormat$DateFormatGetter;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "should not happen"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :pswitch_0
    invoke-virtual {p1, v2, p2}, Ljava/text/spi/DateFormatProvider;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    return-object v3

    :pswitch_1
    invoke-virtual {p1, v0, p2}, Ljava/text/spi/DateFormatProvider;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    return-object v3

    :pswitch_2
    invoke-virtual {p1, v0, v2, p2}, Ljava/text/spi/DateFormatProvider;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    return-object v3

    :cond_2
    const/4 v3, 0x0

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
