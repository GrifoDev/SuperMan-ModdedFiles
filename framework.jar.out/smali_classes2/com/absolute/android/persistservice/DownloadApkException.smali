.class public Lcom/absolute/android/persistservice/DownloadApkException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_isConnectivityFailure:Z

.field private m_isFatal:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 18
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    .line 73
    iput-boolean p3, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 18
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    .line 43
    iput-boolean p2, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    .line 44
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    .line 104
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    return v0
.end method
