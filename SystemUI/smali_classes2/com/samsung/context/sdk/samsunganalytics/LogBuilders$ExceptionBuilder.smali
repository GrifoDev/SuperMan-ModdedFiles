.class public Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;
.super Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/LogBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder",
        "<",
        "Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;-><init>(Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$1;)V

    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map;
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

    const-string/jumbo v0, "t"

    const-string/jumbo v1, "ex"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    invoke-super {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getThis()Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getThis()Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->getThis()Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeStamp()J
    .locals 2

    invoke-super {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->getTimeStamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public isCrash(Z)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "ext"

    const-string/jumbo v1, "ex"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    :goto_0
    return-object p0

    :cond_0
    const-string/jumbo v0, "ext"

    const-string/jumbo v1, "cr"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;
    .locals 1

    const-string/jumbo v0, "exm"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ExceptionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    return-object p0
.end method
