.class Lsun/util/locale/BaseLocale$Cache;
.super Lsun/util/locale/LocaleObjectCache;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/util/locale/LocaleObjectCache",
        "<",
        "Lsun/util/locale/BaseLocale$Key;",
        "Lsun/util/locale/BaseLocale;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/util/locale/LocaleObjectCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Cache;->createObject(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;

    move-result-object v0

    return-object v0
.end method

.method protected createObject(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale;
    .locals 6

    new-instance v0, Lsun/util/locale/BaseLocale;

    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get0(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get2(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get1(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->-get3(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale;)V

    return-object v0
.end method

.method protected bridge synthetic normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Cache;->normalizeKey(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    move-result-object v0

    return-object v0
.end method

.method protected normalizeKey(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;
    .locals 1

    invoke-static {p1}, Lsun/util/locale/BaseLocale$Key;->normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;

    move-result-object v0

    return-object v0
.end method
