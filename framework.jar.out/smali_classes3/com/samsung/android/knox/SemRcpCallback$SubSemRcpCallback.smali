.class public Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;
.super Lcom/samsung/android/knox/SemIRCPCallback$Stub;
.source "SemRcpCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/SemRcpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubSemRcpCallback"
.end annotation


# instance fields
.field parent:Lcom/samsung/android/knox/SemRcpCallback;

.field final synthetic this$0:Lcom/samsung/android/knox/SemRcpCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/SemRcpCallback;Lcom/samsung/android/knox/SemRcpCallback;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/knox/SemRcpCallback;
    .param p2, "SemRcpCallback"    # Lcom/samsung/android/knox/SemRcpCallback;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->this$0:Lcom/samsung/android/knox/SemRcpCallback;

    invoke-direct {p0}, Lcom/samsung/android/knox/SemIRCPCallback$Stub;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    .line 30
    iput-object p2, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    .line 29
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;II)V
    .locals 1
    .param p2, "destinationUserId"    # I
    .param p3, "successCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "srcPathsOrig":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/SemRcpCallback;->onComplete(Ljava/util/List;II)V

    .line 34
    :cond_0
    return-void
.end method

.method public onDone(Ljava/lang/String;I)V
    .locals 1
    .param p1, "srcPathsOrig"    # Ljava/lang/String;
    .param p2, "destinationUserId"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/SemRcpCallback;->onDone(Ljava/lang/String;I)V

    .line 41
    :cond_0
    return-void
.end method

.method public onFail(Ljava/lang/String;II)V
    .locals 1
    .param p1, "srcPathsOrig"    # Ljava/lang/String;
    .param p2, "destinationUserId"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/SemRcpCallback;->onFail(Ljava/lang/String;II)V

    .line 47
    :cond_0
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 1
    .param p1, "srcPathsOrig"    # Ljava/lang/String;
    .param p2, "destinationUserId"    # I
    .param p3, "progress"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/knox/SemRcpCallback$SubSemRcpCallback;->parent:Lcom/samsung/android/knox/SemRcpCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/knox/SemRcpCallback;->onProgress(Ljava/lang/String;II)V

    .line 54
    :cond_0
    return-void
.end method
