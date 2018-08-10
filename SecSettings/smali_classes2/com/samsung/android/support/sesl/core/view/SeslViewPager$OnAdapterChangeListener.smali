.class public interface abstract Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnAdapterChangeListener;
.super Ljava/lang/Object;
.source "SeslViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAdapterChangeListener"
.end annotation


# virtual methods
.method public abstract onAdapterChanged(Lcom/samsung/android/support/sesl/core/view/SeslViewPager;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V
    .param p1    # Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
