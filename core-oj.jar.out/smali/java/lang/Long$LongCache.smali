.class Ljava/lang/Long$LongCache;
.super Ljava/lang/Object;
.source "Long.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongCache"
.end annotation


# static fields
.field static final cache:[Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Long;

    sput-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/Long$LongCache;->cache:[Ljava/lang/Long;

    new-instance v2, Ljava/lang/Long;

    add-int/lit8 v3, v0, -0x80

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

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
