.class public Lcom/samsung/android/sdk/ssf/contact/io/SvcListInfo;
.super Ljava/lang/Object;


# instance fields
.field public prsc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/PresenceBody;",
            ">;"
        }
    .end annotation
.end field

.field public sid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/SvcListInfo;->prsc:Ljava/util/ArrayList;

    return-void
.end method
