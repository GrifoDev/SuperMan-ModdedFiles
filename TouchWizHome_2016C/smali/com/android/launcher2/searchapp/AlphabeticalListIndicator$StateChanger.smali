.class Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;
.super Ljava/lang/Object;
.source "AlphabeticalListIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateChanger"
.end annotation


# instance fields
.field private mRunning:Z

.field final synthetic this$0:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    return v0
.end method

.method public postToQueue(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;->this$0:Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/searchapp/AlphabeticalListIndicator$StateChanger;->mRunning:Z

    return-void
.end method
