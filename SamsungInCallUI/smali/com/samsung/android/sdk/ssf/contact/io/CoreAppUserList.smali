.class public Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;
.super Ljava/lang/Object;


# instance fields
.field protected users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;",
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

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;->users:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;->users:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addUser(Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;->users:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;->users:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;->users:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCoreAppUserData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/CoreAppUserList;->users:Ljava/util/List;

    return-object v0
.end method
