.class Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;->this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;->this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->-wrap0(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;->this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->-get0(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;->this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-static {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->-get2(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;->this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->-get1(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)I

    move-result v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;->this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-static {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->-get0(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Landroid/sec/clipboard/util/FileHelper;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;->this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-static {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->-get2(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/util/FileHelper;->getList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;->this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;->this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->-wrap1(Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;)Z

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem$1;->this$1:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v0, v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->this$0:Landroid/sec/clipboard/data/file/FileManager;

    invoke-static {v0}, Landroid/sec/clipboard/data/file/FileManager;->-wrap0(Landroid/sec/clipboard/data/file/FileManager;)V

    :cond_1
    return-void
.end method
