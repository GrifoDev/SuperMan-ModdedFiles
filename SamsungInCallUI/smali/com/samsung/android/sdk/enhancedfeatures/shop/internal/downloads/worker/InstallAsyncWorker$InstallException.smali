.class public Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InstallException;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1c6abd128d8bfbc2L


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static buildInstallException(Ljava/lang/Throwable;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InstallException;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InstallException;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InstallException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
