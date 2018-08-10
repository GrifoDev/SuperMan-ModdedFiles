.class Lcom/android/server/power/ShutdownThread$20;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$20;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 4

    const/16 v0, 0x64

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-set10(I)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get22()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-set10(I)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$20;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get9(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040880

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-set9(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get22()I

    move-result v1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get21()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->-wrap13(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v0, :cond_0

    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->-set10(I)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$20;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-get9(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040882

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-set9(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get31()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get22()I

    move-result v1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get21()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->-wrap13(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
