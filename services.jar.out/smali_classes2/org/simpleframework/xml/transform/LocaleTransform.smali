.class Lorg/simpleframework/xml/transform/LocaleTransform;
.super Ljava/lang/Object;
.source "LocaleTransform.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Transform;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/transform/Transform",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "_"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/transform/LocaleTransform;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private read([Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    aput-object v2, v1, v4

    const-string/jumbo v2, ""

    aput-object v2, v1, v5

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v2, Ljava/util/Locale;

    aget-object v3, v1, v3

    aget-object v4, v1, v4

    aget-object v5, v1, v5

    invoke-direct {v2, v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic read(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/LocaleTransform;->read(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v1, p0, Lorg/simpleframework/xml/transform/LocaleTransform;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lt v1, v2, :cond_0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/transform/LocaleTransform;->read([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Lorg/simpleframework/xml/transform/InvalidFormatException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, "Invalid locale %s"

    invoke-direct {v1, v3, v2}, Lorg/simpleframework/xml/transform/InvalidFormatException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic write(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/transform/LocaleTransform;->write(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
