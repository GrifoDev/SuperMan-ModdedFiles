.class public Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;
.super Ljava/lang/Object;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EmptySt"

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;->mName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EmptySt"

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected enter(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected exit(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/transaction/HandlerState;->mName:Ljava/lang/String;

    return-object v0
.end method
