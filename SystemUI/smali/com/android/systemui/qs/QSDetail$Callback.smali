.class public interface abstract Lcom/android/systemui/qs/QSDetail$Callback;
.super Ljava/lang/Object;
.source "QSDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onScanStateChanged(Z)V
.end method

.method public abstract onScrollToDetail(II)V
.end method

.method public abstract onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIZ)V
.end method

.method public abstract onToggleStateChanged(Z)V
.end method

.method public abstract onUpdatingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
.end method
