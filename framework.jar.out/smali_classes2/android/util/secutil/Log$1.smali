.class final Landroid/util/secutil/Log$1;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Landroid/util/secutil/Log$TerribleFailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/secutil/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTerribleFailure(Ljava/lang/String;Landroid/util/secutil/Log$TerribleFailure;Z)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "what"    # Landroid/util/secutil/Log$TerribleFailure;
    .param p3, "system"    # Z

    .prologue
    .line 112
    invoke-static {p1, p2, p3}, Lcom/android/internal/os/RuntimeInit;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 111
    return-void
.end method
