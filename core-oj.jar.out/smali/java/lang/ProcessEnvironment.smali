.class final Ljava/lang/ProcessEnvironment;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessEnvironment$ExternalData;,
        Ljava/lang/ProcessEnvironment$StringEntry;,
        Ljava/lang/ProcessEnvironment$StringEntrySet;,
        Ljava/lang/ProcessEnvironment$StringEnvironment;,
        Ljava/lang/ProcessEnvironment$StringKeySet;,
        Ljava/lang/ProcessEnvironment$StringValues;,
        Ljava/lang/ProcessEnvironment$Value;,
        Ljava/lang/ProcessEnvironment$Variable;
    }
.end annotation


# static fields
.field static final MIN_NAME_LENGTH:I

.field private static final theEnvironment:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field

.field private static final theUnmodifiableEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0([B[B)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/ProcessEnvironment;->arrayEquals([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([B[B)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/ProcessEnvironment;->arrayCompare([B[B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2([B)I
    .locals 1

    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->arrayHash([B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->validateValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->validateVariable(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Ljava/lang/ProcessEnvironment;->environ()[[B

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-lez v1, :cond_0

    sget-object v2, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/ProcessEnvironment$Variable;->valueOf([B)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/ProcessEnvironment$Value;->valueOf([B)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/ProcessEnvironment$StringEnvironment;

    sget-object v3, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayCompare([B[B)I
    .locals 4

    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_0

    array-length v1, p0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_1

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    sub-int/2addr v2, v3

    return v2

    :cond_0
    array-length v1, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    return v2
.end method

.method private static arrayEquals([B[B)Z
    .locals 4

    const/4 v3, 0x0

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static arrayHash([B)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x1f

    aget-byte v3, p0, v1

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static emptyEnvironment(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ProcessEnvironment$StringEnvironment;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static native environ()[[B
.end method

.method static environment()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/lang/ProcessEnvironment$StringEnvironment;

    sget-object v0, Ljava/lang/ProcessEnvironment;->theEnvironment:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static getenv()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/lang/ProcessEnvironment;->theUnmodifiableEnvironment:Ljava/util/Map;

    return-object v0
.end method

.method static toEnvironmentBlock(Ljava/util/Map;[I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[I)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Ljava/lang/ProcessEnvironment$StringEnvironment;

    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toEnvironmentBlock([I)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static validateValue(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid environment variable value: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static validateVariable(Ljava/lang/String;)V
    .locals 3

    const/4 v1, -0x1

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid environment variable name: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
