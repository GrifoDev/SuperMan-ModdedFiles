.class Lcom/android/server/display/MagnifierDisplayPolicy$1;
.super Landroid/database/ContentObserver;
.source "MagnifierPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierDisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierDisplayPolicy;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->-get0(Lcom/android/server/display/MagnifierDisplayPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accessibility_magnifier"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->-get1(Lcom/android/server/display/MagnifierDisplayPolicy;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-static {v1, v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->-set0(Lcom/android/server/display/MagnifierDisplayPolicy;Z)Z

    iget-object v1, p0, Lcom/android/server/display/MagnifierDisplayPolicy$1;->this$0:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-static {v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->-wrap0(Lcom/android/server/display/MagnifierDisplayPolicy;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
