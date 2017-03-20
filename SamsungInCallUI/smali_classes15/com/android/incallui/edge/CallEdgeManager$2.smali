.class Lcom/android/incallui/edge/CallEdgeManager$2;
.super Landroid/os/AsyncTask;
.source "CallEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/edge/CallEdgeManager;->checkAndStartImportantPeopleUX(Lcom/android/incallui/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/edge/CallEdgeManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/edge/CallEdgeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/edge/CallEdgeManager;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/incallui/edge/CallEdgeManager$2;->this$0:Lcom/android/incallui/edge/CallEdgeManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/incallui/edge/CallEdgeManager$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 275
    const-string v0, "start flat motion listening"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/incallui/edge/CallEdgeManager$2;->this$0:Lcom/android/incallui/edge/CallEdgeManager;

    # getter for: Lcom/android/incallui/edge/CallEdgeManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/incallui/edge/CallEdgeManager;->access$100(Lcom/android/incallui/edge/CallEdgeManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/edge/CallEdgeManager$2;->this$0:Lcom/android/incallui/edge/CallEdgeManager;

    invoke-static {v0, v1}, Lcom/android/incallui/motion/CallSContextMotion;->startFlatMotionListening(Landroid/content/Context;Lcom/android/incallui/motion/CallSContextMotion$FlatListener;)V

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method
