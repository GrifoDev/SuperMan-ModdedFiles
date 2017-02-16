.class Lcom/samsung/android/smartface/SmartFaceManager$1;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/smartface/SmartFaceManager;->checkForSmartStay()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/smartface/SmartFaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$1;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/samsung/android/smartface/FaceInfo;I)V
    .locals 3
    .param p1, "data"    # Lcom/samsung/android/smartface/FaceInfo;
    .param p2, "service_type"    # I

    .prologue
    .line 405
    const-string/jumbo v0, "SmartFaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkForSmartStay onInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$1;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-get1(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$1;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    iget v1, p1, Lcom/samsung/android/smartface/FaceInfo;->needToStay:I

    invoke-static {v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager;->-set0(Lcom/samsung/android/smartface/SmartFaceManager;I)I

    .line 410
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$1;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-get0(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$1;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->-get1(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 403
    :cond_0
    return-void
.end method
