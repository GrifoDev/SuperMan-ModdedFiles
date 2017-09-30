.class public Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected rsrc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessoryInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/ValidResourceResponse;->rsrc:Ljava/util/List;

    return-object v0
.end method
