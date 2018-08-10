.class public interface abstract Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager$LoaderCallbacks;
.super Ljava/lang/Object;
.source "SeslLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onCreateLoader(ILandroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/content/SeslLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<TD;>;"
        }
    .end annotation
.end method

.method public abstract onLoadFinished(Lcom/samsung/android/support/sesl/core/content/SeslLoader;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<TD;>;TD;)V"
        }
    .end annotation
.end method

.method public abstract onLoaderReset(Lcom/samsung/android/support/sesl/core/content/SeslLoader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
            "<TD;>;)V"
        }
    .end annotation
.end method
