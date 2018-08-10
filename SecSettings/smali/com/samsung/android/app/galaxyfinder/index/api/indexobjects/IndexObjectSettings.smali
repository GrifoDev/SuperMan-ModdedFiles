.class public Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObjectSettings;
.super Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;
.source "IndexObjectSettings.java"


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;-><init>(J)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObjectSettings;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObjectSettings;->setSubText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getObjectType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Settings"

    return-object v0
.end method

.method public setSubText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;
        }
    .end annotation

    const-string/jumbo v0, "subText"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObjectSettings;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;
        }
    .end annotation

    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObjectSettings;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
