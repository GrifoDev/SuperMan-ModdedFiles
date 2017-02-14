.class final Lsun/util/locale/BaseLocale$Key;
.super Ljava/lang/Object;
.source "BaseLocale.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lsun/util/locale/BaseLocale$Key;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final hash:I

.field private final lang:Ljava/lang/String;

.field private final normalized:Z

.field private final regn:Ljava/lang/String;

.field private final scrt:Ljava/lang/String;

.field private final vart:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lsun/util/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/util/locale/BaseLocale$Key;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v5, Lsun/util/locale/BaseLocale$Key;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    if-ne v5, p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    if-ne v5, p2, :cond_0

    move v3, v4

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1
    iput-object p1, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    iput-object p2, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    iput-boolean v4, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string/jumbo v3, ""

    if-eq p2, v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v3, ""

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_2

    iput-object p2, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v3, ""

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    :cond_3
    if-eqz p3, :cond_4

    iput-object p3, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v3, ""

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    :cond_5
    if-eqz p4, :cond_6

    iput-object p4, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_7

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const-string/jumbo v3, ""

    iput-object v3, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    :cond_7
    iput v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    iput-boolean p5, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$Key;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static normalize(Lsun/util/locale/BaseLocale$Key;)Lsun/util/locale/BaseLocale$Key;
    .locals 6

    iget-boolean v0, p0, Lsun/util/locale/BaseLocale$Key;->normalized:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lsun/util/locale/BaseLocale$Key;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Lsun/util/locale/BaseLocale$Key;->compareTo(Lsun/util/locale/BaseLocale$Key;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lsun/util/locale/BaseLocale$Key;)I
    .locals 3

    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    iget-object v2, p1, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    invoke-static {v1, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    iget-object v2, p1, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    invoke-static {v1, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    iget-object v2, p1, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    invoke-static {v1, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    iget-object v2, p1, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lsun/util/locale/BaseLocale$Key;

    if-eqz v0, :cond_1

    iget v1, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    move-object v0, p1

    check-cast v0, Lsun/util/locale/BaseLocale$Key;

    iget v0, v0, Lsun/util/locale/BaseLocale$Key;->hash:I

    if-ne v1, v0, :cond_1

    move-object v0, p1

    check-cast v0, Lsun/util/locale/BaseLocale$Key;

    iget-object v0, v0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->lang:Ljava/lang/String;

    invoke-static {v0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lsun/util/locale/BaseLocale$Key;

    iget-object v0, v0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->scrt:Ljava/lang/String;

    invoke-static {v0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lsun/util/locale/BaseLocale$Key;

    iget-object v0, v0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->regn:Ljava/lang/String;

    invoke-static {v0, v1}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lsun/util/locale/BaseLocale$Key;

    iget-object v0, p1, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    iget-object v1, p0, Lsun/util/locale/BaseLocale$Key;->vart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lsun/util/locale/BaseLocale$Key;->hash:I

    return v0
.end method
