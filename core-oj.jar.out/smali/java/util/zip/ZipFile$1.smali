.class Ljava/util/zip/ZipFile$1;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$0:Ljava/util/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 493
    iput-object p1, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/ZipFile$1;->i:I

    .line 493
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    .prologue
    .line 496
    iget-object v1, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v1

    .line 497
    :try_start_0
    iget-object v0, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v0}, Ljava/util/zip/ZipFile;->-wrap7(Ljava/util/zip/ZipFile;)V

    .line 498
    iget v0, p0, Ljava/util/zip/ZipFile$1;->i:I

    iget-object v2, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v2}, Ljava/util/zip/ZipFile;->-get4(Ljava/util/zip/ZipFile;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$1;->nextElement()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/util/zip/ZipEntry;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v5, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    monitor-enter v5

    .line 503
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ljava/util/zip/ZipFile;->-wrap7(Ljava/util/zip/ZipFile;)V

    .line 504
    iget v4, p0, Ljava/util/zip/ZipFile$1;->i:I

    iget-object v6, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v6}, Ljava/util/zip/ZipFile;->-get4(Ljava/util/zip/ZipFile;)I

    move-result v6

    if-lt v4, v6, :cond_0

    .line 505
    new-instance v4, Ljava/util/NoSuchElementException;

    invoke-direct {v4}, Ljava/util/NoSuchElementException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 507
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v6

    iget v4, p0, Ljava/util/zip/ZipFile$1;->i:I

    add-int/lit8 v8, v4, 0x1

    iput v8, p0, Ljava/util/zip/ZipFile$1;->i:I

    invoke-static {v6, v7, v4}, Ljava/util/zip/ZipFile;->-wrap5(JI)J

    move-result-wide v0

    .line 508
    .local v0, "jzentry":J
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    .line 510
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get0(Ljava/util/zip/ZipFile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 511
    const-string/jumbo v2, "ZipFile concurrently closed"

    .line 515
    .local v2, "message":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/zip/ZipError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "jzentry == 0,\n jzfile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 516
    iget-object v7, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v7}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v8

    .line 515
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 517
    const-string/jumbo v7, ",\n total = "

    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 517
    iget-object v7, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v7}, Ljava/util/zip/ZipFile;->-get4(Ljava/util/zip/ZipFile;)I

    move-result v7

    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 518
    const-string/jumbo v7, ",\n name = "

    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 518
    iget-object v7, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v7}, Ljava/util/zip/ZipFile;->-get2(Ljava/util/zip/ZipFile;)Ljava/lang/String;

    move-result-object v7

    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 519
    const-string/jumbo v7, ",\n i = "

    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 519
    iget v7, p0, Ljava/util/zip/ZipFile$1;->i:I

    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 520
    const-string/jumbo v7, ",\n message = "

    .line 515
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/zip/ZipError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 513
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/util/zip/ZipFile;->-wrap1(J)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0

    .line 523
    .end local v2    # "message":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    const/4 v6, 0x0

    invoke-static {v4, v6, v0, v1}, Ljava/util/zip/ZipFile;->-wrap2(Ljava/util/zip/ZipFile;Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 524
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    iget-object v4, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    invoke-static {v4}, Ljava/util/zip/ZipFile;->-get1(Ljava/util/zip/ZipFile;)J

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Ljava/util/zip/ZipFile;->-wrap8(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 525
    return-object v3
.end method
