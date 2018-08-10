.class public interface abstract Lcom/android/settings/deviceinfo/storage/UserIconLoader$UserIconHandler;
.super Ljava/lang/Object;
.source "UserIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/storage/UserIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UserIconHandler"
.end annotation


# virtual methods
.method public abstract handleUserIcons(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation
.end method
