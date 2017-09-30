.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;
.super Ljava/lang/Object;


# static fields
.field public static final DOWNLOAD_PROGRESS_CHANGED:I = 0x6

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_DELETED:I = 0x7

.field public static final STATUS_DOWNLOADING:I = 0x1

.field public static final STATUS_FAILED:I = 0x5

.field public static final STATUS_FINISHED:I = 0x4

.field public static final STATUS_INSTALLING:I = 0x2

.field public static final STATUS_PROGRESSING:I


# virtual methods
.method public abstract onDownloadCancel(Ljava/lang/String;)V
.end method

.method public abstract onProgress(Ljava/lang/String;I)V
.end method

.method public abstract updateStatus(Ljava/lang/String;I)V
.end method
