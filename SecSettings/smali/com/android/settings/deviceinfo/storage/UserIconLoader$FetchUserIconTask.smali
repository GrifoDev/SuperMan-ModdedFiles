.class public interface abstract Lcom/android/settings/deviceinfo/storage/UserIconLoader$FetchUserIconTask;
.super Ljava/lang/Object;
.source "UserIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/storage/UserIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FetchUserIconTask"
.end annotation


# virtual methods
.method public abstract getUserIcons()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end method
