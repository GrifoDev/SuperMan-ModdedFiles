.class public Lcom/samsung/android/sdk/ssf/shop/io/Item;
.super Lcom/samsung/android/sdk/ssf/shop/io/Entry;


# instance fields
.field public children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/shop/io/Children;",
            ">;"
        }
    .end annotation
.end field

.field public contenturl:Ljava/lang/String;

.field public expirytime:J

.field public itemid:J

.field public panelurl:Ljava/lang/String;

.field public parentid:J

.field public previewurl:Ljava/lang/String;

.field public talkback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/shop/io/Talkback;",
            ">;"
        }
    .end annotation
.end field

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

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/shop/io/Entry;-><init>()V

    return-void
.end method
