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

    .prologue
    const-class v0, Ljava/text/DateFormat$DateFormatGetter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/text/DateFormat$DateFormatGetter;->-assertionsDisabled:Z

    .line 1015
    new-instance v0, Ljava/text/DateFormat$DateFormatGetter;

    invoke-direct {v0}, Ljava/text/DateFormat$DateFormatGetter;-><init>()V

    sput-object v0, Ljava/text/DateFormat$DateFormatGetter;->INSTANCE:Ljava/text/DateFormat$DateFormatGetter;

    .line 1013
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getObject(Ljava/lang/Object;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "dateFormatProvider"    # Ljava/lang/Object;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1017
    check-cast p1, Ljava/text/spi/DateFormatProvider;

    .end local p1    # "dateFormatProvider":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/text/DateFormat$DateFormatGetter;->getObject(Ljava/text/spi/DateFormatProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public varargs getObject(Ljava/text/spi/DateFormatProvider;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/text/DateFormat;
    .locals 7
    .param p1, "dateFormatProvider"    # Ljava/text/spi/DateFormatProvider;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1021
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

    .line 1023
    :cond_1
    aget-object v3, p4, v5

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1024
    .local v2, "timeStyle":I
    aget-object v3, p4, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1025
    .local v0, "dateStyle":I
    const/4 v3, 0x2

    aget-object v3, p4, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1027
    .local v1, "flags":I
    packed-switch v1, :pswitch_data_0

    .line 1035
    sget-boolean v3, Ljava/text/DateFormat$DateFormatGetter;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "should not happen"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1029
    :pswitch_0
    invoke-virtual {p1, v2, p2}, Ljava/text/spi/DateFormatProvider;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    return-object v3

    .line 1031
    :pswitch_1
    invoke-virtual {p1, v0, p2}, Ljava/text/spi/DateFormatProvider;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    return-object v3

    .line 1033
    :pswitch_2
    invoke-virtual {p1, v0, v2, p2}, Ljava/text/spi/DateFormatProvider;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    return-object v3

    .line 1038
    :cond_2
    const/4 v3, 0x0

    return-object v3

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
