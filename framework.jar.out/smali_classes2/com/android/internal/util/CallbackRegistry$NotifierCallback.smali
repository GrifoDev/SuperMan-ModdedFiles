.class public abstract Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/CallbackRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NotifierCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 382
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry$NotifierCallback;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>.NotifierCallback<TC;TT;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TT;ITA;)V"
        }
    .end annotation
.end method
