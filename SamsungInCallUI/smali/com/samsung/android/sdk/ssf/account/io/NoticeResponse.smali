.class public Lcom/samsung/android/sdk/ssf/account/io/NoticeResponse;
.super Ljava/lang/Object;


# instance fields
.field public count:I

.field public notices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/account/io/NoticeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/account/io/NoticeResponse;->notices:Ljava/util/List;

    return-void
.end method
