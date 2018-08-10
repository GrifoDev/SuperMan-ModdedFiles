.class Lcom/android/server/cover/LedCoverController$1;
.super Ljava/lang/Object;
.source "LedCoverController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/LedCoverController;


# direct methods
.method constructor <init>(Lcom/android/server/cover/LedCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/LedCoverController$1;->this$0:Lcom/android/server/cover/LedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/server/cover/LedCoverController$1;->this$0:Lcom/android/server/cover/LedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/LedCoverController;->-get0(Lcom/android/server/cover/LedCoverController;)I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/android/server/cover/LedCoverController$1;->this$0:Lcom/android/server/cover/LedCoverController;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    return-void
.end method
