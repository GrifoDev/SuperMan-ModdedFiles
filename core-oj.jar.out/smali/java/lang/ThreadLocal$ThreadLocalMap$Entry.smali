.class Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;
.super Ljava/lang/ref/WeakReference;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ThreadLocal$ThreadLocalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Ljava/lang/ThreadLocal;",
        ">;"
    }
.end annotation


# instance fields
.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljava/lang/ThreadLocal$ThreadLocalMap$Entry;->value:Ljava/lang/Object;

    return-void
.end method
