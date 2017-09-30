.class public Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/helper/DownloadItemDBHelper$ItemlistExtras;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/helper/DownloadItemDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemlistExtras"
.end annotation


# instance fields
.field private count:I

.field private thumburl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/helper/DownloadItemDBHelper$ItemlistExtras;->count:I

    return v0
.end method

.method public getThumnurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/helper/DownloadItemDBHelper$ItemlistExtras;->thumburl:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/helper/DownloadItemDBHelper$ItemlistExtras;->count:I

    return-void
.end method

.method public setThumburl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/database/helper/DownloadItemDBHelper$ItemlistExtras;->thumburl:Ljava/lang/String;

    return-void
.end method
