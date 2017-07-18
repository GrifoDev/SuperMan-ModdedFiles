.class public final Lsun/util/locale/BaseLocale;
.super Ljava/lang/Object;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/locale/BaseLocale$Cache;,
        Lsun/util/locale/BaseLocale$Key;
    }
.end annotation


# static fields
.field private static final CACHE:Lsun/util/locale/BaseLocale$Cache;

.field public static final SEP:Ljava/lang/String; = "_"


# instance fields
.field private volatile hash:I

.field private final language:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final script:Ljava/lang/String;

.field private final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/util/locale/BaseLocale$Cache;

    invoke-direct {v0}, Lsun/util/locale/BaseLocale$Cache;-><init>()V

    sput-object v0, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    iput-object p1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    iput-object p2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-static {p3}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_3
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .locals 4

    new-instance v0, Lsun/util/locale/BaseLocale;

    invoke-direct {v0, p0, p1}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    new-instance v2, Lsun/util/locale/BaseLocale$Key;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$Key;)V

    invoke-virtual {v1, v2, v0}, Lsun/util/locale/BaseLocale$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .locals 3

    if-eqz p0, :cond_0

    const-string/jumbo v2, "he"

    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo p0, "iw"

    :cond_0
    :goto_0
    new-instance v1, Lsun/util/locale/BaseLocale$Key;

    invoke-direct {v1, p0, p1, p2, p3}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    invoke-virtual {v2, v1}, Lsun/util/locale/BaseLocale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/BaseLocale;

    return-object v0

    :cond_1
    const-string/jumbo v2, "yi"

    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo p0, "ji"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "id"

    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p0, "in"

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Lsun/util/locale/BaseLocale;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lsun/util/locale/BaseLocale;

    iget-object v3, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    if-nez v0, :cond_0

    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string/jumbo v1, "language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "script="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v1, "variant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
