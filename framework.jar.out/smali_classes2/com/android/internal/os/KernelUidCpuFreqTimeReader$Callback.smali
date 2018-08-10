.class public interface abstract Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
.super Ljava/lang/Object;
.source "KernelUidCpuFreqTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelUidCpuFreqTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onCpuFreqs([J)V
.end method

.method public abstract onUidCpuFreqTime(I[J)V
.end method
