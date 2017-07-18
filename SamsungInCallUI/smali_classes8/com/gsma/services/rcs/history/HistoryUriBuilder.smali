.class public Lcom/gsma/services/rcs/history/HistoryUriBuilder;
.super Ljava/lang/Object;
.source "HistoryUriBuilder.java"


# instance fields
.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mProviders:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public appendProvider(I)Lcom/gsma/services/rcs/history/HistoryUriBuilder;
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mProviders:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/net/Uri;
    .locals 5

    iget-object v2, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/gsma/services/rcs/history/HistoryUriBuilder;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method
