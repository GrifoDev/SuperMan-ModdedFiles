.class Ljava/util/Locale$Cache;
.super Lsun/util/locale/LocaleObjectCache;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache",
        "<",
        "Ljava/util/Locale$LocaleKey;",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Locale$Cache;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/Locale$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Locale$LocaleKey;

    invoke-virtual {p0, p1}, Ljava/util/Locale$Cache;->createObject(Ljava/util/Locale$LocaleKey;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected createObject(Ljava/util/Locale$LocaleKey;)Ljava/util/Locale;
    .locals 4

    new-instance v0, Ljava/util/Locale;

    invoke-static {p1}, Ljava/util/Locale$LocaleKey;->-get0(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/BaseLocale;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Locale$LocaleKey;->-get1(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/LocaleExtensions;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale;)V

    return-object v0
.end method
