.class public abstract Lcom/gsma/services/rcs/upload/FileUploadListener;
.super Ljava/lang/Object;
.source "FileUploadListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onProgressUpdate(Ljava/lang/String;JJ)V
.end method

.method public abstract onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;)V
.end method

.method public abstract onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V
.end method
