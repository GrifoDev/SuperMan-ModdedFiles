.class Lcom/samsung/android/media/SemMediaPlayer$AudioObserver$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;-><init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver$1;->this$1:Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver$1;->this$1:Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->-get0(Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver$1;->this$1:Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->-wrap0(Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
