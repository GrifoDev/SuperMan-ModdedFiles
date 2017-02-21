.class public Landroid/print/PrintFileDocumentAdapter;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintFileDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintedFileDocAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDocumentInfo:Landroid/print/PrintDocumentInfo;

.field private final mFile:Ljava/io/File;

.field private mWriteFileAsyncTask:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;


# direct methods
.method static synthetic -get0(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/print/PrintFileDocumentAdapter;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/print/PrintDocumentInfo;)V
    .locals 2

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "File cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "documentInfo cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/print/PrintFileDocumentAdapter;->mFile:Ljava/io/File;

    iput-object p3, p0, Landroid/print/PrintFileDocumentAdapter;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 3

    new-instance v0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    invoke-direct {v0, p0, p2, p3, p4}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;-><init>(Landroid/print/PrintFileDocumentAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    iput-object v0, p0, Landroid/print/PrintFileDocumentAdapter;->mWriteFileAsyncTask:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    iget-object v1, p0, Landroid/print/PrintFileDocumentAdapter;->mWriteFileAsyncTask:Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    nop

    nop

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
