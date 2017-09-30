.class final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$1;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$QuotaObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->registerQuotaChangeListener(Landroid/content/ContentResolver;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$OnQuotaChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$OnQuotaChangeListener;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$QuotaObserver;-><init>(Landroid/content/ContentResolver;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$OnQuotaChangeListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$QuotaObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$1;->mCr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$1;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$OnQuotaChangeListener;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[Setting] no context to notify setting change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota$OnQuotaChangeListener;->onChange(Landroid/os/Bundle;)Z

    goto :goto_0
.end method
