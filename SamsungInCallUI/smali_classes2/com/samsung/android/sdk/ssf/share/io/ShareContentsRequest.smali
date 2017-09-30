.class public Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;
.super Ljava/lang/Object;


# instance fields
.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;",
            ">;"
        }
    .end annotation
.end field

.field public contents_total_to_upload:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration_time:Ljava/lang/String;

.field public share_type:I

.field public title:Ljava/lang/String;

.field public to_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field public to_multi:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->contents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->share_type:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentForShare;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->contents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->share_type:I

    if-nez p6, :cond_1

    if-nez p1, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " one of toList and toMulti(Groupid) is not null in OnnWayShare "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_6

    if-eqz p5, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " can not have value both of toList and toMulti(Groupid) "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    if-ne p6, v0, :cond_3

    if-nez p5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " toMulti(groupid) cannot be null or empty in FolderShare"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " toList have to be null or empty in FolderShare"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x3

    if-ne p6, v0, :cond_5

    if-nez p7, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " cannot be null or empty in CloudShare"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " toList have to be null or empty in CloutShare"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sharetype have to be defined( 0 - 3 ) this is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_8

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max receiver number is 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contents is null or empty list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->to_list:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->contents:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->description:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->to_multi:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->share_type:I

    iput-object p7, p0, Lcom/samsung/android/sdk/ssf/share/io/ShareContentsRequest;->duration_time:Ljava/lang/String;

    return-void
.end method
