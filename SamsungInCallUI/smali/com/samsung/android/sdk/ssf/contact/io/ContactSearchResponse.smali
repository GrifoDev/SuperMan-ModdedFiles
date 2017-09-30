.class public Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected result_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;->result:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResult_count()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactSearchResponse;->result_count:I

    return v0
.end method
