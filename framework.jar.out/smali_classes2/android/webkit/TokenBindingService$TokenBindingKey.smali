.class public abstract Landroid/webkit/TokenBindingService$TokenBindingKey;
.super Ljava/lang/Object;
.source "TokenBindingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/TokenBindingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TokenBindingKey"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getKeyPair()Ljava/security/KeyPair;
.end method
