.class Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;
.super Ljava/lang/Object;
.source "DOMImplementationRegistry.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$classLoader:Ljava/lang/ClassLoader;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;->val$classLoader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;->val$classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;->val$classLoader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;->val$name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
