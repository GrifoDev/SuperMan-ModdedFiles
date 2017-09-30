.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/EventListener;
.super Ljava/lang/Object;


# instance fields
.field protected mData:Landroid/os/Bundle;

.field protected mReplyTo:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/EventListener;->mReplyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/EventListener;->mData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/EventListener;->mReplyTo:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/EventListener;->mData:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/EventListener;->mReplyTo:Landroid/os/Messenger;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/EventListener;->mData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(JLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onProgress(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/Transaction;)V
    .locals 0

    return-void
.end method

.method public onStop(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/transaction/Transaction;)V
    .locals 0

    return-void
.end method

.method public onSuccess(IJLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSuccess(J)V
    .locals 0

    return-void
.end method

.method public onSuccess(JLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
