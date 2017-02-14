.class Ljava/lang/Integer$IntegerCache;
.super Ljava/lang/Object;
.source "Integer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerCache"
.end annotation


# static fields
.field static final cache:[Ljava/lang/Integer;

.field static final high:I

.field static final low:I = -0x80


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x7f

    const-string/jumbo v6, "java.lang.Integer.IntegerCache.high"

    invoke-static {v6}, Lsun/misc/VM;->getSavedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v6, 0x7f

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    const v6, 0x7fffff7e

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    sput v0, Ljava/lang/Integer$IntegerCache;->high:I

    sget v6, Ljava/lang/Integer$IntegerCache;->high:I

    add-int/lit16 v6, v6, 0x80

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    sput-object v6, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    const/16 v3, -0x80

    const/4 v5, 0x0

    :goto_0
    sget-object v6, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    sget-object v6, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    new-instance v7, Ljava/lang/Integer;

    add-int/lit8 v4, v3, 0x1

    invoke-direct {v7, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
