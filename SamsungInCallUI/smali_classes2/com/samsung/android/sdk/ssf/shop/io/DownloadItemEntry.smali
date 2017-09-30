.class public Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field public item:Lcom/samsung/android/sdk/ssf/shop/io/Item;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/shop/io/Item;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    return-void
.end method
