.class public Lcom/samsung/android/sdk/ssf/contact/io/PresenceList;
.super Ljava/lang/Object;


# instance fields
.field public duid:Ljava/lang/String;

.field public svcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/SvcListInfo;",
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

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/PresenceList;->svcList:Ljava/util/ArrayList;

    return-void
.end method
