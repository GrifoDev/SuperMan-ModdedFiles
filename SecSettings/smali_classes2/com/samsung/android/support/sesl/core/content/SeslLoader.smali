.class public Lcom/samsung/android/support/sesl/core/content/SeslLoader;
.super Ljava/lang/Object;
.source "SeslLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;,
        Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mId:I

.field mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# virtual methods
.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mReset:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :goto_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mReset:Z

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    return-void
.end method

.method public registerListener(ILcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    iput p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mId:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOnLoadCanceledListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onReset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mReset:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mContentChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mProcessingChange:Z

    return-void
.end method

.method public final startLoading()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mReset:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mAbandoned:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onStartLoading()V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mStarted:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onStopLoading()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCompleteListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterOnLoadCanceledListener(Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->mOnLoadCanceledListener:Lcom/samsung/android/support/sesl/core/content/SeslLoader$OnLoadCanceledListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
