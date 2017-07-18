.class Ljava/lang/ProcessEnvironment$Variable;
.super Ljava/lang/ProcessEnvironment$ExternalData;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Variable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ProcessEnvironment$ExternalData;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/ProcessEnvironment$Variable;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/ProcessEnvironment$ExternalData;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;
    .locals 1

    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->-wrap4(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([B)Ljava/lang/ProcessEnvironment$Variable;
    .locals 2

    new-instance v0, Ljava/lang/ProcessEnvironment$Variable;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1, p0}, Ljava/lang/ProcessEnvironment$Variable;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;
    .locals 1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v0

    return-object v0
.end method

.method public static valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;
    .locals 2

    new-instance v0, Ljava/lang/ProcessEnvironment$Variable;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ProcessEnvironment$Variable;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/ProcessEnvironment$Variable;

    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$Variable;->compareTo(Ljava/lang/ProcessEnvironment$Variable;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/ProcessEnvironment$Variable;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$Variable;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ProcessEnvironment$Variable;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/ProcessEnvironment;->-wrap1([B[B)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/ProcessEnvironment$Variable;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/ProcessEnvironment$ExternalData;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
