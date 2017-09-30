.class public Lcom/samsung/android/sdk/ssf/shop/io/ItemList;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field public count:I

.field public expirytime:J

.field public filesize:J

.field public itemid:J

.field public panelurl:Ljava/lang/String;

.field public previewurl:Ljava/lang/String;

.field public thumburl:Ljava/lang/String;

.field public title:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/shop/io/ItemTitle;",
            ">;"
        }
    .end annotation
.end field

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/shop/io/ItemList;->title:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/ssf/shop/io/ItemList;->filesize:J

    return-void
.end method
