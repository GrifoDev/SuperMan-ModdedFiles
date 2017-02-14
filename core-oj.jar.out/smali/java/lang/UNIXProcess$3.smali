.class Ljava/lang/UNIXProcess$3;
.super Ljava/lang/Object;
.source "UNIXProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/UNIXProcess;->initStreams([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/lang/UNIXProcess;


# direct methods
.method constructor <init>(Ljava/lang/UNIXProcess;)V
    .locals 0

    iput-object p1, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    iget-object v2, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    invoke-static {v2}, Ljava/lang/UNIXProcess;->-get0(Ljava/lang/UNIXProcess;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/UNIXProcess;->-wrap0(Ljava/lang/UNIXProcess;I)I

    move-result v0

    iget-object v1, p0, Ljava/lang/UNIXProcess$3;->this$0:Ljava/lang/UNIXProcess;

    invoke-virtual {v1, v0}, Ljava/lang/UNIXProcess;->processExited(I)V

    return-void
.end method
