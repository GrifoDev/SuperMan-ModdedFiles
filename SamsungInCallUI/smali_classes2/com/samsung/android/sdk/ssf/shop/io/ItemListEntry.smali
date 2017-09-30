.class public Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field public count:I

.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/shop/io/ItemList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;->items:Ljava/util/ArrayList;

    return-void
.end method
