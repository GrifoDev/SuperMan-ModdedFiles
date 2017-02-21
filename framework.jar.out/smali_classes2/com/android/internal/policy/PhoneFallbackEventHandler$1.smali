.class Lcom/android/internal/policy/PhoneFallbackEventHandler$1;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneFallbackEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneFallbackEventHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneFallbackEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler$1;->this$0:Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler$1;->this$0:Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->-get0(Lcom/android/internal/policy/PhoneFallbackEventHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler$1;->this$0:Lcom/android/internal/policy/PhoneFallbackEventHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->-set0(Lcom/android/internal/policy/PhoneFallbackEventHandler;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler$1;->this$0:Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->-wrap0(Lcom/android/internal/policy/PhoneFallbackEventHandler;)V

    :cond_0
    return-void
.end method
