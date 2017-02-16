.class Landroid/webkit/WebViewFactory$RelroFileCreator;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelroFileCreator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 589
    const/4 v2, 0x0

    .line 590
    .local v2, "result":Z
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v1

    .line 592
    .local v1, "is64Bit":Z
    :try_start_0
    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, p0, v3

    if-nez v3, :cond_2

    .line 593
    :cond_0
    const-string/jumbo v3, "WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid RelroFileCreator args: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 615
    :goto_0
    if-nez v2, :cond_1

    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_1
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 594
    return-void

    .line 592
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    aget-object v3, p0, v3

    if-eqz v3, :cond_0

    .line 596
    const-string/jumbo v3, "WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RelroFileCreator (64bit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 597
    const-string/jumbo v5, " 32-bit lib: "

    .line 596
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 597
    const/4 v5, 0x0

    aget-object v5, p0, v5

    .line 596
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 597
    const-string/jumbo v5, ", 64-bit lib: "

    .line 596
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 597
    const/4 v5, 0x1

    aget-object v5, p0, v5

    .line 596
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Landroid/webkit/WebViewFactory;->-get0()Z

    move-result v3

    if-nez v3, :cond_4

    .line 599
    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "can\'t create relro file; address space not reserved"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 610
    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 615
    :goto_1
    if-nez v2, :cond_3

    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_3
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 600
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "error notifying update service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 611
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 612
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "error notifying update service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 602
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v3, 0x0

    :try_start_4
    aget-object v3, p0, v3

    .line 603
    const/4 v4, 0x1

    aget-object v4, p0, v4

    .line 604
    const-string/jumbo v5, "/data/misc/shared_relro/libwebviewchromium32.relro"

    .line 605
    const-string/jumbo v6, "/data/misc/shared_relro/libwebviewchromium64.relro"

    .line 602
    invoke-static {v3, v4, v5, v6}, Landroid/webkit/WebViewFactory;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    .line 606
    .local v2, "result":Z
    if-eqz v2, :cond_5

    .line 610
    :cond_5
    :try_start_5
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v3

    invoke-interface {v3}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 615
    :goto_2
    if-nez v2, :cond_6

    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "failed to create relro file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_6
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 588
    return-void

    .line 611
    :catch_2
    move-exception v0

    .line 612
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "error notifying update service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 607
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v2, "result":Z
    :catchall_0
    move-exception v3

    .line 610
    :try_start_6
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v4

    invoke-interface {v4}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 615
    :goto_3
    if-nez v2, :cond_7

    const-string/jumbo v4, "WebViewFactory"

    const-string/jumbo v5, "failed to create relro file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_7
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 607
    throw v3

    .line 611
    :catch_3
    move-exception v0

    .line 612
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WebViewFactory"

    const-string/jumbo v5, "error notifying update service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
