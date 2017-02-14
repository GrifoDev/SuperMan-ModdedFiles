.class final synthetic Lcom/android/server/SdpManagerService$StateListener$-void_dispose__LambdaImpl0;
.super Ljava/lang/Object;
.source "SdpManagerService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$StateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_dispose__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/SdpManagerService$StateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SdpManagerService$StateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SdpManagerService$StateListener$-void_dispose__LambdaImpl0;->val$this:Lcom/android/server/SdpManagerService$StateListener;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener$-void_dispose__LambdaImpl0;->val$this:Lcom/android/server/SdpManagerService$StateListener;

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/SdpManagerService$StateListener;->-com_android_server_SdpManagerService$StateListener_lambda$2(Landroid/os/IBinder;)V

    return-void
.end method
