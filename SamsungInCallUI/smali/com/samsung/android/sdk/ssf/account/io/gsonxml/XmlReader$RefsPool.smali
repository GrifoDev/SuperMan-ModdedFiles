.class final Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefsPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x20


# instance fields
.field private final creator:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private len:I

.field private final store:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->store:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->len:I

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->creator:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->len:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->creator:Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator;

    invoke-interface {v0}, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$Creator;->create()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->store:[Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->len:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->len:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->len:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->store:[Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/sdk/ssf/account/io/gsonxml/XmlReader$RefsPool;->len:I

    aput-object p1, v0, v1

    :cond_0
    return-void
.end method
