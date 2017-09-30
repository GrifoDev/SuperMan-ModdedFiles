.class final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global$1;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$SettingContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->registerSettingChangeListener(Landroid/content/ContentResolver;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$OnSettingChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$OnSettingChangeListener;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$SettingContentObserver;-><init>(Landroid/content/ContentResolver;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$OnSettingChangeListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$SettingContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global$1;->mCr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global$1;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$OnSettingChangeListener;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "RLog"

    const-string v1, "[Setting] no context to notify setting change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "RLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Setting] onChange key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RSetting$OnSettingChangeListener;->onSettingChange(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
