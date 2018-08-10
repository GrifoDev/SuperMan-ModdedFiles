.class Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$3;
.super Ljava/lang/Object;
.source "AODManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

.field final synthetic val$description:Ljava/util/List;

.field final synthetic val$timeInfo:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$3;->this$1:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    iput-object p2, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$3;->val$timeInfo:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$3;->val$description:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$3;->this$1:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->-get0(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)Lcom/samsung/android/aod/AODListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$3;->this$1:Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;

    invoke-static {v0}, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;->-get0(Lcom/samsung/android/aod/AODManager$AODCallbackDelegate;)Lcom/samsung/android/aod/AODListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$3;->val$timeInfo:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/aod/AODManager$AODCallbackDelegate$3;->val$description:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/aod/AODListener;->onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method
