.class Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$1;
.super Ljava/lang/Object;
.source "AODManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->onScreenTurningOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$1;->this$1:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$1;->this$1:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->-get0(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)Lcom/samsung/android/aod/AODListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$1;->this$1:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->-get0(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)Lcom/samsung/android/aod/AODListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/aod/AODListener;->onScreenTurningOn()V

    :cond_0
    return-void
.end method
