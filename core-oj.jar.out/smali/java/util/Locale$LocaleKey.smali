.class final Ljava/util/Locale$LocaleKey;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocaleKey"
.end annotation


# instance fields
.field private final base:Lsun/util/locale/BaseLocale;

.field private final exts:Lsun/util/locale/LocaleExtensions;

.field private final hash:I


# direct methods
.method static synthetic -get0(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/BaseLocale;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    return-object v0
.end method

.method static synthetic -get1(Ljava/util/Locale$LocaleKey;)Lsun/util/locale/LocaleExtensions;
    .locals 1

    iget-object v0, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    return-object v0
.end method

.method private constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    iput-object p2, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    invoke-virtual {v1}, Lsun/util/locale/BaseLocale;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1}, Lsun/util/locale/LocaleExtensions;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_0
    iput v0, p0, Ljava/util/Locale$LocaleKey;->hash:I

    return-void
.end method

.method synthetic constructor <init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;Ljava/util/Locale$LocaleKey;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/Locale$LocaleKey;-><init>(Lsun/util/locale/BaseLocale;Lsun/util/locale/LocaleExtensions;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Ljava/util/Locale$LocaleKey;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Locale$LocaleKey;

    iget v3, p0, Ljava/util/Locale$LocaleKey;->hash:I

    iget v4, v0, Ljava/util/Locale$LocaleKey;->hash:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    iget-object v4, v0, Ljava/util/Locale$LocaleKey;->base:Lsun/util/locale/BaseLocale;

    invoke-virtual {v3, v4}, Lsun/util/locale/BaseLocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    if-nez v3, :cond_4

    iget-object v3, v0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_2
    return v2

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    iget-object v2, v0, Ljava/util/Locale$LocaleKey;->exts:Lsun/util/locale/LocaleExtensions;

    invoke-virtual {v1, v2}, Lsun/util/locale/LocaleExtensions;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/util/Locale$LocaleKey;->hash:I

    return v0
.end method
