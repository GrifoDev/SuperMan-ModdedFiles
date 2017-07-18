.class Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;
.super Landroid/view/WindowId$FocusObserver;
.source "HotwordServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/hotword/client/HotwordServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowFocusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/hotword/client/HotwordServiceClient;


# direct methods
.method private constructor <init>(Lcom/google/android/hotword/client/HotwordServiceClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-direct {p0}, Landroid/view/WindowId$FocusObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/hotword/client/HotwordServiceClient;Lcom/google/android/hotword/client/HotwordServiceClient$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;-><init>(Lcom/google/android/hotword/client/HotwordServiceClient;)V

    return-void
.end method


# virtual methods
.method public onFocusGained(Landroid/view/WindowId;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->access$202(Lcom/google/android/hotword/client/HotwordServiceClient;Z)Z

    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-static {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->access$300(Lcom/google/android/hotword/client/HotwordServiceClient;)V

    return-void
.end method

.method public onFocusLost(Landroid/view/WindowId;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->access$202(Lcom/google/android/hotword/client/HotwordServiceClient;Z)Z

    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$WindowFocusObserver;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-static {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->access$300(Lcom/google/android/hotword/client/HotwordServiceClient;)V

    return-void
.end method
