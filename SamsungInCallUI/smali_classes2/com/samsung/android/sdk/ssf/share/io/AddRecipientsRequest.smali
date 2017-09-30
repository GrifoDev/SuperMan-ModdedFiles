.class public Lcom/samsung/android/sdk/ssf/share/io/AddRecipientsRequest;
.super Ljava/lang/Object;


# instance fields
.field public to_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/PhoneNumber;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/share/io/AddRecipientsRequest;->to_list:Ljava/util/List;

    return-void
.end method
