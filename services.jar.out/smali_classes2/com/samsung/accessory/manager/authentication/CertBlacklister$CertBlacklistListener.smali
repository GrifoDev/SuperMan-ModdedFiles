.class public interface abstract Lcom/samsung/accessory/manager/authentication/CertBlacklister$CertBlacklistListener;
.super Ljava/lang/Object;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/CertBlacklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CertBlacklistListener"
.end annotation


# virtual methods
.method public abstract onAuthenticationBlocked(Z)V
.end method

.method public abstract onCertBlacklistChanged()V
.end method
