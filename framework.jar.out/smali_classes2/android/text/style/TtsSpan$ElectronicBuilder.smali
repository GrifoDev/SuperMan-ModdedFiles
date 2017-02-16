.class public Landroid/text/style/TtsSpan$ElectronicBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElectronicBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$ElectronicBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1340
    const-string/jumbo v0, "android.type.electronic"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1339
    return-void
.end method


# virtual methods
.method public setDomain(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 1387
    const-string/jumbo v0, "android.arg.domain"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public setEmailArguments(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "domain"    # Ljava/lang/String;

    .prologue
    .line 1352
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setDomain(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/style/TtsSpan$ElectronicBuilder;->setUsername(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setFragmentId(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "fragmentId"    # Ljava/lang/String;

    .prologue
    .line 1421
    const-string/jumbo v0, "android.arg.fragment_id"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1378
    const-string/jumbo v0, "android.arg.password"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1404
    const-string/jumbo v0, "android.arg.path"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public setPort(I)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 1395
    const-string/jumbo v0, "android.arg.port"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public setProtocol(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 1362
    const-string/jumbo v0, "android.arg.protocol"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public setQueryString(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 1413
    const-string/jumbo v0, "android.arg.query_string"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method

.method public setUsername(Ljava/lang/String;)Landroid/text/style/TtsSpan$ElectronicBuilder;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1370
    const-string/jumbo v0, "android.arg.username"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$Builder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$ElectronicBuilder;

    return-object v0
.end method
