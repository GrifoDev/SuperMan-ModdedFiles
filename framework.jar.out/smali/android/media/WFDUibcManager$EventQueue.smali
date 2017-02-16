.class Landroid/media/WFDUibcManager$EventQueue;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventQueue"
.end annotation


# instance fields
.field private queuedEvents:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private rotateEvents:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method private constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 1
    .param p1, "this$0"    # Landroid/media/WFDUibcManager;

    .prologue
    .line 1051
    iput-object p1, p0, Landroid/media/WFDUibcManager$EventQueue;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventQueue;->queuedEvents:Ljava/util/concurrent/BlockingQueue;

    .line 1054
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventQueue;->rotateEvents:Ljava/util/concurrent/BlockingQueue;

    .line 1051
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$EventQueue;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WFDUibcManager;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;)V

    return-void
.end method


# virtual methods
.method public addEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/InputEvent;

    .prologue
    .line 1091
    :try_start_0
    iget-object v2, p0, Landroid/media/WFDUibcManager$EventQueue;->queuedEvents:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    return-void

    .line 1094
    :catch_0
    move-exception v1

    .line 1095
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "Null pointer exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1092
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1093
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "Interrupted when waiting to insert to queue"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNextEvent()Landroid/view/InputEvent;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1060
    :try_start_0
    iget-object v2, p0, Landroid/media/WFDUibcManager$EventQueue;->queuedEvents:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    .local v1, "queuedEvent":Landroid/view/InputEvent;
    if-eqz v1, :cond_0

    .line 1063
    return-object v1

    .line 1066
    :cond_0
    return-object v6

    .line 1068
    .end local v1    # "queuedEvent":Landroid/view/InputEvent;
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "WFDUibcManager"

    const-string/jumbo v3, "Interrupted when waiting to read from queue"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    return-object v6
.end method

.method public getRotateEvent()Ljava/lang/Integer;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1077
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventQueue;->rotateEvents:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1078
    .local v0, "event":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1080
    return-object v0

    .line 1083
    :cond_0
    return-object v2
.end method

.method public rotate(II)V
    .locals 6
    .param p1, "radians"    # I
    .param p2, "fraction"    # I

    .prologue
    .line 1101
    if-gez p1, :cond_0

    .line 1102
    mul-int/lit8 p2, p2, -0x1

    .line 1104
    :cond_0
    int-to-float v3, p1

    int-to-float v4, p2

    const v5, 0x3b7f9724    # 0.0039f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v3, v4

    const v4, 0x4048f5c3    # 3.14f

    div-float v0, v3, v4

    .line 1105
    .local v0, "degrees":F
    invoke-static {}, Landroid/media/WFDUibcManager;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WFDUibcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rotate to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/media/WFDUibcManager$EventQueue;->rotateEvents:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_0
    return-void

    .line 1110
    :catch_0
    move-exception v2

    .line 1111
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "WFDUibcManager"

    const-string/jumbo v4, "Null pointer exception"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1108
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1109
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "WFDUibcManager"

    const-string/jumbo v4, "Interrupted when waiting to insert to queue"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
