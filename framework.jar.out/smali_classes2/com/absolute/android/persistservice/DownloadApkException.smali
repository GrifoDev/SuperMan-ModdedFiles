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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    iput-boolean p3, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    iput-boolean p2, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isFatal:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/absolute/android/persistservice/DownloadApkException;->m_isConnectivityFailure:Z

    return v0
.end method
