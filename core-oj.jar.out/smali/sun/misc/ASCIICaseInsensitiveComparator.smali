.class public Lsun/misc/ASCIICaseInsensitiveComparator;
.super Ljava/lang/Object;
.source "ASCIICaseInsensitiveComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/misc/ASCIICaseInsensitiveComparator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/misc/ASCIICaseInsensitiveComparator;->-assertionsDisabled:Z

    new-instance v0, Lsun/misc/ASCIICaseInsensitiveComparator;

    invoke-direct {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;-><init>()V

    sput-object v0, Lsun/misc/ASCIICaseInsensitiveComparator;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isLower(I)Z
    .locals 3

    const/4 v0, 0x0

    add-int/lit8 v1, p0, -0x61

    rsub-int/lit8 v2, p0, 0x7a

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static isUpper(I)Z
    .locals 3

    const/4 v0, 0x0

    add-int/lit8 v1, p0, -0x41

    rsub-int/lit8 v2, p0, 0x5a

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static lowerCaseHashCode(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v4

    add-int v0, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static toLower(I)I
    .locals 1

    invoke-static {p0}, Lsun/misc/ASCIICaseInsensitiveComparator;->isUpper(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    :cond_0
    return p0
.end method

.method static toUpper(I)I
    .locals 1

    invoke-static {p0}, Lsun/misc/ASCIICaseInsensitiveComparator;->isLower(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, -0x20

    :cond_0
    return p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lsun/misc/ASCIICaseInsensitiveComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/16 v8, 0x7f

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    move v3, v4

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-boolean v6, Lsun/misc/ASCIICaseInsensitiveComparator;->-assertionsDisabled:Z

    if-nez v6, :cond_2

    if-gt v0, v8, :cond_1

    if-gt v1, v8, :cond_1

    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_2

    :cond_2
    if-eq v0, v1, :cond_3

    invoke-static {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v6

    int-to-char v0, v6

    invoke-static {v1}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v6

    int-to-char v1, v6

    if-eq v0, v1, :cond_3

    sub-int v6, v0, v1

    return v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    sub-int v6, v4, v5

    return v6
.end method
