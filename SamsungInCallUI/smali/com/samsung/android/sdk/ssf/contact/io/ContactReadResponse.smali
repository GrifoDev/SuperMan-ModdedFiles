.class public Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected cts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected tt:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;->cts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContactsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;->cts:Ljava/util/List;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactReadResponse;->tt:Ljava/lang/Long;

    return-object v0
.end method
