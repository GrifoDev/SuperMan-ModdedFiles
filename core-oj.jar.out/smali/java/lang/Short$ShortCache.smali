.class Ljava/lang/Short$ShortCache;
.super Ljava/lang/Object;
.source "Short.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Short;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortCache"
.end annotation


# static fields
.field static final cache:[Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Short;

    sput-object v1, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/Short$ShortCache;->cache:[Ljava/lang/Short;

    new-instance v2, Ljava/lang/Short;

    add-int/lit8 v3, v0, -0x80

    int-to-short v3, v3

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
